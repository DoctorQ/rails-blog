require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
	describe "Get index" do
		it "status is 200" do
			get :index
			expect(response.status).to eq(200)
		end
		it "renders the index template" do
	      get :index
	      expect(response).to render_template("index")
	      expect(response.body).to eq ""
	    end
	    it "renders the article/index template" do
	      get "/articles/new"
	      puts response.body
	      expect(response).to render_template("article")
	      expect(response.body).to eq ""
	    end
	end	
end
