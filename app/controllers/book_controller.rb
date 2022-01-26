class BookController < ApplicationController
    before_action :authenticate_user!
    include Wor::Paginate

    def index
        @book = Book.all
        render_paginated @book, each_serializer: BookSerializer
    end

    def show
        render json: Book.find(params[:id])
    end
end
