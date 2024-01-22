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
    
    def edit
      @print = Print.find(params[:id])
      @current_image = @print.print_images
    end
    
    def update
      @print = Print.find(params[:id])
    
      # フォームから送信されたパラメーターを取得
      print_params = params.require(:print).permit(:subject, :grade, :title, :notes, print_images: [])
    
      # 画像ファイルがアップロードされた場合のみ画像を更新
      if print_params[print_images: []].present?
        @print.image.attach(print_params[print_images: []])
      end
    
      # その他の属性を更新
      if @print.update(print_params.except(print_images: []))
        redirect_to @print, notice: 'テキストが更新されました。'
      else
        render :edit
      end

    end

    def show
        @print = Print.find(params[:id])
    end

    def destroy
      print = Print.find(params[:id])
      print.destroy!
      redirect_to shredder_index_path, notice: '削除されました。'
    end

    private
  
    def print_params
      params.require(:print).permit(:subject, :grade, :title, :notes, print_images: [])
    end
  end
  

