import React from "react";
import { getUniversityDisplayName } from "@/lib/universities";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {Eye, ArrowLeft, Star, GitFork, Download, ExternalLink, Users, Calendar, Code } from "lucide-react";
import Link from "next/link";

export interface Repository {
  id: number;
  full_name: string;
  description?: string;
  university?: string;
  license?: string;
  owner?: string;
  organization?: number;
  language?: string;
  stargazers_count?: number;
  html_url?: string;
  forks_count?: number;
  subscribers_count?: number;
  created_at?: string;
  contributors?: number;
  homepage?: string;
}

interface Props {
  repo: Repository;
}

export const RepositoryPage: React.FC<Props> = ({ repo }) => {
  return (
    <div className="flex flex-col min-h-screen">
      <main className="flex-1 py-10">
        <div className="container max-w-6xl">
          
          <div className="grid gap-8 lg:grid-cols-[2fr_1fr]">
            <div className="space-y-6">
              <div>
                <h1 className="text-3xl font-bold text-sky-800 mb-2">{repo.full_name}</h1>
                <p className="text-lg text-gray-600 mb-4">{repo.description}</p>
                <div className="flex flex-wrap gap-2 mb-6">
                  {repo.language && <Badge variant="outline" className="text-sm">{repo.language}</Badge>}
                  {repo.license && <Badge variant="secondary" className="text-sm">{repo.license}</Badge>}
                  {repo.university && <Badge variant="secondary" className="text-sm">{getUniversityDisplayName(repo.university)}</Badge>}
                </div>
                <div className="flex gap-4 mb-8">
                  <div className="flex items-center gap-1 text-gray-600">
                    <Star className="w-4 h-4" />
                    <span>{repo.stargazers_count} stars</span>
                  </div>
                  <div className="flex items-center gap-1 text-gray-600">
                    <GitFork className="w-4 h-4" />
                    <span>{repo.forks_count} forks</span>
                  </div>
                  <div className="flex items-center gap-1 text-gray-600">
                    <Eye className="w-4 h-4" />
                    <span>{repo.subscribers_count} views</span>
                  </div>
                </div>
              </div>
              <Card>
                <CardHeader>
                  <CardTitle className="text-sky-700">Description</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                  <p>{repo.description}</p>
                </CardContent>
              </Card>
              {repo.homepage && (
                <Card>
                  <CardHeader>
                    <CardTitle className="text-sky-700">Homepage</CardTitle>
                  </CardHeader>
                  <CardContent>
                    <a href={repo.homepage} target="_blank" rel="noopener noreferrer" className="text-sky-600 underline">
                      {repo.homepage}
                    </a>
                  </CardContent>
                </Card>
              )}
            </div>
            <div className="space-y-6">
              <Card>
                <CardHeader>
                  <CardTitle className="text-sky-700">Repository Info</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                  {repo.owner && (
                    <div className="flex items-center gap-2">
                      <Users className="w-4 h-4 text-gray-500" />
                      <span className="text-sm">{repo.owner}</span>
                    </div>
                  )}
                  {repo.created_at && (
                    <div className="flex items-center gap-2">
                      <Calendar className="w-4 h-4 text-gray-500" />
                      <span className="text-sm">Created {repo.created_at.split("T")[0]}</span>
                    </div>
                  )}
                  {repo.license && (
                    <div className="flex items-center gap-2">
                      <Code className="w-4 h-4 text-gray-500" />
                      <span className="text-sm">{repo.license}</span>
                    </div>
                  )}
                  {repo.html_url && (
                    <div className="pt-4">
                      <Link href={repo.html_url} target="_blank" rel="noopener noreferrer">
                        <Button className="w-full bg-sky-600 hover:bg-sky-700">
                          <ExternalLink className="w-4 h-4 mr-2" />
                          <span className="text-white">View on GitHub</span>
                        </Button>
                      </Link>
                    </div>
                  )}
                </CardContent>
              </Card>
              <Card>
                <CardHeader>
                  <CardTitle className="text-sky-700">Contributors</CardTitle>
                </CardHeader>
                <CardContent>
                  <div className="space-y-3">
                    <p className="text-xs text-gray-500 pt-2">{repo.contributors} contributors</p>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
};

export default RepositoryPage;

