require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @contact = @user.contacts.build(firstname: "Nirupa",
    					   lastname: "Boricha",
    					   email: "nirupa.boricha@yahoo.com",
    					   phone: "",
    					   address_line1: "",
    					   address_line2: "",
    					   city: "",
    					   zipcode: "",
    					   country: "",
    					   state: "",
    					   user_id: @user.id)
  end

  test "should be valid" do
    assert @contact.valid?
  end

  test "user id should be present" do
    @contact.user_id = nil
    assert_not @contact.valid?
  end

end
