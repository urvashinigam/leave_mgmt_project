class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
   :recoverable, :rememberable, :validatable
  #  validates :email, confirmation: true
  #  after_initialize :set_default_role, :if => :new_record?
  #  def set_default_role
  #   self.role ||= :user
  #  end
   
  has_many :leave, class_name: 'Leave', dependent: :destroy 
  # validates :name, acceptance: { message: 'must be abided' }
  # validates :name, acceptance: false
  # validates :mobile, numericality: { only_integer: true }
  
  # validates :login, :email, presence: true 
  # scope :find_email, -> { where("email =?", 'urvashi121@shriffle.com')}

  # before_create do
  #   byebug
  #   self.name = login.capitalize if name.blank?
  # end

  def hr?
    type == 'Hr'
  end
  def employee?
    type == 'Employee'
  end
end
