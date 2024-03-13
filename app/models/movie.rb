# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :actors
  has_many :countries
  has_many :crews
  has_many :genres
  has_many :languages
  has_many :releases
  has_many :studios
  has_many :themes
end
