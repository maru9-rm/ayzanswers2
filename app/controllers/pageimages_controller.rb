class PageimagesController < ApplicationController
    before_action :set_textbook
  
    def new
      textbook = Textbook.find(params[:textbook_id])
      @pageimage = textbook.pageimages.build
    end
    


    def create
      @pageimage = @textbook.pageimages.build(pageimage_params)
      if @pageimage.save
        redirect_to @textbook, notice: 'ページ画像が正常に登録されました。'
      else
        flash[:error] = 'ページ画像の登録中にエラーが発生しました。'
        render :new
      end
    end
  
    def destroy
      @pageimage = @textbook.pageimages.find(params[:id])
      @pageimage.destroy
      redirect_to @textbook, notice: 'ページ画像が削除されました。'
    end
  
    private
  
    def set_textbook
      @textbook = Textbook.find(params[:textbook_id])
    end
  
    def pageimage_params
      params.require(:pageimage).permit(:title, :image)
    end
  end

  