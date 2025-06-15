import Link from "next/link"
import { Button } from "@/components/ui/button"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"
import { Label } from "@/components/ui/label"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"

export default function ConnectPage() {
  return (
    <div className="flex flex-col min-h-screen">
      <main className="flex-1 py-10">
        <div className="container max-w-5xl">
          <h1 className="text-3xl font-bold mb-8 text-sky-800">Connect With Us</h1>

          <div className="grid gap-8 md:grid-cols-2">
            <div>
              <Card className="border shadow-sm h-full">
                <CardHeader>
                  <CardTitle className="text-sky-700">Contact Information</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div>
                    <h3 className="font-medium text-gray-900">Email</h3>
                    <p className="text-gray-600">
                      <a href="mailto:info@opensourcehub.example" className="text-sky-600 hover:underline">
                        info@opensourcehub.example
                      </a>
                    </p>
                  </div>

                  <div>
                    <h3 className="font-medium text-gray-900">Main Website</h3>
                    <p className="text-gray-600">
                      <a
                        href="https://www.example.org"
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-sky-600 hover:underline"
                      >
                        www.example.org
                      </a>
                    </p>
                  </div>

                  <div>
                    <h3 className="font-medium text-gray-900">Address</h3>
                    <p className="text-gray-600">
                      123 Open Source Way
                      <br />
                      San Francisco, CA 94105
                      <br />
                      United States
                    </p>
                  </div>

                  <div>
                    <h3 className="font-medium text-gray-900">Social Media</h3>
                    <div className="flex gap-4 mt-2">
                      <a href="#" className="text-gray-600 hover:text-sky-600">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="24"
                          height="24"
                          viewBox="0 0 24 24"
                          fill="none"
                          stroke="currentColor"
                          strokeWidth="2"
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          className="lucide lucide-github"
                        >
                          <path d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4" />
                          <path d="M9 18c-4.51 2-5-2-7-2" />
                        </svg>
                      </a>
                      <a href="#" className="text-gray-600 hover:text-sky-600">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="24"
                          height="24"
                          viewBox="0 0 24 24"
                          fill="none"
                          stroke="currentColor"
                          strokeWidth="2"
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          className="lucide lucide-twitter"
                        >
                          <path d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z" />
                        </svg>
                      </a>
                      <a href="#" className="text-gray-600 hover:text-sky-600">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="24"
                          height="24"
                          viewBox="0 0 24 24"
                          fill="none"
                          stroke="currentColor"
                          strokeWidth="2"
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          className="lucide lucide-linkedin"
                        >
                          <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z" />
                          <rect width="4" height="12" x="2" y="9" />
                          <circle cx="4" cy="4" r="2" />
                        </svg>
                      </a>
                    </div>
                  </div>
                </CardContent>
              </Card>
            </div>

            <div>
              <Card className="border shadow-sm">
                <CardHeader>
                  <CardTitle className="text-sky-700">Add Your Software to Our Catalog</CardTitle>
                </CardHeader>
                <CardContent>
                  <form className="space-y-4">
                    <div className="space-y-2">
                      <Label htmlFor="name">Your Name</Label>
                      <Input id="name" placeholder="Enter your name" />
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="email">Email Address</Label>
                      <Input id="email" type="email" placeholder="Enter your email" />
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="software-name">Software Name</Label>
                      <Input id="software-name" placeholder="Enter software name" />
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="repository-url">Repository URL</Label>
                      <Input id="repository-url" placeholder="https://github.com/username/repo" />
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="software-type">Software Type</Label>
                      <Select>
                        <SelectTrigger id="software-type">
                          <SelectValue placeholder="Select software type" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="library">Library/Framework</SelectItem>
                          <SelectItem value="application">Application</SelectItem>
                          <SelectItem value="tool">Developer Tool</SelectItem>
                          <SelectItem value="plugin">Plugin/Extension</SelectItem>
                          <SelectItem value="other">Other</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="description">Description</Label>
                      <Textarea id="description" placeholder="Briefly describe your software" rows={4} />
                    </div>

                    <Button type="submit" className="w-full bg-sky-600 hover:bg-sky-700">
                      Submit Request
                    </Button>
                  </form>
                </CardContent>
              </Card>
            </div>
          </div>
        </div>
      </main>

     
    </div>
  )
}
