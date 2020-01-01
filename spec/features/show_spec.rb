require 'rails_helper'

RSpec.describe "User sees on article" do
  describe "They link from the articles index" do
    it "displays information for one article" do
      article_1 = Article.create!(title: "Article 1", body: "Body 1")
      article_2 = Article.create!(title: "Article 2", body: "Body 2")

      visit articles_path

      click_link article_1.title
# binding.pry
      expect(current_path).to eq(article_path(article_1))
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)

    end
  end
end
