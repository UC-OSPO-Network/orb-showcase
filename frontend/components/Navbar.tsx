"use client"
import Link from "next/link";
import { usePathname } from "next/navigation";

export default function Navbar() {
    const pathname = usePathname();
  const navLinks = [
    { href: "/", label: "Home" },
    { href: "/repositories", label: "Repositories" },
    { href: "/about", label: "About" },
    { href: "/connect", label: "Connect" },
  ];
  return (
    <header className="border-b">
      <div className="w-full flex h-16 items-center justify-between px-4">
        <Link href="/" className="flex items-center gap-2">
          <img src="/images/uc-ospo-logo.svg" alt="UC OSPO Network" className="h-8 w-auto" />
          <span className="text-xl font-bold text-sky-700">UC ORB</span>
        </Link>
        <nav className="flex gap-6">
          {navLinks.map(link => (
            <Link
              key={link.href}
              href={link.href}
              className={
                "font-medium" +
                (pathname === link.href || (link.href !== "/" && pathname.startsWith(link.href))
                  ? " font-bold text-sky-700"
                  : "")
              }
              aria-current={pathname === link.href ? "page" : undefined}
            >
              {link.label}
            </Link>
          ))}
        </nav>
      </div>
    </header>
  );
}
