class Gift < ApplicationRecord
  has_many :primary1_gifts, :class_name => 'Result', :foreign_key => 'primary1_id'
  has_many :primary2_gifts, :class_name => 'Result', :foreign_key => 'primary2_id'
  has_many :primary3_gifts, :class_name => 'Result', :foreign_key => 'primary3_id'
  has_many :secondary1_gifts, :class_name => 'Result', :foreign_key => 'secondary1_id'
  has_many :secondary2_gifts, :class_name => 'Result', :foreign_key => 'secondary2_id'
  has_many :secondary3_gifts, :class_name => 'Result', :foreign_key => 'secondary3_id'
end
