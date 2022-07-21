require 'rails_helper'

RSpec.describe "Api::V1::Books", type: :request do
    before do
      author = Author.create!(first_name: "Kim",last_name: "David",email:"kim@gmail.com",password: "123456",password_confirmation: "123456")
      @book = author.books.create!(title: "Friends", description: "It is a comedy book")
    end

    describe "GET /index" do
        # binding.pry
        let(:result){
          [
            {
              "id" => @book.id,
            "title" => @book.title,
            "description" => @book.description,
            "created_at" => @book.created_at.to_s,
            "author_name" => @book.author.first_name
            }
          ]
        }
        it "Shows all books" do
            get "/api/v1/books"
          expect(JSON.parse(response.body)).to eq(result)
      end
    end

  end