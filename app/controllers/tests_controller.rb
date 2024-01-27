class TestsController < ApplicationController

   # def index
   #     @tests = Test.all.order(:category, :school_name, :year)
   # end

    def index
        @tests = Test.all.order(:category, :school_name, :year)
        @tests = @tests.where(category: params[:category]) if params[:category].present?
        @tests = @tests.where(school_name: params[:school_name]) if params[:school_name].present?
    end

    def new
        @test = Test.build
    end

    def create
        @test = Test.build(test_params)
        if @test.save
          redirect_to @test, notice: 'テストが正常に作成されました。'
        else
          flash[:error] = 'ページ画像の登録中にエラーが発生しました。'
          render :new
        end
    end

    def show
        @test = Test.find(params[:id])
    end

    def edit
      @test = Test.find(params[:id])
    end

    def update
      @test = Test.find(params[:id])
      if @test.update(test_params)
        redirect_to @test, notice: '編集が完了しました。'
      else
        render :edit
      end
    end

    def destroy
      test = Test.find(params[:id])
      test.destroy!
      redirect_to shredder_index_path, notice: '削除されました。'
    end

    private

    def test_params
      params.require(:test).permit(:category, :year, :school_name, :notes, ja_images: [],ma_images: [],ss_images: [],sc_images: [],en_images: [])
    end
  end
