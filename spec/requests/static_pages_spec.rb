require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Second Project'" do
      visit '/static_pages/home'
      expect(page).to have_content('Second Project')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("This is our Second Project")
    end
    
    it "should not have a custom page title" do
          visit '/static_pages/home'
          expect(page).not_to have_title('| Home')
        end
    
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('This is About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("This is our Second Project| About Us")
    end
  end
  
  describe "Blog page" do

    it "should have the content 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_content('Blog')
    end
    it "should have the right title" do
      visit '/static_pages/blog'
      expect(page).to have_title("This is our Second Project| Blog")
    end
    
  end
  describe "FAQ page" do

    it "should have the content 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_content('FAQ')
    end
    it "should have the right title" do
      visit '/static_pages/faq'
      expect(page).to have_title("This is our Second Project| FAQ")
    end
  end
  
  
end