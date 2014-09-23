class Entry < ActiveRecord::Base
  belongs_to :user

  validates :transaction_date, date: { after: Proc.new { Date.today }, message: 'Fecha Inválida' }

  validates :user, presence: true

end
