require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    
    assert_template layout: 'application'
    assert_select 'title', 'My Notes'
    assert_select 'h1', 'My Notes'
    assert_select 'p', 'Welcome to my Notes Site'
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    
    assert_template layout: 'application'
    
    assert_select 'title', 'My Notes'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the following form to get in touch with us'
  end

end
