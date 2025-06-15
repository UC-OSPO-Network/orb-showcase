import React from "react";

export interface RepositoryErrorStateProps {
  error: any;
  onRetry?: () => void;
  children?: React.ReactNode;
}

export const RepositoryErrorState: React.FC<RepositoryErrorStateProps> = ({ error, onRetry, children }) => (
  <div className="bg-red-50 p-4 rounded-md text-center">
    <p className="text-red-800 mb-2">{typeof error === "string" ? error : error?.message ?? String(error)}</p>
    {onRetry && (
      <button className="text-sky-700 underline mb-2" onClick={() => onRetry()}>
        Retry
      </button>
    )}
    {children}
  </div>
);
