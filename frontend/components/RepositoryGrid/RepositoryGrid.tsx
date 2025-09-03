import { RepositoryCard } from "@/components/RepositoryCard";
import React from "react";

interface RepositoryGridProps {
  repositories: any[];
}

export const RepositoryGrid: React.FC<RepositoryGridProps> = ({ repositories }) => (
  <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6 md:gap-8 mb-12 px-2 md:px-4 xl:px-0">
    {repositories
      .map((repo) => (
        <RepositoryCard key={repo.full_name} repo={repo} />
      ))}
  </div>
);
