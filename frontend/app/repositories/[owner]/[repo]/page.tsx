"use client";
import { useParams } from "next/navigation";
import { useRepositoriesStore } from "@/store/repositories";
import { useQuery } from "@tanstack/react-query";
import { RepositoryPage } from "../../../../components/RepositoryPage";
import { RepositoryPageSkeleton } from "../../../../components/RepositoryPageSkeleton";
import { RepositoryErrorState } from "@/components/RepositoryErrorState/RepositoryErrorState";
import Link from "next/link";
import Head from "next/head";
import React, { Suspense } from "react";

const API_URL = process.env.NEXT_PUBLIC_API_URL;

type Repository = {
  full_name: string;
  description?: string;
  language?: string;
  license?: string;
  owner?: string;
  contributors?: number;
  created_at?: string;
  updated_at?: string;
  pushed_at?: string;
  readme?: string;
  default_branch?: string;
  topic_area_ai?: string;
  university?: string;
  funder1?: string;
  grant_number1_1?: string;
  grant_number1_2?: string;
  grant_number1_3?: string;
  funder2?: string;
  grant_number2_1?: string;
  grant_number2_2?: string;
  grant_number2_3?: string;
  // add other fields as needed
};

export default function RepositoryDetailPage() {
  const params = useParams();
  const owner = params?.owner as string;
  const repo = params?.repo as string;
  const full_name = `${owner}/${repo}`;
  
  const repositories = useRepositoriesStore((state) => state.repositories);
  const repository = repositories.find(r => r.full_name === full_name);

  // Fallback: If not found in context, fetch from API (for hard reload/bookmark)
  const shouldFetch = !repository && !!owner && !!repo;
  const {
    data: fetchedRepo,
    isLoading,
    error,
    isFetched,
    isError
  } = useQuery<Repository>({
    queryKey: ["repository", owner, repo],
    queryFn: async () => {
      const res = await fetch(`${API_URL}/repositories/${owner}/${repo}`);
      if (res.status === 404) {
        let message = "Repository not found";
        try {
          const data = await res.json();
          if (data && typeof data.detail === "string") message = data.detail;
        } catch {}
        const err = new Error(message);
        (err as any).code = 404;
        throw err;
      }
      if (!res.ok) throw new Error("Failed to fetch repository");
      return res.json();
    },
    enabled: shouldFetch,
    retry: false,
    // Optimizations for instant UI:
    initialData: () => repositories.find(r => r.full_name === full_name),
    placeholderData: () => repositories.find(r => r.full_name === full_name),
    staleTime: 300_000 // 5 min
  });

  const displayRepo: Repository | undefined = repository || fetchedRepo;

  // Fetch contributors for the repository
  const {
    data: contributors = [],
    isLoading: isContributorsLoading,
    error: contributorsError
  } = useQuery<any[]>({
    queryKey: ["repository-contributors", displayRepo?.full_name],
    queryFn: async () => {
      if (displayRepo && displayRepo.full_name && displayRepo.full_name.includes("/")) {
        const [repoOwner, repoName] = displayRepo.full_name.split("/");
        const ghRes = await fetch(`https://api.github.com/repos/${repoOwner}/${repoName}/contributors`);
        if (!ghRes.ok) throw new Error("Failed to fetch contributors from GitHub");
        return ghRes.json();
      } else {
        throw new Error("Repository full_name (owner/repo) not available");
      }
    },
    enabled: !!displayRepo && !!displayRepo.full_name && displayRepo.full_name.includes("/"),
    staleTime: 300_000,
  });

  const is404 = (
    shouldFetch &&
    isError &&
    error &&
    ((typeof error === "object" && error !== null && "code" in error && (error as any).code === 404) ||
      error.message === "Repository not found")
  );

  // Show not found UI immediately after fetch if 404
  if (is404 && isFetched) {
    return (
      <>
        <Head>
          <title>Repository Not Found | ORB Showcase</title>
        </Head>
        <RepositoryErrorState error={"Repository not found"}>
          <div className="flex flex-col items-center gap-2 mt-4">
            <Link href="/repositories" className="text-sky-700 underline">Back to Repositories</Link>
          </div>
        </RepositoryErrorState>
      </>
    );
  }

  // Only show skeleton during the initial fetch, not after a 404
  if (isLoading && !isFetched) return <RepositoryPageSkeleton />;
  if (!displayRepo && (isLoading || shouldFetch)) return <RepositoryPageSkeleton />;
  if (!displayRepo && isError) return (
    <>
      <Head>
        <title>Error | ORB Showcase</title>
      </Head>
      <RepositoryErrorState error={error || "Not found"}>
        <div className="flex flex-col items-center gap-2 mt-4">
          <Link href="/repositories" className="text-sky-700 underline">Back to Repositories</Link>
        </div>
      </RepositoryErrorState>
    </>
  );
  if (!displayRepo) return null;

  return (
    <>
      <Head>
        <title>{displayRepo.full_name} | ORB Showcase</title>
        <meta name="description" content={displayRepo.description || "Repository details"} />
      </Head>
      <RepositoryPage
        repo={displayRepo}
        contributors={Array.isArray(contributors) ? contributors.map(c => typeof c === 'string' ? c : c.login) : []}
      />
    </>
  );
}