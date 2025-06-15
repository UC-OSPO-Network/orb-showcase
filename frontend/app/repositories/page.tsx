import { Suspense } from "react";
import { RepositoriesPageClient } from "./RepositoriesPageClient";


export default function RepositoriesPage() {
  return (
    <Suspense fallback={null}>
      <RepositoriesPageClient />
    </Suspense>
  );
}

