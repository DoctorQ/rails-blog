require 'rails_helper'

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has none to begin with" do
  	expect(Article.count).to eq 0
  end

  it "has one after adding one" do
  	Article.create
  	expect(Article.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Article.count).to eq 0
  end

  after(:all) { Article.destroy_all }
end
