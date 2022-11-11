class InstructorsController < ApplicationController

    # GET /instrcutors
    def index
        instructor = Instructor.all 
        render json: instructor
    end

    # GET /instructors/:id
    def show
        render json: @instructor, serializer: InstrutorsWithStudentsSerializer
    end

    # POST /instructors
    def create
        instructor = Instructor.create!(instructor_params)
        render json: instructor, status: :created
    end

    # PATCH /instructor/:id
    def update
        @instructor.update!(instructor_params)
        render json: @instructor, status: :accepted
    end

    # DELETE /instructor/:id
    def destroy
        @instructor.destroy
        head :no_content
    end

    private

    def set_instructor
        @instructor = Instructor.find(parmas[:id])
    end

    def instructor_params
        parmas.permit(:name)
    end
end