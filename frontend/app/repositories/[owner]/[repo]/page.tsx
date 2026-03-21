import { connection } from "next/server";
import RepositoryDetailPageClient from "./RepositoryDetailPageClient";

export default async function RepositoryDetailPage() {
  await connection();

  const apiUrl =
    process.env.API_URL ??
    process.env.NEXT_PUBLIC_API_URL ??
    "http://localhost:8000";

  return <RepositoryDetailPageClient apiUrl={apiUrl} />;
}