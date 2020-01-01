require 'rails_helper'

RSpec.describe "user sees all articles" do
  describe "they visits /articles" do
    it "displays all articles" do
      article_1 = Article.create!(title: "Article1", body: "Article1 body")
      article_2 = Article.create!({title: "Article2", body: "Article2 body"})

      visit "/articles"

      expect(page).to have_link(article_1.title)
      expect(page).to have_link(article_2.title)
    end
  end
end
