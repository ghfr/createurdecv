class IndexController < ApplicationController
  def home
  end

  def cv
  end

  def show
  	@name = params[:name]
  	@title = params[:title]
  	@telephone = params[:telephone]
  	@siteweb = params[:siteweb]
  	@presentation = params[:presentation]
  	@experience = params[:experience]
  	@formation = params[:formation]
  	@email = current_user.email
    
    @cv = Cv.new
    @cv.user_id = current_user.id
    @cv.save


  	@personnal = Personnal.new
  	@personnal.cv_id = @cv.id
  	@personnal.name = @name
  	@personnal.title = @title
  	@personnal.telephone = @telephone
  	@personnal.siteweb = @siteweb
  	@personnal.presentation = @presentation
  	@personnal.save

  	@experience2 = Experience.new
  	@experience2.cv_id = @cv.id
  	@experience2.content = @experience
  	@experience2.save

  	@formation2 = Formation.new
  	@formation2.cv_id = @cv.id
  	@formation2.content = @formation
  	@formation2.save
  end

  def profil
    @user = current_user
    @mes_cv = Cv.where(user_id: "#{@user.id}").all
  end 

  def voir_cv
    @cv_id = params[:cv_id]
  end
end
