require 'spec_helper'

describe "Main" do

  describe "Home page" do

    it "should have the content 'TrackMyMixes'" do
      visit root_path
      expect(page).to have_content('TrackMyMixes')
    end

    it "should have the title 'TrackMyMixes'" do
      visit root_path
      expect(page).to have_title('TrackMyMixes')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/main/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'TrackMyMixes | Help'" do
      visit '/main/help'
      expect(page).to have_title('TrackMyMixes | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About TrackMyMixes'" do
      visit '/main/about'
      expect(page).to have_content('TrackMyMixes')
    end

    it "should have the title 'TrackMyMixes | About Us'" do
      visit '/main/about'
      expect(page).to have_title('TrackMyMixes | About Us')
    end
  end
end
