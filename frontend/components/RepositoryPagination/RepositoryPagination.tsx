import {
  Pagination,
  PaginationContent,
  PaginationItem,
  PaginationLink,
  PaginationPrevious,
  PaginationNext,
  PaginationEllipsis,
} from "@/components/ui/pagination";
import React from "react";

function getPageNumbers(current: number, total: number) {
  if (total <= 7) return Array.from({ length: total }, (_, i) => i + 1);
  const arr = [];
  arr.push(1);
  if (current <= 3) {
    arr.push(2, 3);
    if (current < 3) arr.push('ellipsis-next');
  } else if (current >= total - 2) {
    arr.push('ellipsis-prev');
    for (let i = total - 4; i <= total - 1; i++) arr.push(i);
  } else {
    arr.push('ellipsis-prev');
    arr.push(current - 1, current, current + 1);
    arr.push('ellipsis-next');
  }
  arr.push(total);
  return arr.filter((v, i, a) => a.indexOf(v) === i);
}

interface RepositoryPaginationProps {
  page: number;
  totalPages: number;
  setPage: (page: number) => void;
}

export const RepositoryPagination: React.FC<RepositoryPaginationProps> = ({ page, totalPages, setPage }) => (
  <div className="flex flex-col items-center gap-2 mt-8">
    <Pagination>
      <PaginationContent>
        <PaginationItem>
          <PaginationPrevious
            href="#"
            aria-disabled={page === 1}
            tabIndex={page === 1 ? -1 : 0}
            onClick={e => { e.preventDefault(); if (page > 1) setPage(page - 1); }}
          />
        </PaginationItem>
        {getPageNumbers(page, totalPages).map((p, idx) =>
          p === 'ellipsis-prev' || p === 'ellipsis-next' ? (
            <PaginationItem key={p + idx}>
              <PaginationEllipsis />
            </PaginationItem>
          ) : (
            <PaginationItem key={p}>
              <PaginationLink
                href="#"
                isActive={p === page}
                aria-current={p === page ? 'page' : undefined}
                onClick={e => { e.preventDefault(); setPage(Number(p)); }}
              >
                {p}
              </PaginationLink>
            </PaginationItem>
          )
        )}
        <PaginationItem>
          <PaginationNext
            href="#"
            aria-disabled={page === totalPages}
            tabIndex={page === totalPages ? -1 : 0}
            onClick={e => { e.preventDefault(); if (page < totalPages) setPage(page + 1); }}
          />
        </PaginationItem>
      </PaginationContent>
    </Pagination>
  </div>
);
