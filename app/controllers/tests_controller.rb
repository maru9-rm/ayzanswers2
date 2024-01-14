class TestsController < ApplicationController

    def index
        @tests = Test.all.order(:category, :school_name, :year)
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
  
