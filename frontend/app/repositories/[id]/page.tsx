"use client";
import { useParams } from "next/navigation";
import { useRepositoriesStore } from "@/store/repositories";
import { useQuery } from "@tanstack/react-query";
import { RepositoryPage } from "../../../components/RepositoryPage";
import { RepositoryPageSkeleton } from "../../../components/RepositoryPageSkeleton";
import { RepositoryErrorState } from "@/components/RepositoryErrorState/RepositoryErrorState";
import Link from "next/link";
import Head from "next/head";
import React, { Suspense } from "react";

const API_URL = process.env.NEXT_PUBLIC_API_URL;

type Repository = {
  id: number;
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
  // add other fields as needed
};



export default function RepositoryDetailPage() {
  const params = useParams();
  const id = params?.id as string;
  const repositories = useRepositoriesStore((state) => state.repositories);
  const repo = repositories.find(r => String(r.id) === id);

  // Fallback: If not found in context, fetch from API (for hard reload/bookmark)
  // You can optionally skip this if you want purely client-side only
  // For now, fallback to API fetch if not found
  const shouldFetch = !repo && !!id;
  const {
    data: fetchedRepo,
    isLoading,
    error,
    isFetched,
    isError
  } = useQuery<Repository>({
    queryKey: ["repository", id],
    queryFn: async () => {
      const res = await fetch(`${API_URL}/repositories/${id}`);
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
    initialData: () => repositories.find(r => String(r.id) === id),
    placeholderData: () => repositories.find(r => String(r.id) === id),
    staleTime: 300_000 // 5 min
  });
  // For even faster navigation, prefetch this query on card hover using queryClient.prefetchQuery.

  const displayRepo: Repository | undefined = repo || fetchedRepo;

  // Fetch contributors for the repository
  const {
    data: contributors = [],
    isLoading: isContributorsLoading,
    error: contributorsError
  } = useQuery<any[]>({
    queryKey: ["repository-contributors", displayRepo?.full_name],
    queryFn: async () => {
      if (displayRepo && displayRepo.full_name && displayRepo.full_name.includes("/")) {
        const [owner, repoName] = displayRepo.full_name.split("/");
        const ghRes = await fetch(`https://api.github.com/repos/${owner}/${repoName}/contributors`);
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

