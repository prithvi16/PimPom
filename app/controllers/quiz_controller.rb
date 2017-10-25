class QuizController < ApplicationController
  def new; end

  def create
    name = params[:name]
    @newquiz = Fquiz.new
    @newquiz.name = name
    @newquiz.qid = name + rand(100..999).to_s
    if @newquiz.save
      for i in 1..10 do
        Answer.create(qid: @newquiz.qid, qno: i, scores: [0, 0, 0, 0])
      end
      respond_to do |format|
        format.json do
          render json: {
            qid: @newquiz.qid
          }.to_json
        end
      end
    end
  end

  def show; end

  def submit
    answers = params[:answers]

    result = []

    for j in 0..9 do
      sresult = []
      @a = Answer.find_by qid: params[:id], qno: j + 1
      case answers[j].to_i
      when 1

        @a.scores[0] = @a.scores[0] + 1
        @a.save

      when 2

        @a.scores[1] = @a.scores[1] + 1
        @a.save
      when 3

        @a.scores[2] = @a.scores[2] + 1
        @a.save
      when 4

        @a.scores[3] = @a.scores[3] + 1
        @a.save

    end

    for i in 0..3 do
      
            sresult.push(((@a.scores[i] / @a.scores.sum.to_f) * 100).to_i)
      
          end
  result.push(sresult)

    end

    
    respond_to do |format|
      format.json do
        render json: {
          res: result
        }.to_json
      end
    end
    end
end
