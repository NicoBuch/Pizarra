class Entry < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  def down
    logical_down = false;
  end
end
