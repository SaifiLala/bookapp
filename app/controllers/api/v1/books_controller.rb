module Api
    module V1
        class BooksController < ApplicationController 
            
            def index
                books = Book.all
                render json: books, status: 200
            end
            def author_books
                author= Author.find_by_id(params[:id])
                books= author.books
                render json: books, except: :image
            end
            def createnewbook
                author= Author.find_by_id(params[:id])
                book = author.books.create(title: params[:title], description: params[:description])
                render json: book, except: :image
            end
            
        end
    end
end