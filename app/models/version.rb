# frozen_string_literal: true

# The Version class represents the version model
class Version < ApplicationRecord
  # Screenshots references a version
  has_many :screenshots
  # Version reference a product
  belongs_to :product
end
