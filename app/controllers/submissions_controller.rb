class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to auditions_path, notice: 'Thanks for submitting!' }
        format.json { render action: 'show', status: :created, location: @submission }
      else
        format.html { render action: 'new' }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:actor_id, :audition_id)
  end

end
