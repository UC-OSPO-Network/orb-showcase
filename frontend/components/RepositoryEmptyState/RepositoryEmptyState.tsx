import React from "react";

export const RepositoryEmptyState: React.FC = () => (
  <div className="text-center py-12 bg-gray-50 rounded-lg">
    <p className="text-gray-600">No repositories found. Try adjusting your filters.</p>
  </div>
);
