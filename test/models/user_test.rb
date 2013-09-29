require "test_helper"

describe User do
  before do
    @user = User.new(email: 'test@email.com', password: 'testing12345')
  end

  it "must be valid" do
    @user.valid?.must_equal true
  end

  it "must create a manager" do
    @user.save
    @user.manager.present?.must_equal true
  end
end

describe "User#manager_name" do
  before do
    @name = "manager"
    @name2 = "manager2"
  end

  it "must set the managers name on create" do
    user = User.new(manager_name: @name, email: "test1@email.com", password: 'testing12345')
    user.save!
    user.manager_name.must_equal @name
  end

  it "must set a managers name on edit" do
    #needed to do this in test to pass email validation.
    user = User.new(manager_name: @name, email: "test2@email.com", password: 'testing12345')
    user.save!
    user.manager_name = @name2
    user.manager_name.must_equal @name2
  end
end
