#---
# Excerpted from "Agile Web Development with Rails 5.1",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails51 for more book information.
#---
class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    @visits_count = if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end
end
