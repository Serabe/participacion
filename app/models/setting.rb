class Setting < ActiveRecord::Base
  validates :key, presence: true, uniqueness: true

  default_scope { order(id: :asc) }

  def self.value_for(key)
    where(key: key).pluck(:value).first
  end
end