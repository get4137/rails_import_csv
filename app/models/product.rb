# frozen_string_literal: true

class Product < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      company_hash = Product.new
      company_hash.name = row[0]
      company_hash.price = row[1]
      company_hash.save
    end
  end
end
