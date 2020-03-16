# frozen_string_literal: true

# The Product class represents the product model
class Product < ApplicationRecord
  # Product_Versions references a Product
  has_many :product_versions
end