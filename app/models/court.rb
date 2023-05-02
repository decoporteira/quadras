class Court < ApplicationRecord
  belongs_to :court_type
  include TranslateEnum
  enum status: { available: 0, unavailable: 1 }
  translate_enum :status
end




