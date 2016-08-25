require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
  	print articles(:one).title
    assert true
  end
  test "should not save article without title" do
  	article = Article.new
  	assert_not article.save, "Saved the article without a title"
  end
  test "report error" do
  	some_var
  	assert true
  end
end
