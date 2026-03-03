import { connection } from "next/server"
import ConnectPageClient from "./ConnectPageClient"

export default async function ConnectPage() {
  await connection()

  const apiUrl =
    process.env.API_URL ??
    process.env.NEXT_PUBLIC_API_URL ??
    "http://localhost:8000"

  return <ConnectPageClient apiUrl={apiUrl} />
}
