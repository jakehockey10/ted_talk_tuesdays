class TedTalksController < ApplicationController

  def create
    ted_talk = TedTalk.new(ted_talk_params)
    if ted_talk.save
      flash[:success] = 'Ted Talk added to wheel!'
    else
      flash[:danger] = 'Uh oh!  Something you did was not something this website expected :('
    end
    redirect_to ted_talks_choose_path
  end

  def destroy
    ted_talk = TedTalk.find(params[:id])
    redirect_to ted_talk.url
  end

  def choose
    @ted = TedApi::Client.new(api_key: 'j79qn8wkwmc554g328k43pa6')
    count = 0
    rand_talks = TedTalk.all.order('RANDOM()')
    talks = []
    rand_talks.each do |talk|
      talks << {name: talk.name, rand_id: count}
      count = count + 1
    end
    @ted_talks = talks
  end

  private

    def ted_talk_params
      params.require(:ted_talk).permit(:name, :url)
    end
end
