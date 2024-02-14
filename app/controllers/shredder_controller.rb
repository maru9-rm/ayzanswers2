class ShredderController < ApplicationController
  def index
    @tests = Test.all.order(:category, :school_name, :year)
    @prints = Print.all.order(:grade, :subject, :title)
    @textbooks = Textbook.all.order(:grade, :subject, :texttitle, :notes)
  end

end
