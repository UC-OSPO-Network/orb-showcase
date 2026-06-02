"use client"
import Link from "next/link";
import { usePathname } from "next/navigation";
import React, { useState, useRef, useEffect } from "react";

export default function Navbar() {
  const pathname = usePathname();
  const navLinks = [
    { href: "/", label: "Home" },
    { href: "/repositories", label: "Repositories" },
    { href: "/about", label: "About" },
    { href: "/connect", label: "Connect" },
  ];
  const [menuOpen, setMenuOpen] = useState(false);
  const menuRef = useRef<HTMLDivElement>(null);

  // Close menu on outside click
  useEffect(() => {
    if (!menuOpen) return;
    function handleClick(e: MouseEvent) {
      if (menuRef.current && !menuRef.current.contains(e.target as Node)) {
        setMenuOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClick);
    return () => document.removeEventListener("mousedown", handleClick);
  }, [menuOpen]);

  // Close menu on navigation
  useEffect(() => {
    setMenuOpen(false);
  }, [pathname]);

  return (
    <header className="border-b">
      <div className="w-full flex h-16 items-center justify-between px-4 relative">
        <Link href="/" className="flex items-center gap-2">
          <img src="/images/uc-ospo-logo.svg" alt="UC OSPO Network" className="h-8 w-auto" />
          <span className="text-xl font-bold text-sky-700">UC Open Source Showcase</span>
        </Link>
        {/* Desktop nav */}
        <nav className="hidden md:flex gap-6">
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
        {/* Hamburger and mobile menu in a common parent for outside click logic */}
        <div ref={menuRef} className="md:hidden">
          <button
            className="p-2 bg-none border-none shadow-none focus:outline-none focus:ring-2 focus:ring-sky-500"
            aria-label={menuOpen ? "Close navigation menu" : "Open navigation menu"}
            onClick={() => setMenuOpen((open) => !open)}
            type="button"
          >
            {menuOpen ? (
              // Cross (X) icon
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="text-sky-700">
                <line x1="18" y1="6" x2="6" y2="18" />
                <line x1="6" y1="6" x2="18" y2="18" />
              </svg>
            ) : (
              // Hamburger icon
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="text-sky-700">
                <line x1="3" y1="6" x2="21" y2="6" />
                <line x1="3" y1="12" x2="21" y2="12" />
                <line x1="3" y1="18" x2="21" y2="18" />
              </svg>
            )}
          </button>
          {/* Mobile nav menu */}
          {menuOpen && (
            <div
              className="absolute top-16 left-0 right-0 bg-white border-b shadow-md z-50 animate-fadeIn"
            >
              <nav className="flex flex-col items-center gap-4 py-4">
                {navLinks.map(link => (
                  <Link
                    key={link.href}
                    href={link.href}
                    className={
                      "font-medium text-lg w-full text-center px-4 py-2 rounded hover:bg-sky-50" +
                      (pathname === link.href || (link.href !== "/" && pathname.startsWith(link.href))
                        ? " font-bold text-sky-700"
                        : "")
                    }
                    aria-current={pathname === link.href ? "page" : undefined}
                    onClick={() => setMenuOpen(false)}
                  >
                    {link.label}
                  </Link>
                ))}
              </nav>
            </div>
          )}
        </div>
      </div>
    </header>
  );
}
