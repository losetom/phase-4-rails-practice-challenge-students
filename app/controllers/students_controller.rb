class StudentsController < ApplicationController
    
    # GET /students
    def index
        student = Student.all
        render json: student
    end

    # GET /students/:id
    def show
        render json: @student, serializer: StudentSerializer
    end

    # POST /students
    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    # PATCH /students/:id
    def update
        @student.update!(student_params)
        render json: @student, status: :accetped
    end

    # DELETE /students/:id
    def destroy
        @student.destroy
        head :no_content
    end

    private 

    def set_student
        @student = Student.find(parmas[:id])
    end
end
