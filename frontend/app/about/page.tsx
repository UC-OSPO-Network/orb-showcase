import Link from "next/link"

export default function AboutPage() {
  return (
    <div className="flex flex-col min-h-screen">
      
      <main className="flex-1 py-10">
        <div className="container max-w-4xl">
          <h1 className="text-3xl font-bold mb-8 text-sky-800">About Open Source Hub</h1>

          <div className="prose max-w-none">
            <p className="text-lg">
              Open Source Hub is a discovery tool designed to map and classify open source projects from developers and
              organizations around the world.
            </p>

            <h2 className="text-2xl font-bold mt-8 mb-4 text-sky-700">Our Mission</h2>
            <p>
              Our mission is to make open source software more discoverable and accessible to everyone. We believe that
              open source is a powerful force for innovation and collaboration, and we want to help people find and
              contribute to projects that match their interests and skills.
            </p>

            <h2 className="text-2xl font-bold mt-8 mb-4 text-sky-700">How It Works</h2>
            <p>
              Open Source Hub aggregates data from multiple sources, including GitHub, GitLab, and other code hosting
              platforms. We use advanced algorithms to categorize and tag repositories, making it easier for you to find
              projects that match your interests.
            </p>
            <p>
              Our platform provides powerful search and filtering capabilities, allowing you to discover repositories by
              programming language, topic, organization, and more. We also highlight trending projects and showcase
              repositories that are actively seeking contributors.
            </p>

            <h2 className="text-2xl font-bold mt-8 mb-4 text-sky-700">Get Involved</h2>
            <p>
              Open Source Hub is itself an open source project! We welcome contributions from developers, designers, and
              anyone else who wants to help improve the platform. Check out our GitHub repository to learn more about
              how you can get involved.
            </p>

            <h2 className="text-2xl font-bold mt-8 mb-4 text-sky-700">Contact Us</h2>
            <p>
              If you have any questions, suggestions, or feedback, please don't hesitate to reach out to us. You can
              contact us at{" "}
              <a href="mailto:info@opensourcehub.example" className="text-sky-600 hover:underline">
                info@opensourcehub.example
              </a>
              .
            </p>
          </div>
        </div>
      </main>

    </div>
  )
}
