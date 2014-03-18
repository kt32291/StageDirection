class Audition < ActiveRecord::Base
  belongs_to :company
  has_many :submissions
  has_many :actors, through: :submissions

  def equity_status
    if self.equity == true
      return "Equity"
    elsif self.equity == false
      return "Non-Equity"
    end
  end

end
