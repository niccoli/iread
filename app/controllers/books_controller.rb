class BooksController < ApplicationController
  before_filter :authorize, only: [:create] #ensures that a user is logged in before they create a new book. See ApplicationController authorize method for complete clarification.



end