class PrintsController < ApplicationController


    def index
      @prints = Print.all.order(:grade, :subject, :title)
      @prints = @prints.where(subject: params[:subject]) if params[:subject].present?
      @prints = @prints.where(grade: params[:grade]) if params[:grade].present?
    end


    def new
        @print = Print.build
    end

    def create
        @print = Print.build(print_params)
        if @print.save
          redirect_to @print, notice: 'テストが正常に作成されました。'
        else
          flash[:error] = 'ページ画像の登録中にエラーが発生しました。'
          render :new
        end
    end
    

    def show
        @print = Print.find(params[:id])
    end


    private
  
    def print_params
      params.require(:print).permit(:subject, :grade, :title, :notes, print_images: [])
    end
  end
  

