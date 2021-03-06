require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }
		it { should have_selector('h1', text: 'Picon Punch') }
		it { should have_content('Picon Punch Press, LLC') }
		it { should have_selector('title', text: full_title('')) }
		it { should_not have_selector('title', text: '| Home') }
	end

	describe "Print Products page" do			
		before { visit products_path }
		it { should have_selector('h1', text: 'Print Products') }
		it { should have_selector('title', text: full_title('Products')) }
	end	

	describe "Publications page" do			
		before { visit publications_path }
		it { should have_selector('h1', text: 'Publications') }
		it { should have_selector('title', text: full_title('Publications')) }
	end	

	describe "About page" do			
		before { visit about_path }
		it { should have_selector('h1', text: 'About Us') }
		it { should have_selector('title', text: full_title('About Us')) }
	end	

	describe "Contact page" do			
		before { visit contact_path }
		it { should have_selector('h1', text: 'Contact Us') }
		it { should have_selector('title', text: full_title('Contact Us')) }
	end	

	it "should have correct links on the layout" do
		visit root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About Us')
		click_link "Products"
		page.should have_selector 'title', text: full_title('Products')
		click_link "Publications"
		page.should have_selector 'title', text: full_title('Publications')
		click_link "Contact Us"
		page.should have_selector 'title', text: full_title('Contact Us')
		click_link "Picon Punch Press, LLC"
		page.should have_selector 'h1', text: 'Picon Punch Press'
		# click_link "Sign up now!"
		# page.should have_selector 'title', text: full_title('Sign Up')

	end

end
