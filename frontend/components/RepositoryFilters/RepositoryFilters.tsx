import { Input } from "@/components/ui/input";
import { getUniversityDisplayName } from "@/lib/universities";
import { Button } from "@/components/ui/button";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import React from "react";

interface RepositoryFiltersProps {
  searchTerm: string;
  setSearchTerm: (v: string) => void;
  university: string;
  setUniversity: (v: string) => void;
  language: string;
  setLanguage: (v: string) => void;
  license: string;
  setLicense: (v: string) => void;
  owner: string;
  setOwner: (v: string) => void;
  universities: string[];
  languages: string[];
  licenses: string[];
  organizations: string[];
  onApplyFilters: () => void;
}

export const RepositoryFilters: React.FC<RepositoryFiltersProps> = ({
  searchTerm, setSearchTerm,
  university, setUniversity,
  language, setLanguage,
  license, setLicense,
  owner, setOwner,
  universities = [],
  languages = [],
  licenses = [],
  organizations = [],
  onApplyFilters,
}) => (
  <div className="space-y-6">
    <div>
      <h3 className="font-medium mb-2">Search</h3>
      <Input
        placeholder="Search repositories..."
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
      />
    </div>
    <div>
      <h3 className="font-medium mb-2">University</h3>
      <Select value={university} onValueChange={setUniversity}>
        <SelectTrigger>
          <SelectValue placeholder="Select university" />
        </SelectTrigger>
        <SelectContent>
          <SelectItem value="__all__">All Universities</SelectItem>
          {universities.map((uni) => (
            <SelectItem key={uni} value={uni}>{getUniversityDisplayName(uni)}</SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
    <div>
      <h3 className="font-medium mb-2">Language</h3>
      <Select value={language} onValueChange={setLanguage}>
        <SelectTrigger>
          <SelectValue placeholder="Select language" />
        </SelectTrigger>
        <SelectContent>
          <SelectItem value="__all__">All Languages</SelectItem>
          {languages.map((lang) => (
            <SelectItem key={lang} value={lang}>{lang}</SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
    <div>
      <h3 className="font-medium mb-2">License</h3>
      <Select value={license} onValueChange={setLicense}>
        <SelectTrigger>
          <SelectValue placeholder="Select license" />
        </SelectTrigger>
        <SelectContent>
          <SelectItem value="__all__">All Licenses</SelectItem>
          {licenses.map((lic) => (
            <SelectItem key={lic} value={lic}>{lic}</SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
    <div>
      <h3 className="font-medium mb-2">Development Team</h3>
      <Select value={owner} onValueChange={setOwner}>
        <SelectTrigger>
          <SelectValue placeholder="Select Development Team" />
        </SelectTrigger>
        <SelectContent>
          <SelectItem value="__all__">All Development Teams</SelectItem>
          {organizations.map((org) => (
            <SelectItem key={org} value={org}>{org}</SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
    <Button className="w-full" onClick={onApplyFilters}>
      Apply Filters
    </Button>
  </div>
);

