class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :lockable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :manager_name

  delegate :name, :to => :manager, :prefix => true, :allow_nil => true
  before_create :create_manager

  has_one :manager, :inverse_of => :user, :autosave => true

  def initialize(attributes)
    @manager_name = attributes.delete(:manager_name)
    super
  end

  def manager_name=(name)
    manager.name = name
    manager.save
  end

  private

  def create_manager
    self.manager = Manager.create(name: @manager_name)
  end

end
