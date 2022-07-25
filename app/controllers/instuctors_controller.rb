class InstuctorsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index 
        render json: Instuctor.all
    end

    def show 
        instructor = Instuctor.find_by(id: params[:id])
        render json: instructor
    end

    def create 
        instructor = Instuctor.create!(instructor_params)
        render json: instructor, status: :created
    end

    def update 
        instructor = Instuctor.find_by(id: params[:id])
        instructor.update(instructor_params)
        render json: instructor
    end

    def destroy
        instructor = Instuctor.find_by(id: params[:id])
        instructor.destroy
        head :no_content
    end


    private 

    # use in CREATE, UPDATE
    def instructor_params 
        params.permit(:name)
    end

    def render_not_found_response
        render json: {error: "Instructor not found"}, status: :not_found
    end

end
