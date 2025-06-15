// Centralized university code-to-name mapping for UI display
export const UNIVERSITY_DISPLAY_NAMES: Record<string, string> = {
  ucb: "UC Berkeley",
  ucla: "UC Los Angeles",
  ucsd: "UC San Diego",
  ucsf: "UC San Francisco",
  ucd: "UC Davis",
  uci: "UC Irvine",
  ucr: "UC Riverside",
  ucsb: "UC Santa Barbara",
  ucsc: "UC Santa Cruz",
  ucm: "UC Merced",
};

export function getUniversityDisplayName(code?: string): string {
  if (!code) return "";
  return UNIVERSITY_DISPLAY_NAMES[code] || code;
}
