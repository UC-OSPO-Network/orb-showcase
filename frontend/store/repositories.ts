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
  topic_area_ai?: string;
  // Only these extra fields
  funder1?: string;
  grant_number1_1?: string;
  grant_number1_2?: string;
  grant_number1_3?: string;
  funder2?: string;
  grant_number2_1?: string;
  grant_number2_2?: string;
  grant_number2_3?: string;
}

interface RepositoriesState {
  repositories: Repository[];
  setRepositories: (repos: Repository[]) => void;
  // Filters
  searchTerm: string;
  setSearchTerm: (v: string) => void;
  universitiesSelected: string[];
  setUniversitiesSelected: (v: string[]) => void;
  languagesSelected: string[];
  setLanguagesSelected: (v: string[]) => void;
  licensesSelected: string[];
  setLicensesSelected: (v: string[]) => void;
  ownersSelected: string[];
  setOwnersSelected: (v: string[]) => void;
  topicsSelected: string[];
  setTopicsSelected: (v: string[]) => void;
}

export const useRepositoriesStore = create<RepositoriesState>((set) => ({
  repositories: [],
  setRepositories: (repos) => set({ repositories: repos }),
  // Filters
  searchTerm: "",
  setSearchTerm: (v) => set({ searchTerm: v }),
  universitiesSelected: [],
  setUniversitiesSelected: (v) => set({ universitiesSelected: v }),
  languagesSelected: [],
  setLanguagesSelected: (v) => set({ languagesSelected: v }),
  licensesSelected: [],
  setLicensesSelected: (v) => set({ licensesSelected: v }),
  ownersSelected: [],
  setOwnersSelected: (v) => set({ ownersSelected: v }),
  topicsSelected: [],
  setTopicsSelected: (v) => set({ topicsSelected: v }),
}));
