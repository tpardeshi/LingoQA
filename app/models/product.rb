# frozen_string_literal: true

# The Product class represents the product model
class Product < ApplicationRecord
  has_many :versions
  has_many :locales
end
