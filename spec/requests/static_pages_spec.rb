require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the <h1> 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the correct <title>" do	
			visit '/static_pages/home'
			page.should have_selector("title:contains('Home | Sample App')")
		end
	end

	describe "Help page" do

		it "should have the <h1> 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the correct <title>" do	
			visit '/static_pages/help'
			page.should have_selector("title:contains('Help | Sample App')")
		end

	end

	describe "About" do

		it "should have the <h1> 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "should have the correct <title>" do
			visit '/static_pages/about'
			page.should have_selector("title:contains('About | Sample App')")
		end

	end

	describe "Contact" do

		it "should have the <h1> 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the correct <title>" do
			visit '/static_pages/contact'
			page.should have_selector("title:contains('Contact | Sample App')")
		end

	end

end
 