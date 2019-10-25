# frozen_string_literal: true

# The Version class represents the version model
class Version < ApplicationRecord
  has_many :screenshots
  belongs_to :products
end
