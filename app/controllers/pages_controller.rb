class PagesController < ApplicationController
  def index
    @training_record = current_user.training_records.new
    @training_record.part = 'push_up'
  end

  def show
  end
end
