import React from "react";
import Link from "next/link";

export default function RepositoryLayout({ children }: { children: React.ReactNode }) {
  return (
    <div className="flex flex-col min-h-screen">
      <div className="container mb-0">
        <Link href="/repositories" className="inline-flex items-center gap-2 text-sky-600 hover:text-sky-700 mt-4">
          {/* Use lucide-react ArrowLeft if available in the project, else fallback to text */}
          <svg className="w-4 h-4" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7"></path></svg>
          Back to Repositories
        </Link>
      </div>
      {children}
    </div>
  );
}