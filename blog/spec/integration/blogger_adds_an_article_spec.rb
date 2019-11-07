require 'rails_helper.rb'

feature "Blogger adds and article" do 
    scenario "Blogger successfully navigates to the new articles page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article") #the "New article" from the slides is "New "Article" in my program.
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end    
end        