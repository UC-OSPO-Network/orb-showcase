import React, { useEffect, useState } from "react";
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';
import rehypeRaw from 'rehype-raw';
import rehypeHighlight from 'rehype-highlight';

import 'github-markdown-css/github-markdown-light.css';
import { getUniversityDisplayName } from "@/lib/universities";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Tabs, TabsList, TabsTrigger, TabsContent } from "@/components/ui/tabs";
import {Eye, ArrowLeft, Star, GitFork, Download, ExternalLink, Users, Calendar, Code, User, University, School } from "lucide-react";
import Link from "next/link";
import { ContributorsScrollArea } from "@/components/ContributorsScrollArea";

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
  readme?: string;
  default_branch?: string;
  topic_area_ai?: string;
  funder1?: string;
  grant_number1_1?: string;
  grant_number1_2?: string;
  grant_number1_3?: string;
  funder2?: string;
  grant_number2_1?: string;
  grant_number2_2?: string;
  grant_number2_3?: string;
}

interface Props {
  repo: Repository;
  contributors?: string[];
  readme?: string;
}

interface ReadmeViewerProps {
  source?: string | null;
  repoOwner: string;
  repoName: string;
  branch?: string;
}

function fixImageUrls(markdown: string, repoOwner: string, repoName: string, branch?: string ) {
  const safeBranch = branch || "main";
  // Replace markdown image syntax ![alt](relative.png)
  let result = markdown.replace(/!\[([^\]]*)\]\(((?!https?:\/\/)[^\)]+)\)/g, (match, alt, relPath) => {
    const cleanPath = relPath.replace(/^\.?\//, ""); // remove leading ./ or /
    const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/refs/heads/${safeBranch}/${cleanPath}`;
    return `![${alt}](${url})`;
  });
  // Replace HTML <img src="relative.png"> (quoted src)
  result = result.replace(/<img([^>]+)src=["'](?!https?:\/\/)([^"'>]+)["']/g, (match, before, relPath) => {
    const cleanPath = relPath.replace(/^\.?\//, ""); // remove leading ./ or /
    const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/refs/heads/${safeBranch}/${cleanPath}`;
    return `<img${before}src="${url}"`;
  });
  // Replace HTML <img src=relative.png> (unquoted src)
  result = result.replace(/<img([^>]+)src=(?!["'])([^\s>]+)([\s>])/g, (match, before, relPath, after) => {
    // Only rewrite if not an absolute URL
    if (/^(https?:)?\//.test(relPath)) return match;
    const cleanPath = relPath.replace(/^\.?\//, "");
    const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/refs/heads/${safeBranch}/${cleanPath}`;
    return `<img${before}src="${url}"${after}`;
  });
  // Replace HTML <source srcset="relative.png"> (quoted srcset)
  result = result.replace(/<source([^>]+)srcset=["'](?!https?:\/\/)([^"'>]+)["']/g, (match, before, relPath) => {
    const cleanPath = relPath.replace(/^\.?\//, "");
    const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/refs/heads/${safeBranch}/${cleanPath}`;
    return `<source${before}srcset="${url}"`;
  });
  // Replace HTML <source srcset=relative.png> (unquoted srcset)
  result = result.replace(/<source([^>]+)srcset=(?!["'])([^\s>]+)([\s>])/g, (match, before, relPath, after) => {
    if (/^(https?:)?\//.test(relPath)) return match;
    const cleanPath = relPath.replace(/^\.?\//, "");
    const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/refs/heads/${safeBranch}/${cleanPath}`;
    return `<source${before}srcset="${url}"${after}`;
  });
  // Also fix github.com/blob URLs as before
  result = result.replace(
    /https:\/\/github\.com\/([^/]+)\/([^/]+)\/blob\/([^/]+)\/([^\")\s]+)/g,
    'https://raw.githubusercontent.com/$1/$2/$3/$4'
  );

  result = fixRepoResourceUrls(result, repoOwner, repoName, safeBranch)
  
  return result;
}

function fixRepoResourceUrls(markdown: string, repoOwner: string, repoName: string, branch?: string ) {
  const safeBranch = branch || "main";
  // Fix repository resources URLs
  let result = markdown.replace(/\]\(((?!http)\S+[^\)])\)/gi, (match, raw_resource) => {
    const resource = getFormattedRepoResource(raw_resource);
    const url = `https://github.com/${repoOwner}/${repoName}/tree/${safeBranch}/${resource}`;
    return `](${url})`;
  });

  // Fixing link definitions that point to repository resources URLs
  result = result.replace(/(\[\S*\]\:)\s*([^\s&^http&^mailto]\S*)/gi, (_, variable, raw_resource) => {
    const resource = getFormattedRepoResource(raw_resource);
    const url = `https://github.com/${repoOwner}/${repoName}/tree/${safeBranch}`
    return `${variable} ${url}/${resource}`;
  });

  return result;
}

function getFormattedRepoResource(raw_resource: string) {
  const leading_chars = raw_resource.substring(0,2);
  let potential_resource = raw_resource;
  if (leading_chars === "./") {   
    potential_resource = raw_resource.substring(2);
  } else if (leading_chars[0] === "/") {
    potential_resource = raw_resource.substring(1);
  }
  return potential_resource;
}

function ReadmeViewer({ source, repoOwner, repoName, branch }: ReadmeViewerProps) {
  const [readme, setReadme] = useState<string | null>(source || null);

  useEffect(() => {
    if (!readme && repoOwner && repoName && branch) {
      // Try to fetch README.md from GitHub
      const url = `https://raw.githubusercontent.com/${repoOwner}/${repoName}/${branch}/README.md`;
      fetch(url)
        .then(res => res.ok ? res.text() : null)
        .then(text => {
          if (text) setReadme(text);
        });
    }
  }, [readme, repoOwner, repoName, branch]);

  if (!readme) {
    return <div className="markdown-body p-4 text-gray-400">No README found.</div>;
  }

  return (
    <div className="markdown-body p-4">
      <ReactMarkdown
        children={fixImageUrls(readme, repoOwner, repoName, branch)}
        remarkPlugins={[remarkGfm]}
        rehypePlugins={[rehypeRaw, rehypeHighlight]}
      />
    </div>
  );
}


function useOrgInfo(org: string | undefined) {
  const [orgInfo, setOrgInfo] = useState<{ blog?: string; html_url?: string } | null>(null);
  useEffect(() => {
    if (!org) return;
    fetch(`https://api.github.com/orgs/${org}`)
      .then(res => res.ok ? res.json() : null)
      .then(data => {
        if (data) setOrgInfo({ blog: data.blog, html_url: data.html_url });
      });
  }, [org]);
  return orgInfo;
}

export const RepositoryPage: React.FC<Props> = ({ repo, contributors}) => {
  const branch = repo.default_branch || "main";
  const orgInfo = useOrgInfo(repo.owner);

  return (
    <div className="flex flex-col">
      <main className="flex-1 py-4">
        <div className="container max-w-6xl">
          <div className="grid gap-8 lg:grid-cols-[2fr_1fr]">
            <div className="space-y-6 min-w-0">
              <div>
                <h1 className="text-3xl font-bold text-sky-800 mb-2">{repo.full_name}</h1>
                <p className="text-lg text-gray-600 mb-4">{repo.description}</p>
                {repo.topic_area_ai && (
                        <div className="flex items-center gap-2">
                           
                          <Badge variant="secondary" className="text-sm bg-purple-100 text-purple-800 border-purple-200">
                            {repo.topic_area_ai}
                          </Badge>
                        </div>
                      )}
                {/* <div className="flex flex-wrap gap-2 mb-6">
                  {repo.language && <Badge variant="outline" className="text-sm">{repo.language}</Badge>}
                  {repo.license && <Badge variant="secondary" className="text-sm">{repo.license}</Badge>}
                  {repo.university && <Badge variant="secondary" className="text-sm">{getUniversityDisplayName(repo.university)}</Badge>}
                </div> */}
              
              </div>
              <Card className="w-full max-w-full min-w-0 flex-shrink-0">
                <Tabs defaultValue="overview" className="w-full">
                  <TabsList className="w-full flex border-b border-gray-200 p-0 gap-0 bg-white">
                    <TabsTrigger value="overview" className="flex-1 h-10 m-0 rounded-none bg-transparent whitespace-nowrap data-[state=active]:bg-sky-100 data-[state=active]:text-sky-800 data-[state=active]:z-10 data-[state=active]:rounded-t-md data-[state=active]:shadow-none transition-colors transition-border">Overview</TabsTrigger>
                    <TabsTrigger value="readme" className="flex-1 h-10 m-0 rounded-none bg-transparent whitespace-nowrap data-[state=active]:bg-sky-100 data-[state=active]:text-sky-800 data-[state=active]:z-10 data-[state=active]:rounded-t-md data-[state=active]:shadow-none transition-colors transition-border">README</TabsTrigger>
                  </TabsList>
                  <TabsContent value="overview">
                    <div className="p-4 space-y-4">
                      <div className="flex items-center gap-2">
                        <Users className="w-4 h-4 text-gray-500" />
                        <span className="font-medium">Development Team:</span>
                        <a href={orgInfo?.html_url} target="_blank" rel="noopener noreferrer" className="text-sky-600">{repo.owner} </a>
                      </div>
                      <div className="flex items-center gap-2">
                        <Code className="w-4 h-4 text-gray-500" />
                        <span className="font-medium">License:</span>
                        <span className="text-md">{repo.license || "-"}</span>
                      </div>
                      <div className="flex items-center gap-2">
                        <School className="w-4 h-4 text-gray-500" />
                        <span className="font-medium">University:</span>
                        <span className="text-md">{getUniversityDisplayName(repo.university) || "-"}</span>
                      </div>
                  
                      <div className="flex items-center gap-2">
                        <ExternalLink className="w-4 h-4 text-gray-500" />
                        <span className="font-medium">External Links:</span>
                        <span className="flex flex-col gap-1">
              
                          {orgInfo?.blog && orgInfo.blog !== "" && (
                            <a href={orgInfo.blog} target="_blank" rel="noopener noreferrer" className="text-sky-600 underline">Website</a>
                          )}
                        </span>
                      </div>
                  {/* Funders and Grant Details */}
                  {(repo.funder1 || repo.grant_number1_1 || repo.grant_number1_2 || repo.grant_number1_3 || repo.funder2 || repo.grant_number2_1 || repo.grant_number2_2 || repo.grant_number2_3) && (
                    <div className="mt-6">
                      <div className="bg-sky-50 border border-sky-100 rounded-lg p-4">
                        <div className="font-semibold text-sky-800 text-base mb-2 flex items-center gap-2">
                          <svg className="w-5 h-5 text-sky-500" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" d="M12 8c-1.657 0-3 1.343-3 3 0 1.657 1.343 3 3 3s3-1.343 3-3c0-1.657-1.343-3-3-3zm0 13c-4.418 0-8-3.582-8-8 0-4.418 3.582-8 8-8s8 3.582 8 8c0 4.418-3.582 8-8 8z"/></svg>
                          Funding & Grants
                        </div>
                        <div className="space-y-4">
                          {(repo.funder1 || repo.grant_number1_1 || repo.grant_number1_2 || repo.grant_number1_3) && (
                            <div>
                              <div className="font-medium text-gray-700 mb-1">Funder 1:</div>
                              {repo.funder1 && <div className="text-gray-800 mb-1">{repo.funder1}</div>}
                              <div className="flex flex-wrap gap-2">
                                {repo.grant_number1_1 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 1.1: {repo.grant_number1_1}</span>}
                                {repo.grant_number1_2 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 1.2: {repo.grant_number1_2}</span>}
                                {repo.grant_number1_3 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 1.3: {repo.grant_number1_3}</span>}
                              </div>
                            </div>
                          )}
                          {(repo.funder2 || repo.grant_number2_1 || repo.grant_number2_2 || repo.grant_number2_3) && (
                            <div>
                              <div className="font-medium text-gray-700 mb-1">Funder 2:</div>
                              {repo.funder2 && <div className="text-gray-800 mb-1">{repo.funder2}</div>}
                              <div className="flex flex-wrap gap-2">
                                {repo.grant_number2_1 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 2.1: {repo.grant_number2_1}</span>}
                                {repo.grant_number2_2 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 2.2: {repo.grant_number2_2}</span>}
                                {repo.grant_number2_3 && <span className="inline-block bg-sky-100 text-sky-800 text-xs px-2 py-1 rounded">Grant 2.3: {repo.grant_number2_3}</span>}
                              </div>
                            </div>
                          )}
                        </div>
                      </div>
                    </div>
                  )}
                    </div>
                  </TabsContent>
                  <TabsContent value="readme">
                    <div className="max-w-4xl w-full overflow-x-auto">
                      <ReadmeViewer source={repo.readme} repoOwner={repo.owner || ""} repoName={repo.full_name?.split("/").pop() || ""} branch={branch} />
                    </div>
                  </TabsContent>
                </Tabs>
              </Card>
            </div>
            <div className="space-y-6">
              <Card>
                <CardHeader>
                  <CardTitle className="text-sky-700">Repository Info</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                    <div className="flex gap-4 mb-4">
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
              <Card>
                <CardHeader>
                  <CardTitle className="text-sky-700">README</CardTitle>
                </CardHeader>
                <div className="max-w-4xl w-full overflow-x-auto">
                  <ReadmeViewer source={repo.readme} repoOwner={repo.owner || ""} repoName={repo.full_name?.split("/").pop() || ""} branch={branch} />
                </div>
              </Card>
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
                       <span className="text-sm truncate break-all max-w-xs">
                         Created {repo.created_at ? repo.created_at.split(/[ T]/)[0] : ""}
                       </span>
                    </div>
                  )}
                  {repo.language && (
                    <div className="flex items-center gap-2">
                      <Code className="w-4 h-4 text-gray-500" />
                      <span className="text-sm">{repo.language}</span>
                    </div>
                  )}
                  {repo.homepage && (
                    <div className="flex items-center gap-2">
                      <ExternalLink className="w-4 h-4 text-gray-500" />
                      <a href={repo.homepage} target="_blank" rel="noopener noreferrer" className="text-sky-600 underline"><span className="text-sm">{repo.homepage}</span></a>
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
                  <CardTitle className="text-sky-700">Contributors ({contributors?.length})</CardTitle>
                </CardHeader>
                <CardContent>
                  <ContributorsScrollArea contributors={contributors || []} />
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