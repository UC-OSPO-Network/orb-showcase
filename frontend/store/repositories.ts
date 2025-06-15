import { create } from "zustand";

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

interface RepositoriesState {
  repositories: Repository[];
  setRepositories: (repos: Repository[]) => void;
}

export const useRepositoriesStore = create<RepositoriesState>((set) => ({
  repositories: [],
  setRepositories: (repos) => set({ repositories: repos }),
}));
