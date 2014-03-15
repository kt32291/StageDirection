class Associate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :company

  def auditions
    company_id = self.company_id
    auditions = Audition.where(company_id: company_id)
    return auditions
  end

end
