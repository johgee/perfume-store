require "csv"

class Perfume < ApplicationRecord
  acts_as_paranoid

  def self.to_csv
    attributes = %w{image brand name price}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |perfume|
        csv << attributes.map { |attr| perfume.send(attr) }
      end
    end
  end
end
