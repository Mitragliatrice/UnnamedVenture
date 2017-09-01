class Estimate < ApplicationRecord
  enum currently_listed: [yes: 0, no: 1]
  enum pool: [yes: 0, no: 1]
  enum spa: [yes: 0, no: 1]

end
