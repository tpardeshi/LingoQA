# frozen_string_literal: true

# The Screenshot class represents the screenshot model
class Screenshot < ApplicationRecord
  # Screenshot reference locale and product_version
  belongs_to :locale
  belongs_to :product_version
  validates :name, presence: true
  has_many_attached :images
end
