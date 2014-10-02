require 'spec_helper'

describe "Main" do

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("TrackMyMixes | Contact")
    end
  end

  describe "Home page" do

    it "should have the content 'TrackMyMixes'" do
      visit root_path
      expect(page).to have_content('TrackMyMixes')
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title('TrackMyMixes')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'TrackMyMixes | Help'" do
      visit help_path
      expect(page).to have_title('TrackMyMixes | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About TrackMyMixes'" do
      visit about_path
      expect(page).to have_content('TrackMyMixes')
    end

    it "should have the title 'TrackMyMixes | About Us'" do
      visit about_path
      expect(page).to have_title('TrackMyMixes | About Us')
    end
  end
end
