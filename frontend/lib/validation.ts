import { z } from "zod";

// GitHub URL validation helper
const githubUrlRegex = /^https:\/\/github\.com\/[a-zA-Z0-9_.-]+\/[a-zA-Z0-9_.-]+\/?$/;

// Base schema without refinements
const baseRepositorySubmissionSchema = z.object({
    // Required fields
    repository_url: z
        .string()
        .min(1, "Repository URL is required")
        .url("Please enter a valid URL")
        .regex(githubUrlRegex, "Please enter a valid GitHub repository URL (https://github.com/owner/repo)"),

    submitter_name: z
        .string()
        .min(2, "Name must be at least 2 characters")
        .max(100, "Name must be less than 100 characters")
        .regex(/^[a-zA-Z\s'-]+$/, "Name can only contain letters, spaces, hyphens, and apostrophes"),

    submitter_email: z
        .string()
        .min(1, "Email is required")
        .email("Please enter a valid email address"),

    short_description: z
        .string()
        .min(10, "Description must be at least 10 characters")
        .max(500, "Description must be less than 500 characters"),

    topic_area_ai: z
        .string()
        .min(1, "Please select a topic area"),

    // Optional fields
    university: z
        .string()
        .optional(),

    // Additional contact information (optional)
    contact_name2: z
        .string()
        .max(100, "Name must be less than 100 characters")
        .regex(/^[a-zA-Z\s'-]*$/, "Name can only contain letters, spaces, hyphens, and apostrophes")
        .optional()
        .or(z.literal("")),

    contact_email2: z
        .string()
        .email("Please enter a valid email address")
        .optional()
        .or(z.literal("")),

    contact_name3: z
        .string()
        .max(100, "Name must be less than 100 characters")
        .regex(/^[a-zA-Z\s'-]*$/, "Name can only contain letters, spaces, hyphens, and apostrophes")
        .optional()
        .or(z.literal("")),

    contact_email3: z
        .string()
        .email("Please enter a valid email address")
        .optional()
        .or(z.literal("")),

    // Funding information (optional)
    funder1: z
        .string()
        .max(200, "Funder name must be less than 200 characters")
        .optional()
        .or(z.literal("")),

    grant_number1_1: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),

    grant_number1_2: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),

    grant_number1_3: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),

    funder2: z
        .string()
        .max(200, "Funder name must be less than 200 characters")
        .optional()
        .or(z.literal("")),

    grant_number2_1: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),

    grant_number2_2: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),

    grant_number2_3: z
        .string()
        .max(100, "Grant number must be less than 100 characters")
        .optional()
        .or(z.literal("")),
});

export const repositorySubmissionSchema = baseRepositorySubmissionSchema
    .refine((data) => {
        // If contact_email2 is provided, contact_name2 must also be provided
        if (data.contact_email2 && data.contact_email2.trim() !== "") {
            return data.contact_name2 && data.contact_name2.trim() !== "";
        }
        return true;
    }, {
        message: "Contact name is required when email is provided",
        path: ["contact_name2"],
    })
    .refine((data) => {
        // If contact_email3 is provided, contact_name3 must also be provided
        if (data.contact_email3 && data.contact_email3.trim() !== "") {
            return data.contact_name3 && data.contact_name3.trim() !== "";
        }
        return true;
    }, {
        message: "Contact name is required when email is provided",
        path: ["contact_name3"],
    })
    .refine((data) => {
        // If any grant number for funder1 is provided, funder1 name must be provided
        const hasGrantNumber1 = [data.grant_number1_1, data.grant_number1_2, data.grant_number1_3]
            .some(grant => grant && grant.trim() !== "");
        if (hasGrantNumber1) {
            return data.funder1 && data.funder1.trim() !== "";
        }
        return true;
    }, {
        message: "Funder name is required when grant numbers are provided",
        path: ["funder1"],
    })
    .refine((data) => {
        // If any grant number for funder2 is provided, funder2 name must be provided
        const hasGrantNumber2 = [data.grant_number2_1, data.grant_number2_2, data.grant_number2_3]
            .some(grant => grant && grant.trim() !== "");
        if (hasGrantNumber2) {
            return data.funder2 && data.funder2.trim() !== "";
        }
        return true;
    }, {
        message: "Funder name is required when grant numbers are provided",
        path: ["funder2"],
    });

export type RepositorySubmissionData = z.infer<typeof repositorySubmissionSchema>;

// Topic area options based on research domains
export const topicAreaOptions = [
    { value: "arts-and-design", label: "Arts and Design" },
    { value: "engineering-and-technology", label: "Engineering and Technology" },
    { value: "environmental-and-agricultural-sciences", label: "Environmental and Agricultural Sciences" },
    { value: "health-and-medical-sciences", label: "Health and Medical Sciences" },
    { value: "life-sciences", label: "Life Sciences" },
    { value: "mathematical-and-computational-sciences", label: "Mathematical and Computational Sciences" },
] as const;

// Helper function to validate a single field
export const validateField = (field: keyof RepositorySubmissionData, value: any) => {
    try {
        const fieldSchema = baseRepositorySubmissionSchema.shape[field];
        fieldSchema.parse(value);
        return { success: true, error: null };
    } catch (error) {
        if (error instanceof z.ZodError) {
            return { success: false, error: error.errors[0]?.message || "Invalid value" };
        }
        return { success: false, error: "Validation error" };
    }
};

// Helper function to get field error message
export const getFieldError = (errors: z.ZodError, fieldName: string): string | undefined => {
    const fieldError = errors.errors.find(error =>
        error.path.length > 0 && error.path[0] === fieldName
    );
    return fieldError?.message;
};