class Result < ApplicationRecord
  belongs_to :primary1, :class_name => 'Gift'
  belongs_to :primary2, :class_name => 'Gift'
  belongs_to :primary3, :class_name => 'Gift'
  belongs_to :secondary1, :class_name => 'Gift'
  belongs_to :secondary2, :class_name => 'Gift'
  belongs_to :secondary3, :class_name => 'Gift'

  def as_json(options={})
    super(include: [:primary1, :primary2, :primary3, :secondary1, :secondary2, :secondary3],
      except: [:primary1_id, :primary2_id, :primary3_id, :secondary1_id, :secondary2_id, :secondary3_id])
  end
end
