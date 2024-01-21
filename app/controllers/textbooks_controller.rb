class TextbooksController < ApplicationController

    def index
        @textbooks = Textbook.all
    end


    def show
        @textbook = Textbook.find(params[:id])
    end

    def new
        @textbook = Textbook.build
    end
      
     def create
        @textbook = Textbook.build(textbook_params)
        if @textbook.save
          redirect_to @textbook, notice: 'テキストが正常に作成されました。'
        else
          render :new
        end
     end
      
      private
      
      def textbook_params
        params.require(:textbook).permit(:subject, :grade, :texttitle, :notes)
      end

end