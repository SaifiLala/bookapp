
require 'rails_helper'
RSpec.describe BooksController, type: :controller do
    before do
      author = Author.create!(first_name: "Kim",last_name: "David",email:"kim@gmail.com",password: "123456",password_confirmation: "123456")
      @book = author.books.create!(title: "Friends", description: "It is a comedy book")
    end
    it "renders the index template" do
      get :index, params: { format: :json}
      expect(JSON.parse(response.body)[0]['title']).to eq(@book.title)
    end
    it "Wrong Index" do
      get :index, params: { format: :json}
      expect(JSON.parse(response.body)[0]['title']).not_to eq("Different String")
    end
  end