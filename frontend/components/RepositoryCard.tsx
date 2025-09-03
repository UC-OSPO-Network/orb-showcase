import Link from "next/link";
import { getUniversityDisplayName } from "@/lib/universities";
import { Star, Eye, GitFork, Users, User } from "lucide-react";

export function RepositoryCard({ repo }: { repo: any }) {
  const colors: {[key: string]: string} = {
    'Python': 'bg-blue-100 text-blue-800',
    'JavaScript': 'bg-yellow-100 text-yellow-800',
    'TypeScript': 'bg-blue-100 text-blue-800',
    'R': 'bg-green-100 text-green-800',
    'C++': 'bg-purple-100 text-purple-800',
    'Julia': 'bg-pink-100 text-pink-800',
  };
  return (
    <Link href={`/repositories/${repo.full_name}`} className="group block h-full">
      <div className="relative h-full bg-white border-0 shadow-xl hover:shadow-2xl transition-all duration-300 transform hover:scale-[1.02] cursor-pointer overflow-hidden rounded-md flex flex-col justify-between">

        <div className="relative z-10 p-4 md:p-6 flex flex-col h-full flex-1">
          {/* Header */}
          <div className="flex items-start justify-between pb-4">
            <div className="flex-1 min-w-0 space-y-3">
              <div className="text-lg md:text-xl font-bold text-slate-900 group-hover:text-blue-600 transition-colors duration-300 truncate flex items-center gap-2 md:gap-3">
                {repo.full_name?.split("/").pop()}
              </div>
              <div className="flex items-center gap-2 md:gap-3">
                <div className="w-8 h-8 bg-gradient-to-br from-slate-200 to-slate-300 rounded-full flex items-center justify-center">
                  {repo.organization === 1 ? (
                    <Users className="h-5 w-5 text-slate-600" />
                  ) : (
                    <User className="h-5 w-5 text-slate-600" />
                  )}
                </div>
                <span className="text-sm text-slate-600 truncate font-medium">
                  {repo.owner}
                </span>
              </div>
            </div>
            <div className="flex items-center gap-3 ml-4 flex-shrink-0">
              <div className="flex items-center gap-1 bg-gradient-to-r from-amber-100 to-yellow-100 px-3 py-1.5 rounded-full">
                <Star className="h-4 w-4 fill-amber-400 text-amber-400" />
                <span className="text-sm font-bold text-amber-700">{repo.stargazers_count}</span>
              </div>
            </div>
          </div>

          {/* Description */}
          <div className="text-slate-600 line-clamp-3 leading-relaxed mb-4 min-h-[60px] md:min-h-[72px]">
            {repo.description}
          </div>

          {/* Tags */}
          <div className="flex flex-wrap gap-2 md:gap-3 mb-4">
            {repo.language && (
              <span className={`bg-gradient-to-r ${colors[repo.language] || 'bg-gray-100 text-gray-800'} text-slate-800 border-0 shadow-lg hover:shadow-xl transition-shadow duration-300 px-2 md:px-3 py-1 font-medium rounded-full border text-center`}>{repo.language}</span>
            )}
            {repo.license && (
              <span className="bg-gradient-to-r from-slate-100 to-slate-200 text-slate-800 border-0 shadow-lg hover:shadow-xl transition-shadow duration-300 px-2 md:px-3 py-1 font-medium rounded-full border text-center">
                {repo.license}
              </span>
            )}
          </div>

          {/* University & Stats */}
          <div className="space-y-3 pt-4 border-t border-slate-200/60 mb-4">
            {repo.university && (
              <div className="flex items-center gap-2 text-sm text-slate-600">
                <div className="w-5 h-5 bg-gradient-to-br from-blue-100 to-indigo-100 rounded-full flex items-center justify-center">
                  <span className="font-bold">🏛️</span>
                </div>
                <span className="font-medium truncate">{getUniversityDisplayName(repo.university)}</span>
                <span className="flex items-center gap-1"><GitFork className="h-4 w-4" />{repo.forks_count}</span>
              </div>
            )}
          </div>


        </div>
      </div>
    </Link>
  );
}
