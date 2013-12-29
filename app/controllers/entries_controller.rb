class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_url
    else
      render action: 'new'
    end
  end

  def index
    @entries = Entry.all
  end

  def destroy
    @entry.destroy
    redirect_to entries_url
  end

  def show
  end

  def update

    if @entry.update(entry_params)
      redirect_to entry_path
    else
      render action: 'edit'
    end
    
  end

  def edit
  end


  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :description, :category_id)
  end

end