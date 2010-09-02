require 'test_helper' 

class SubdomainTest < ActionController::IntegrationTest
  test "simple subdomain test" do
    subdomain = "something"
    
    # this test passes using selenium, fails using the default envjs
    #Capybara.current_driver = :selenium
    Capybara.app_host = "http://#{subdomain}.lvh.me:9887"
    visit root_path
    assert current_url.include?(subdomain)
  end
end