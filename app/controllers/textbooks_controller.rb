class TextbooksController < ApplicationController

    def index
      @textbooks = Textbook.all.order(:grade, :subject, :texttitle)
      @textbooks = @textbooks.where(grade: params[:grade]) if params[:grade].present?
      @textbooks = @textbooks.where(subject: params[:subject]) if params[:subject].present?
      @textbooks = @textbooks.where(texttitle: params[:texttitle]) if params[:texttitle].present?

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
        flash[:error] = 'ページ画像の登録中にエラーが発生しました。'
        render :new
      end
     end

     def edit
      @textbook = Textbook.find(params[:id])
    end

    def update
      @textbook = Textbook.find(params[:id])
      if @textbook.update(textbook_params)
        redirect_to @textbook, notice: '編集が完了しました。'
      else
        render :edit
      end
    end

    def destroy
      textbook = Textbook.find(params[:id])
      textbook.destroy!
      redirect_to shredder_index_path, notice: '削除されました。'
    end

    private

    def textbook_params
      params.require(:textbook).permit(:subject, :grade, :texttitle, :notes)
    end

end
