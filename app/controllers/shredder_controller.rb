class ShredderController < ApplicationController
  def index
    @tests = Test.all
    @prints = Print.all
    @textbooks = Textbook.all
  end

end
