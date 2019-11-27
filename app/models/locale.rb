# frozen_string_literal: true

# The Locale class represents the locale model
class Locale < ApplicationRecord
  # Screenshots references a locale
  has_many :screenshots
  # Locale reference a product
  belongs_to :product
end
