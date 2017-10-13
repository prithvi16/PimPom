class QuizController < ApplicationController
  def new
  end

  def create
  name = params[:name]
  @newquiz= Fquiz.new
  @newquiz.name = name
  @newquiz.qid= name + rand(100..9999).to_s
   if  @newquiz.save
    respond_to do |format|
      format.json do
        render json: {
          qid: @newquiz.qid
        }.to_json
      end 
    end
  else
  
  end

  end


def show

end

end
