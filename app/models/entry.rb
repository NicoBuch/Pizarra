class Entry < ActiveRecord::Base
  belongs_to :user

  validates :transaction_date, date: { after: Proc.new { Date.today }, message: 'Fecha Inválida' }

  validates :user, presence: true

  def down
    update_attributes!(logical_down: false);
  end

end
