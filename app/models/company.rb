class Company < ActiveRecord::Base
  attr_accessible :adress, :description, :id_company, :year_founded

  belongs_to :experience
end
