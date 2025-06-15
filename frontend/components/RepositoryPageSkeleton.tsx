import { Skeleton } from "@/components/ui/skeleton";

export function RepositoryPageSkeleton() {
  return (
    <div className="flex flex-col min-h-screen">
      <main className="flex-1 py-10">
        <div className="container max-w-6xl">
          <div className="grid gap-8 lg:grid-cols-[2fr_1fr]">
            {/* Left (main) section */}
            <div className="space-y-6">
              <div>
                <Skeleton className="h-8 w-2/3 mb-2" /> {/* Title */}
                <Skeleton className="h-5 w-1/2 mb-4" /> {/* Description */}
                <div className="flex flex-wrap gap-2 mb-6">
                  <Skeleton className="h-6 w-16 rounded" />
                  <Skeleton className="h-6 w-16 rounded" />
                  <Skeleton className="h-6 w-16 rounded" />
                </div>
                <div className="flex gap-4 mb-8">
                  <Skeleton className="h-5 w-16 rounded" />
                  <Skeleton className="h-5 w-16 rounded" />
                  <Skeleton className="h-5 w-16 rounded" />
                </div>
              </div>
              <div>
                <Skeleton className="h-6 w-40 mb-2" /> {/* Card title */}
                <Skeleton className="h-20 w-full rounded" /> {/* Card body */}
              </div>
              <div>
                <Skeleton className="h-6 w-40 mb-2" /> {/* Homepage title */}
                <Skeleton className="h-8 w-1/2" /> {/* Homepage link */}
              </div>
            </div>
            {/* Right (sidebar) section */}
            <div className="space-y-6">
              <div>
                <Skeleton className="h-6 w-40 mb-2" /> {/* Card title */}
                <Skeleton className="h-16 w-full rounded" /> {/* Card body */}
              </div>
              <div>
                <Skeleton className="h-6 w-40 mb-2" /> {/* Contributors title */}
                <Skeleton className="h-8 w-1/2" /> {/* Contributors count */}
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
