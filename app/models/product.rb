# frozen_string_literal: true

# The Product class represents the product model
class Product < ApplicationRecord
  # Versions and locales references a Product
  has_many :versions
end
