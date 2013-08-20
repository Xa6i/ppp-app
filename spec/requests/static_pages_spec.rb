require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
		it "should have the content 'Picon Punch Press, LLC'" do			
			visit '/static_pages/home'
			page.should have_selector('h1', text: 'Picon Punch')
			page.should have_content('Picon Punch Press, LLC')
		end
		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', 
									text: "Picon Punch | Home")
		end
	end

	describe "Help page" do			
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', text: 'Help')
		end
		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', 
									text: "Picon Punch | Help")
		end
	end	

	describe "About page" do			
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', text: 'About Us')
		end
		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', 
									text: "Picon Punch | About Us")
		end
	end	

	describe "Contact page" do			
		it "should have the h1 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', text: 'Contact Us')
		end
		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', 
									text: "Picon Punch | Contact Us")
		end
	end	

end
