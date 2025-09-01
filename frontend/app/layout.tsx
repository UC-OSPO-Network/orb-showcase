import type React from "react"
import "@/app/globals.css"
import { Inter } from "next/font/google"
import { ThemeProvider } from "@/components/theme-provider"
import Providers from "./Providers"
import Navbar from "@/components/Navbar"
import Footer from "@/components/Footer"
import { Toaster } from "sonner"


const inter = Inter({ subsets: ["latin"] })


export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html lang="en" className={inter.className} suppressHydrationWarning>
      <body>
        <Providers>
          <ThemeProvider attribute="class" defaultTheme="light" enableSystem disableTransitionOnChange>
            <Navbar />
            {children}
            <Toaster position="top-right" />
          </ThemeProvider>
        </Providers>

      <Footer />
      </body>
    </html>
  )
}
