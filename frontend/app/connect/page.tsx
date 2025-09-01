"use client"

import { Button } from "@/components/ui/button"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"
import { Label } from "@/components/ui/label"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"
import { Separator } from "@/components/ui/separator"
import { useState } from "react"
import { useQuery } from "@tanstack/react-query"
import { toast } from "sonner"
import {
  repositorySubmissionSchema,
  type RepositorySubmissionData,
  topicAreaOptions,
  getFieldError
} from "@/lib/validation"
import { z } from "zod"

const API_URL = process.env.NEXT_PUBLIC_API_URL;

export default function ConnectPage() {
  // Form state
  const [formData, setFormData] = useState<RepositorySubmissionData>({
    repository_url: "",
    submitter_name: "",
    submitter_email: "",
    short_description: "",
    topic_area_ai: "",
    university: "",
    contact_name2: "",
    contact_email2: "",
    contact_name3: "",
    contact_email3: "",
    funder1: "",
    grant_number1_1: "",
    grant_number1_2: "",
    grant_number1_3: "",
    funder2: "",
    grant_number2_1: "",
    grant_number2_2: "",
    grant_number2_3: "",
  });

  const [isSubmitting, setIsSubmitting] = useState(false);
  const [validationErrors, setValidationErrors] = useState<z.ZodError | null>(null);

  // Fetch universities for dropdown
  const { data: universities = [] } = useQuery({
    queryKey: ["universities"],
    queryFn: () => fetch(`${API_URL}/universities`).then(res => res.json()),
  });

  // Handle input changes
  const handleInputChange = (field: keyof RepositorySubmissionData, value: string) => {
    setFormData(prev => ({ ...prev, [field]: value }));

    // Clear validation errors for this field
    if (validationErrors) {
      const filteredIssues = validationErrors.issues.filter(issue =>
        !(issue.path.length > 0 && issue.path[0] === field)
      );
      if (filteredIssues.length === 0) {
        setValidationErrors(null);
      } else {
        setValidationErrors(new z.ZodError(filteredIssues));
      }
    }
  };

  // Handle form submission
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    // Validate form data
    const validation = repositorySubmissionSchema.safeParse(formData);

    if (!validation.success) {
      setValidationErrors(validation.error);
      toast.error("Please fix the errors in the form");
      return;
    }

    setIsSubmitting(true);
    setValidationErrors(null);

    try {
      const response = await fetch(`${API_URL}/submit-repository`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(validation.data),
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.detail || 'Failed to submit repository');
      }

      const result = await response.json();

      toast.success("Repository submitted successfully!", {
        description: result.pr_url
          ? "A pull request has been created for review."
          : "Your submission has been received and will be reviewed."
      });

      // Reset form
      setFormData({
        repository_url: "",
        submitter_name: "",
        submitter_email: "",
        short_description: "",
        topic_area_ai: "",
        university: "",
        contact_name2: "",
        contact_email2: "",
        contact_name3: "",
        contact_email3: "",
        funder1: "",
        grant_number1_1: "",
        grant_number1_2: "",
        grant_number1_3: "",
        funder2: "",
        grant_number2_1: "",
        grant_number2_2: "",
        grant_number2_3: "",
      });

    } catch (error) {
      toast.error("Failed to submit repository", {
        description: error instanceof Error ? error.message : 'An unexpected error occurred'
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  // Helper to get field error
  const getError = (field: string) => {
    return validationErrors ? getFieldError(validationErrors, field) : undefined;
  };

  return (
    <div className="flex flex-row min-h-screen">
      <main className="flex-1 py-10">
        <div className="container">
          <h1 className="text-3xl font-bold mb-8 text-sky-800">Connect With Us</h1>

         
            {/* Contact Information */}
            

            {/* Repository Submission Form */}
            <div className="lg:col-span-2">
              <Card className="border shadow-sm">
                <CardHeader>
                  <CardTitle className="text-sky-700">Add Your Software to Our Catalog</CardTitle>
                  <p className="text-sm text-gray-600">
                    Submit your open source project for inclusion in the UC ORB Showcase.
                    Fields marked with * are required.
                  </p>
                </CardHeader>
                <CardContent>
                  <form onSubmit={handleSubmit} className="space-y-6">
                    {/* Basic Information */}
                    <div className="space-y-4">
                      <h3 className="text-lg font-semibold text-gray-900">Basic Information</h3>

                      <div className="grid gap-4 md:grid-cols-2">
                        <div className="space-y-2">
                          <Label htmlFor="submitter_name">Your Name *</Label>
                          <Input
                            id="submitter_name"
                            value={formData.submitter_name}
                            onChange={(e) => handleInputChange('submitter_name', e.target.value)}
                            placeholder="Enter your full name"
                            className={getError('submitter_name') ? 'border-red-500' : ''}
                          />
                          {getError('submitter_name') && (
                            <p className="text-sm text-red-600">{getError('submitter_name')}</p>
                          )}
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="submitter_email">Email Address *</Label>
                          <Input
                            id="submitter_email"
                            type="email"
                            value={formData.submitter_email}
                            onChange={(e) => handleInputChange('submitter_email', e.target.value)}
                            placeholder="your.email@university.edu"
                            className={getError('submitter_email') ? 'border-red-500' : ''}
                          />
                          {getError('submitter_email') && (
                            <p className="text-sm text-red-600">{getError('submitter_email')}</p>
                          )}
                        </div>
                      </div>

                      <div className="space-y-2">
                        <Label htmlFor="repository_url">Repository URL *</Label>
                        <Input
                          id="repository_url"
                          value={formData.repository_url}
                          onChange={(e) => handleInputChange('repository_url', e.target.value)}
                          placeholder="https://github.com/username/repository"
                          className={getError('repository_url') ? 'border-red-500' : ''}
                        />
                        {getError('repository_url') && (
                          <p className="text-sm text-red-600">{getError('repository_url')}</p>
                        )}
                      </div>

                      <div className="grid gap-4 md:grid-cols-2">
                        <div className="space-y-2">
                          <Label htmlFor="topic_area_ai">Topic Area *</Label>
                          <Select
                            value={formData.topic_area_ai}
                            onValueChange={(value) => handleInputChange('topic_area_ai', value)}
                          >
                            <SelectTrigger className={getError('topic_area_ai') ? 'border-red-500' : ''}>
                              <SelectValue placeholder="Select topic area" />
                            </SelectTrigger>
                            <SelectContent>
                              {topicAreaOptions.map((option) => (
                                <SelectItem key={option.value} value={option.value}>
                                  {option.label}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                          {getError('topic_area_ai') && (
                            <p className="text-sm text-red-600">{getError('topic_area_ai')}</p>
                          )}
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="university">University</Label>
                          <Select
                            value={formData.university || ""}
                            onValueChange={(value) => handleInputChange('university', value)}
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Select your university" />
                            </SelectTrigger>
                            <SelectContent>
                              {universities.map((uni: string) => (
                                <SelectItem key={uni} value={uni}>{uni}</SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        </div>
                      </div>

                      <div className="space-y-2">
                        <Label htmlFor="short_description">Description *</Label>
                        <Textarea
                          id="short_description"
                          value={formData.short_description}
                          onChange={(e) => handleInputChange('short_description', e.target.value)}
                          placeholder="Briefly describe your software, its purpose, and key features..."
                          rows={4}
                          className={getError('short_description') ? 'border-red-500' : ''}
                        />
                        {getError('short_description') && (
                          <p className="text-sm text-red-600">{getError('short_description')}</p>
                        )}
                      </div>
                    </div>

                    <Separator />

                    {/* Additional Contacts */}
                    <div className="space-y-4">
                      <h3 className="text-lg font-semibold text-gray-900">Additional Contacts (Optional)</h3>

                      <div className="grid gap-4 md:grid-cols-2">
                        <div className="space-y-2">
                          <Label htmlFor="contact_name2">Contact Name 2</Label>
                          <Input
                            id="contact_name2"
                            value={formData.contact_name2 || ""}
                            onChange={(e) => handleInputChange('contact_name2', e.target.value)}
                            placeholder="Additional contact name"
                            className={getError('contact_name2') ? 'border-red-500' : ''}
                          />
                          {getError('contact_name2') && (
                            <p className="text-sm text-red-600">{getError('contact_name2')}</p>
                          )}
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="contact_email2">Contact Email 2</Label>
                          <Input
                            id="contact_email2"
                            type="email"
                            value={formData.contact_email2 || ""}
                            onChange={(e) => handleInputChange('contact_email2', e.target.value)}
                            placeholder="Additional contact email"
                            className={getError('contact_email2') ? 'border-red-500' : ''}
                          />
                          {getError('contact_email2') && (
                            <p className="text-sm text-red-600">{getError('contact_email2')}</p>
                          )}
                        </div>
                      </div>

                      <div className="grid gap-4 md:grid-cols-2">
                        <div className="space-y-2">
                          <Label htmlFor="contact_name3">Contact Name 3</Label>
                          <Input
                            id="contact_name3"
                            value={formData.contact_name3 || ""}
                            onChange={(e) => handleInputChange('contact_name3', e.target.value)}
                            placeholder="Third contact name"
                            className={getError('contact_name3') ? 'border-red-500' : ''}
                          />
                          {getError('contact_name3') && (
                            <p className="text-sm text-red-600">{getError('contact_name3')}</p>
                          )}
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="contact_email3">Contact Email 3</Label>
                          <Input
                            id="contact_email3"
                            type="email"
                            value={formData.contact_email3 || ""}
                            onChange={(e) => handleInputChange('contact_email3', e.target.value)}
                            placeholder="Third contact email"
                            className={getError('contact_email3') ? 'border-red-500' : ''}
                          />
                          {getError('contact_email3') && (
                            <p className="text-sm text-red-600">{getError('contact_email3')}</p>
                          )}
                        </div>
                      </div>
                    </div>

                    <Separator />

                    {/* Funding Information */}
                    <div className="space-y-4">
                      <h3 className="text-lg font-semibold text-gray-900">Funding Information (Optional)</h3>

                      <div className="space-y-4">
                        <div className="space-y-2">
                          <Label htmlFor="funder1">Primary Funder</Label>
                          <Input
                            id="funder1"
                            value={formData.funder1 || ""}
                            onChange={(e) => handleInputChange('funder1', e.target.value)}
                            placeholder="e.g., National Science Foundation"
                            className={getError('funder1') ? 'border-red-500' : ''}
                          />
                          {getError('funder1') && (
                            <p className="text-sm text-red-600">{getError('funder1')}</p>
                          )}
                        </div>

                        <div className="grid gap-4 md:grid-cols-3">
                          <div className="space-y-2">
                            <Label htmlFor="grant_number1_1">Grant Number 1</Label>
                            <Input
                              id="grant_number1_1"
                              value={formData.grant_number1_1 || ""}
                              onChange={(e) => handleInputChange('grant_number1_1', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                          <div className="space-y-2">
                            <Label htmlFor="grant_number1_2">Grant Number 2</Label>
                            <Input
                              id="grant_number1_2"
                              value={formData.grant_number1_2 || ""}
                              onChange={(e) => handleInputChange('grant_number1_2', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                          <div className="space-y-2">
                            <Label htmlFor="grant_number1_3">Grant Number 3</Label>
                            <Input
                              id="grant_number1_3"
                              value={formData.grant_number1_3 || ""}
                              onChange={(e) => handleInputChange('grant_number1_3', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                        </div>
                      </div>

                      <div className="space-y-4">
                        <div className="space-y-2">
                          <Label htmlFor="funder2">Secondary Funder</Label>
                          <Input
                            id="funder2"
                            value={formData.funder2 || ""}
                            onChange={(e) => handleInputChange('funder2', e.target.value)}
                            placeholder="e.g., Department of Energy"
                            className={getError('funder2') ? 'border-red-500' : ''}
                          />
                          {getError('funder2') && (
                            <p className="text-sm text-red-600">{getError('funder2')}</p>
                          )}
                        </div>

                        <div className="grid gap-4 md:grid-cols-3">
                          <div className="space-y-2">
                            <Label htmlFor="grant_number2_1">Grant Number 1</Label>
                            <Input
                              id="grant_number2_1"
                              value={formData.grant_number2_1 || ""}
                              onChange={(e) => handleInputChange('grant_number2_1', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                          <div className="space-y-2">
                            <Label htmlFor="grant_number2_2">Grant Number 2</Label>
                            <Input
                              id="grant_number2_2"
                              value={formData.grant_number2_2 || ""}
                              onChange={(e) => handleInputChange('grant_number2_2', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                          <div className="space-y-2">
                            <Label htmlFor="grant_number2_3">Grant Number 3</Label>
                            <Input
                              id="grant_number2_3"
                              value={formData.grant_number2_3 || ""}
                              onChange={(e) => handleInputChange('grant_number2_3', e.target.value)}
                              placeholder="Grant number"
                            />
                          </div>
                        </div>
                      </div>
                    </div>

                    <Separator />

                    <Button
                      type="submit"
                      className="w-full bg-sky-600 hover:bg-sky-700"
                      disabled={isSubmitting}
                    >
                      {isSubmitting ? "Submitting..." : "Submit Repository"}
                    </Button>
                  </form>
                </CardContent>
              </Card>
            </div>
       
        </div>
      </main>
    </div>
  )
}
