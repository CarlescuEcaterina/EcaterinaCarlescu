class Experience < ActiveRecord::Base
  attr_accessible :description, :end_time, :id_exp, :job_title, :start_time

 has_one :company, :foreign_key => "exp_id"
 has_one :CV
end
