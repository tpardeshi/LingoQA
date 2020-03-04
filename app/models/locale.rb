# frozen_string_literal: true

# The Locale class represents the locale model
class Locale < ApplicationRecord
  # Screenshots references a locale
  has_many :screenshots
  validates :code, :language, presence: true
end
