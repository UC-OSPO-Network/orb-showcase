import * as React from "react";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Separator } from "@/components/ui/separator";

interface ContributorsScrollAreaProps {
  contributors: string[];
}

export function ContributorsScrollArea({ contributors }: ContributorsScrollAreaProps) {
  return (
    <ScrollArea className="h-[13.8rem] w-full max-w-xs bg-white border-t border-gray-200 shadow-sm rounded-lg">
      <div className="">
        {contributors.length === 0 && (
          <div className="text-sm text-gray-500 pt-2 text-center">No contributors found.</div>
        )}
        {contributors.map((name, idx) => (
          <React.Fragment key={name + idx}>
            <a
              href={`https://github.com/${name}`}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-2 w-full px-2 py-2 text-sm font-medium text-gray-700 hover:bg-sky-50 hover:text-sky-700 rounded transition"
              style={{ textDecoration: 'none' }}
            >
              <span className="w-5 h-5 flex items-center justify-center">
                <svg className="w-4 h-4 text-gray-400" fill="currentColor" viewBox="0 0 24 24"><path d="M12 .5C5.73.5.5 5.73.5 12c0 5.08 3.29 9.39 7.86 10.91.58.11.79-.25.79-.56 0-.28-.01-1.02-.02-2-3.2.7-3.88-1.54-3.88-1.54-.53-1.34-1.3-1.7-1.3-1.7-1.06-.72.08-.71.08-.71 1.17.08 1.79 1.2 1.79 1.2 1.04 1.78 2.73 1.27 3.4.97.11-.75.41-1.27.74-1.56-2.56-.29-5.26-1.28-5.26-5.7 0-1.26.45-2.29 1.19-3.1-.12-.29-.52-1.46.11-3.05 0 0 .98-.31 3.2 1.18a11.1 11.1 0 0 1 2.92-.39c.99.01 1.99.13 2.92.39 2.22-1.49 3.2-1.18 3.2-1.18.63 1.59.23 2.76.11 3.05.74.81 1.19 1.84 1.19 3.1 0 4.43-2.7 5.41-5.27 5.7.42.36.79 1.09.79 2.2 0 1.59-.01 2.87-.01 3.26 0 .31.21.68.8.56C20.71 21.39 24 17.08 24 12c0-6.27-5.23-11.5-12-11.5z"/></svg>
              </span>
              <span className="truncate">{name}</span>
            </a>
            {idx < contributors.length - 1 && <Separator className="my-1" />}
          </React.Fragment>
        ))}
      </div>
    </ScrollArea>
  );
} 