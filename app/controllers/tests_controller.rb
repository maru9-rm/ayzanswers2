class TestsController < ApplicationController

   # def index
   #     @tests = Test.all.order(:category, :school_name, :year)
   # end
      

    def index
        @selected_categories = params[:categories] || [] # 選択された学校区分のリスト
        @selected_schools = params[:schools] || [] # 選択された学校名のリスト
        
        # 選択された学校区分と学校名に基づいてテストをフィルタリング
        @tests = Test.where(category: @selected_categories, school_name: @selected_schools)

        @alltests = Test.all.order(:category, :school_name, :year)

    end

    def new
        @test = Test.build
    end

    def create
        @test = Test.build(test_params)
        if @test.save
          redirect_to @test, notice: 'テストが正常に作成されました。'
        else
          render :new
        end
      end
    

    def show
        @test = Test.find(params[:id])
    end


    private
  
    def test_params
      params.require(:test).permit(:category, :year, :school_name, :notes, ja_images: [],ma_images: [],ss_images: [],sc_images: [],en_images: [])
    end
  end
  
