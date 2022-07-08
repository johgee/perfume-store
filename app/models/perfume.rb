require "csv"

class Perfume < ApplicationRecord
  acts_as_paranoid # allows you to do soft delete

  def self.to_csv # self. = call this method from the controller. adding this to our model and access from anyhere like controller
    attributes = %w{image brand name price}

    CSV.generate(headers: true) do |csv| # generate is from csv library. headeres:true = first line of CSV is going to be th header
      csv << attributes # setting the header

      all.find_each do |perfume| # find_each = grabs all the perfumes that are not soft deleted
        csv << attributes.map { |attr| perfume.send(attr) }
      end
    end
  end
end
