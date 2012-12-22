class Education < ActiveRecord::Base
  attr_accessible :activites, :degree, :end_time, :id_education, :name, :start_time
 
 has_one :CV
end
