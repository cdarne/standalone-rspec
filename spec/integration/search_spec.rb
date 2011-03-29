require "spec_helper"

feature "Search for RSpec" do

  scenario "should find the RSpec homepage" do
    visit "/"
    fill_in "q", :with => "RSpec"
    click_button "Recherche Google"

    page.should have_content("RSpec.info")
  end

end
