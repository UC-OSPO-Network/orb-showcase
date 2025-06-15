"use client"

import type React from "react"

import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Search } from "lucide-react"
import { useState } from "react"
import { useRouter } from "next/navigation"

export default function Home() {
  const [searchTerm, setSearchTerm] = useState("")
  const router = useRouter()

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault()
    if (searchTerm.trim()) {
      router.push(`/repositories?search=${encodeURIComponent(searchTerm.trim())}`)
    } else {
      router.push("/repositories")
    }
  }

  const handleKeyPress = (e: React.KeyboardEvent) => {
    if (e.key === "Enter") {
      handleSearch(e as any)
    }
  }

  return (
    <div className="flex flex-col min-h-screen">
      <main className="flex-1">
        <section className="bg-sky-700 text-white py-20">
          <div className="container text-center space-y-6">
            <h1 className="text-4xl font-bold sm:text-5xl md:text-6xl">UC Open Repository Browser</h1>
            <p className="max-w-3xl mx-auto text-lg text-sky-100">
              Showcasing world-class open source scientific software from the University of California.
            </p>
            <div className="pt-4 max-w-md mx-auto">
              <form onSubmit={handleSearch}>
                <div className="relative flex">
                  <div className="relative flex-grow">
                    <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
                    <Input
                      type="text"
                      placeholder="Search repositories..."
                      value={searchTerm}
                      onChange={(e) => setSearchTerm(e.target.value)}
                      onKeyPress={handleKeyPress}
                      className="pl-10 pr-4 py-3 text-base bg-white text-gray-900 border-0 focus:ring-2 focus:ring-amber-400 rounded-r-none"
                    />
                  </div>
                  <Button
                    type="submit"
                    className="bg-amber-400 hover:bg-amber-500 text-sky-900 font-medium rounded-l-none"
                  >
                    Search
                  </Button>
                </div>
              </form>
              <div className="pt-2 flex items-center gap-4 justify-center flex-col">
                {/* <span className="text-sky-100 text-lg font-medium">or</span> */}
                {/* <Button asChild className="bg-amber-400 hover:bg-amber-500 text-sky-900 font-medium">
                  <Link href="/repositories">Browse</Link>
                </Button> */}
              </div>
            </div>
          </div>
        </section>

        <section className="py-16">
          <div className="container">
            <div className="grid gap-8 md:grid-cols-3">
              <Card className="border shadow-sm hover:shadow-md transition-shadow">
                <CardHeader className="bg-sky-50 border-b">
                  <div className="w-full h-32 mb-4 rounded-md overflow-hidden">
                    <img
                      src="/images/explore-software.jpg"
                      alt="Software development dashboard with code analytics"
                      className="w-full h-full object-cover"
                    />
                  </div>
                  <CardTitle className="text-sky-700 text-xl text-center">Explore Software</CardTitle>
                </CardHeader>
                <CardContent className="pt-6">
                  <p className="text-gray-600 text-center">
                    Browse our comprehensive catalog of open source projects. Filter by language, topic, and more to
                    find the perfect software for your needs.
                  </p>
                </CardContent>
                <CardFooter className="flex justify-center pb-6">
                  <Button asChild className="bg-sky-600 hover:bg-sky-700">
                    <Link href="/repositories">Browse Catalog</Link>
                  </Button>
                </CardFooter>
              </Card>

              <Card className="border shadow-sm hover:shadow-md transition-shadow">
                <CardHeader className="bg-sky-50 border-b">
                  <div className="w-full h-32 mb-4 rounded-md overflow-hidden">
                    <img
                      src="/images/about-team.jpg"
                      alt="Team collaboration meeting with laptops and discussion"
                      className="w-full h-full object-cover"
                    />
                  </div>
                  <CardTitle className="text-sky-700 text-xl text-center">About</CardTitle>
                </CardHeader>
                <CardContent className="pt-6">
                  <p className="text-gray-600 text-center">
                    Learn more about our mission to make open source software more discoverable and accessible to
                    everyone.
                  </p>
                </CardContent>
                <CardFooter className="flex justify-center pb-6">
                  <Button asChild className="bg-sky-600 hover:bg-sky-700">
                    <Link href="/about">Learn More</Link>
                  </Button>
                </CardFooter>
              </Card>

              <Card className="border shadow-sm hover:shadow-md transition-shadow">
                <CardHeader className="bg-sky-50 border-b">
                  <div className="w-full h-32 mb-4 rounded-md overflow-hidden">
                    <img
                      src="/images/connect-communication.jpg"
                      alt="Modern communication setup with laptop and mobile devices"
                      className="w-full h-full object-cover"
                    />
                  </div>
                  <CardTitle className="text-sky-700 text-xl text-center">Connect</CardTitle>
                </CardHeader>
                <CardContent className="pt-6">
                  <p className="text-gray-600 text-center">
                    Get in touch with our team, request to add your software to our catalog, or find links to our main
                    website.
                  </p>
                </CardContent>
                <CardFooter className="flex justify-center pb-6">
                  <Button asChild className="bg-sky-600 hover:bg-sky-700">
                    <Link href="/connect">Contact Us</Link>
                  </Button>
                </CardFooter>
              </Card>
            </div>
          </div>
        </section>
      </main>

      
    </div>
  )
}
