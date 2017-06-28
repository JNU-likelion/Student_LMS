class HomeController < ApplicationController
  def index
    render layout: false
  end

  def board
  end

  def post
  end
  
  def signup_new
    
    @login = Login.new
    @login.u_id = params[:u_id]
    @login.u_name = params[:u_name]
    @login.u_pwd = params[:u_pwd]
    @login.re_pwd = params[:re_pwd]
    @login.u_tel = params[:u_tel]
    @login.u_job = params[:u_job]
    @login.u_grade = params[:u_grade]
    @login.u_email = params[:u_email]
    @login.save
    

  end
  
  def signup
    
    
    
    
    
    # render layout: false
  end

  def login
    @login = Login.all
    @login.each do |p|    
        if( params[:uname] == p.u_id && params[:psw] == p.u_pwd ) 
              redirect_to "/home/main"
              
        end
    end    
    # render layout: false
  end
  
  def calendar
  end
  
  def mainpage

  end
  
  def main
    render layout: false
  end
  
  def flot
    render layout: false
  end
  
  def morris
    render layout: false
  end
  
  def teacher
    render layout: false
  end
  
  
  # def login_check
  #   # index의 입력값을 받아와서 로그인 체크 
  #   @input_name = params[:@uname]
  #   @input_pw = params[:@psw]
    
  #   @test = Student.find_by s_password: 'test'
  #   puts @test
  #   # if Student.find_by(s_password: 'test')?
  #   #   redirect_to "/home/index"
  #   # else
  #   #   redirect_to "/home/mypage"
  #   # end
  # end

  def check
  end

  # def mypage
  # end

  # def score
  # end
  
  # def change
  #   render layout: false
  # end
  
  # def forgotpw
  #   render layout:false
  # end
  
  # # def user_register
  # #   # singup에서 받은 학생정보를 바탕으로
  # #   # students table에 저장하는 액션
  # #   @student = Student.new
    
  # #   @student.s_ID = params[:ID]
  # #   @student.s_password = params[:psw]
  # #   @student.s_Name = params[:name]
  # #   @student.tel = params[:tel]
  # #   @student.parentEmail = params[:email] 
  # #   @student.grade = params[:grade]
  # #   @student.save
    
  #   # psw와 psw-repeat 비교하는 작업 필요
    
  #   redirect_to "/home/index"
  # end
  
  def admin
    
    @score = Score.new
    @score.t_name = params[:t_name]
    @score.t_class = params[:t_class]
    @score.s_name = params[:s_name]
    @score.s_score = params[:s_score]
    @score.save
    
  end
  
end