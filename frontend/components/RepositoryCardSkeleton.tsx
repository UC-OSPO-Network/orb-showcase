import { Skeleton } from "@/components/ui/skeleton";

export function RepositoryCardSkeleton() {
  return (
    <div className="border border-gray-200 rounded-lg h-full p-6 flex flex-col">
      <div className="mb-4">
        <div className="flex justify-between items-start">
          <Skeleton className="h-6 w-2/3 mb-2" />
        </div>
        <Skeleton className="h-4 w-full mb-1" />
        <Skeleton className="h-4 w-5/6 mb-3" />
      </div>
      <div className="mt-auto">
        <div className="flex items-center gap-2 flex-wrap">
          {/* Language */}
          <Skeleton className="h-5 w-16 rounded" />
          {/* University */}
          <Skeleton className="h-5 w-20 rounded ml-2" />
          {/* License */}
          <Skeleton className="h-5 w-16 rounded ml-2" />
          <div className="flex items-center space-x-3 text-gray-600 text-sm ml-2">
            <Skeleton className="h-4 w-8 rounded" />
            <Skeleton className="h-4 w-8 rounded" />
            <Skeleton className="h-4 w-8 rounded" />
          </div>
        </div>
      </div>
    </div>
  );
}
