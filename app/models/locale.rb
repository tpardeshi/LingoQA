# frozen_string_literal: true

# The Locale class represents the locale model
class Locale < ApplicationRecord
  has_many :screenshots
  belongs_to :products
end
