import { Suspense } from "react";
import { connection } from "next/server";
import { RepositoriesPageClient } from "./RepositoriesPageClient";

export default async function RepositoriesPage() {
  await connection();

  const apiUrl =
    process.env.API_URL ??
    process.env.NEXT_PUBLIC_API_URL ??
    "http://localhost:8000";

  return (
    <Suspense fallback={null}>
      <RepositoriesPageClient apiUrl={apiUrl} />
    </Suspense>
  );
}

