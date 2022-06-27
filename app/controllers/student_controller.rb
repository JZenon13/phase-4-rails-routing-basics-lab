class StudentController < ApplicationController

    def index
        students = Student.all 
        render json: students 
    end
    
    def students
        students = Student.all 
        render json: students 
    end

    def grades
        students = Student.all.order(:grade).reverse
        render json: students
    end
    
    def highest_grade
        students = Student.all.order(:grade)[-1]
        render json: students 
    end
end
