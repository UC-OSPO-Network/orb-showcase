// Centralized university code-to-name mapping for UI display
export const UNIVERSITY_DISPLAY_NAMES: Record<string, string> = {
  UCB: "UC Berkeley",
  UCLA: "UC Los Angeles",
  UCSD: "UC San Diego",
  UCSF: "UC San Francisco",
  UCD: "UC Davis",
  UCI: "UC Irvine",
  UCR: "UC Riverside",
  UCSB: "UC Santa Barbara",
  UCSC: "UC Santa Cruz",
  UCM: "UC Merced",
};

export function getUniversityDisplayName(code?: string): string {
  if (!code) return "";
  return UNIVERSITY_DISPLAY_NAMES[code] || code;
}
