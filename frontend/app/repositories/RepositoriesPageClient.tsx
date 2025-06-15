"use client";
import React, { useState, useEffect } from "react";
import { useRepositoriesStore } from "@/store/repositories";
import { useSearchParams } from "next/navigation";
import { useQuery } from "@tanstack/react-query";
import { RepositoryFilters } from "@/components/RepositoryFilters/RepositoryFilters";
import { RepositoryGrid } from "@/components/RepositoryGrid/RepositoryGrid";
import { RepositoryPagination } from "@/components/RepositoryPagination/RepositoryPagination";
import { RepositoryEmptyState } from "@/components/RepositoryEmptyState/RepositoryEmptyState";
import { RepositoryErrorState } from "@/components/RepositoryErrorState/RepositoryErrorState";
import { RepositoryLoadingGrid } from "@/components/RepositoryLoadingGrid/RepositoryLoadingGrid";
import fuzzysort from "fuzzysort";

const API_URL = process.env.NEXT_PUBLIC_API_URL;

export function RepositoriesPageClient() {
  const repositories = useRepositoriesStore((state) => state.repositories);
  const setRepositories = useRepositoriesStore((state) => state.setRepositories);
  const searchParams = useSearchParams();
  const [searchTerm, setSearchTerm] = useState("");
  const [university, setUniversity] = useState("__all__");
  const [language, setLanguage] = useState("__all__");
  const [license, setLicense] = useState("__all__");
  const [owner, setOwner] = useState("__all__");

  // Fetch filter options
  const { data: universities } = useQuery({
    queryKey: ["universities"],
    queryFn: () => fetch(`${API_URL}/universities`).then(res => res.json()),
    cacheTime: 600_000, // 10 min
    staleTime: 300_000, // 5 min
  });
  const { data: languages } = useQuery({
    queryKey: ["languages"],
    queryFn: () => fetch(`${API_URL}/languages`).then(res => res.json()),
    cacheTime: 600_000,
    staleTime: 300_000,
  });
  const { data: licenses } = useQuery({
    queryKey: ["licenses"],
    queryFn: () => fetch(`${API_URL}/licenses`).then(res => res.json()),
    cacheTime: 600_000,
    staleTime: 300_000,
  });
  const { data: organizations } = useQuery({
    queryKey: ["organizations"],
    queryFn: () => fetch(`${API_URL}/organizations`).then(res => res.json()),
    cacheTime: 600_000,
    staleTime: 300_000,
  });

    // Fetch all repositories once on mount
  const [isLoading, setIsLoading] = useState(false);
  const [isError, setIsError] = useState(false);

  useEffect(() => {
    let ignore = false;
    async function fetchRepos() {
      setIsLoading(true);
      setIsError(false);
      try {
        const res = await fetch(`${API_URL}/repositories`);
        const data = await res.json();
        if (!ignore) setRepositories(data);
      } catch (e) {
        if (!ignore) setIsError(true);
      } finally {
        if (!ignore) setIsLoading(false);
      }
    }
    if (repositories.length === 0) fetchRepos();
    return () => { ignore = true; };
  }, [setRepositories, repositories.length]);

  // Sync search param to state
  React.useEffect(() => {
    const urlSearch = searchParams.get("search");
    if (urlSearch) setSearchTerm(urlSearch);
  }, [searchParams]);

  // Client-side filtering (all filters and search)
  const filteredRepositories = React.useMemo(() => {
    if (!repositories) return [];
    let result = repositories;
    if (university !== "__all__") result = result.filter(r => r.university === university);
    if (language !== "__all__") result = result.filter(r => r.language === language);
    if (license !== "__all__") result = result.filter(r => r.license === license);
    if (owner !== "__all__") result = result.filter(r => r.owner === owner);
    if (searchTerm.trim()) {
      const fuzzy = fuzzysort.go(
        searchTerm,
        result,
        { keys: ["full_name", "description"], threshold: -10000, limit: 50 }
      );
      result = fuzzy.map(r => r.obj);
    }
    return result;
  }, [repositories, university, language, license, owner, searchTerm]);

  // Pagination state
  const [page, setPage] = React.useState(1);
  const [pageSize, setPageSize] = React.useState(20);
  React.useEffect(() => { setPage(1); }, [searchTerm, university, language, license, owner, repositories]);
  const totalItems = filteredRepositories.length;
  const totalPages = Math.max(1, Math.ceil(totalItems / pageSize));
  const pagedRepositories = React.useMemo(() =>
    filteredRepositories.slice((page - 1) * pageSize, page * pageSize),
    [filteredRepositories, page, pageSize]
  );

  const handleApplyFilters = () => {}; // No-op, all filtering is client-side

  return (
    <div className="flex flex-col min-h-screen">
      <main className="flex-1 py-10">
        <div className="container mx-auto px-4">
          <div className="flex flex-col md:flex-row md:items-center md:justify-between mb-8 gap-4">
            <h1 className="text-3xl font-bold text-sky-800">Browse Repositories</h1>
            <div className="flex items-center gap-2 ml-auto">
              <span className="text-gray-600 text-sm">Show</span>
              <select
                className="w-[70px] h-8 text-sm border-gray-300 rounded-md border focus:outline-none focus:ring-amber-400a text-center"
                value={pageSize}
                onChange={e => setPageSize(Number(e.target.value))}
              >
                {[10, 20, 30, 40].map(n => (
                  <option key={n} value={n}>{n}</option>
                ))}
              </select>
              <span className="text-gray-600 text-sm">per page</span>
              <span className="ml-4 text-gray-500 text-xs">{totalItems} repositories</span>
            </div>
          </div>
          <div className="grid gap-6 md:grid-cols-[250px_1fr] w-full">
            <div>
              <RepositoryFilters
                searchTerm={searchTerm}
                setSearchTerm={setSearchTerm}
                university={university}
                setUniversity={setUniversity}
                language={language}
                setLanguage={setLanguage}
                license={license}
                setLicense={setLicense}
                owner={owner}
                setOwner={setOwner}
                universities={universities || []}
                languages={languages || []}
                licenses={licenses || []}
                organizations={organizations || []}
                onApplyFilters={handleApplyFilters}
              />
            </div>
            <div className="space-y-6">
              {isLoading ? (
                <RepositoryLoadingGrid />
              ) : isError ? (
                <RepositoryErrorState error={null} />
              ) : pagedRepositories.length === 0 ? (
                <RepositoryEmptyState />
              ) : (
                <RepositoryGrid repositories={pagedRepositories} />
              )}
              <RepositoryPagination
                page={page}
                totalPages={totalPages}
                setPage={setPage}
              />
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
