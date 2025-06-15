import { RepositoryCardSkeleton } from "@/components/RepositoryCardSkeleton";
import React from "react";

export const RepositoryLoadingGrid: React.FC = () => (
  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
    {Array.from({ length: 8 }).map((_, i) => (
      <RepositoryCardSkeleton key={i} />
    ))}
  </div>
);
