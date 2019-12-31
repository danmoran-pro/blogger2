require 'rails_helper'

RSpec.decribe "user sees all articles" do
  describe "they visits /articles" do
    it "displays all articles" do
      article_1 = Article.new({title: "Article1 title", body: "Article1 body"})
      article_2 = Article.new({title: "Article2 title", body: "Article2 body"})

      visit "/articles"

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
      expect(page).to have_content(article_2.title)
      expect(page).to have_content(article_2.body)

    end
  end
end
