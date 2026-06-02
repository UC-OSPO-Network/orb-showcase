"use client"

import React, { useState } from "react"
import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card, CardContent } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Search, Code, Users, MessageCircle, ArrowRight } from "lucide-react"
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
          <div className="w-full max-w-screen-2xl mx-auto px-4 md:px-8 xl:px-20 text-center space-y-6">
            <h1 className="text-4xl font-bold sm:text-5xl md:text-6xl">UC Open Source Showcase</h1>
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

        {/* Features Section */}
        <section className="py-20 bg-background">
          <div className="w-full max-w-screen-2xl mx-auto px-4 md:px-8 xl:px-20">
            <div className="text-center space-y-4 mb-16">
              <h2 className="text-3xl md:text-4xl font-bold text-foreground">
                Explore Our Platform
              </h2>
              <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
                Everything you need to discover, understand, and contribute to open source research software.
              </p>
            </div>
            
            <div className="grid gap-8 md:grid-cols-3 gap-x-12 xl:gap-x-16">
              <Card className="group relative overflow-hidden border-border bg-card hover:shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col h-full">
                <CardContent className="p-8 text-center flex flex-col h-full">
                  <div className="space-y-6 flex-1">
                    <div className="mx-auto w-16 h-16 rounded-2xl bg-gradient-to-br from-sky-50 to-sky-100 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
                      <Search className="w-8 h-8 text-sky-600" />
                    </div>
                    <div className="space-y-3">
                      <h3 className="text-xl font-semibold text-foreground">Explore Software</h3>
                      <p className="text-muted-foreground leading-relaxed">
                        Discover cutting-edge open source projects from UC researchers. Filter by language, topic, and research domain.
                      </p>
                    </div>
                  </div>
                  <div className="mt-6 pt-4">
                    <Button 
                      asChild
                      className="bg-sky-600 hover:bg-sky-700 text-white group-hover:gap-3 transition-all duration-300 w-full"
                    >
                      <Link href="/repositories">
                        Browse Catalog
                        <ArrowRight className="w-4 h-4 ml-2 group-hover:translate-x-1 transition-transform" />
                      </Link>
                    </Button>
                  </div>
                </CardContent>
              </Card>

              <Card className="group relative overflow-hidden border-border bg-card hover:shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col h-full">
                <CardContent className="p-8 text-center flex flex-col h-full">
                  <div className="space-y-6 flex-1">
                    <div className="mx-auto w-16 h-16 rounded-2xl bg-gradient-to-br from-sky-50 to-sky-100 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
                      <Users className="w-8 h-8 text-sky-600" />
                    </div>
                    <div className="space-y-3">
                      <h3 className="text-xl font-semibold text-foreground">About</h3>
                      <p className="text-muted-foreground leading-relaxed">
                        Learn about our mission to advance open science through collaborative software development and knowledge sharing.
                      </p>
                    </div>
                  </div>
                  <div className="mt-6 pt-4">
                    <Button 
                      asChild
                      className="bg-sky-600 hover:bg-sky-700 text-white group-hover:gap-3 transition-all duration-300 w-full"
                    >
                      <Link href="/about">
                        Learn More
                        <ArrowRight className="w-4 h-4 ml-2 group-hover:translate-x-1 transition-transform" />
                      </Link>
                    </Button>
                  </div>
                </CardContent>
              </Card>

              <Card className="group relative overflow-hidden border-border bg-card hover:shadow-lg transition-all duration-300 hover:-translate-y-1 flex flex-col h-full">
                <CardContent className="p-8 text-center flex flex-col h-full">
                  <div className="space-y-6 flex-1">
                    <div className="mx-auto w-16 h-16 rounded-2xl bg-gradient-to-br from-sky-50 to-sky-100 flex items-center justify-center group-hover:scale-110 transition-transform duration-300">
                      <MessageCircle className="w-8 h-8 text-sky-600" />
                    </div>
                    <div className="space-y-3">
                      <h3 className="text-xl font-semibold text-foreground">Connect</h3>
                      <p className="text-muted-foreground leading-relaxed">
                        Join our community of researchers and developers. Submit your project or collaborate with our network.
                      </p>
                    </div>
                  </div>
                  <div className="mt-6 pt-4">
                    <Button 
                      asChild
                      className="bg-sky-600 hover:bg-sky-700 text-white group-hover:gap-3 transition-all duration-300 w-full"
                    >
                      <Link href="/connect">
                        Get Involved
                        <ArrowRight className="w-4 h-4 ml-2 group-hover:translate-x-1 transition-transform" />
                      </Link>
                    </Button>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>
        </section>
      </main>

      
    </div>
  )
}
