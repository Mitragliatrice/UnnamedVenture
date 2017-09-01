class Estimate < ApplicationRecord
  enum currently_listed: [:listed, :unlisted]
  enum status: [:uncontacted, :contacted]

end
