class Court < ApplicationRecord
  include TranslateEnum
  enum status: { available: 0, unavailable: 1 }
  translate_enum :status
end




