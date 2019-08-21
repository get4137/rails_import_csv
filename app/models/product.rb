# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


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
