class Result < ApplicationRecord
  belongs_to :primary1, :class_name => 'Gift'
  belongs_to :primary2, :class_name => 'Gift'
  belongs_to :primary3, :class_name => 'Gift'
  belongs_to :secondary1, :class_name => 'Gift'
  belongs_to :secondary2, :class_name => 'Gift'
  belongs_to :secondary3, :class_name => 'Gift'
end
