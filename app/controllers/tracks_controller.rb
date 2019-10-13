class TracksController < ApplicationController

  before_action :set_sort_and_order
  before_action :set_search_term, only: [:search_name, :search_bpm, :search_key_name]

  def index
    @tracks = Track.all.order(@order_by)
  end

  def search_name
    @tracks = Track.where('name LIKE ?', @term)
    @name_term = params[:term]
    @key_term = ''
    @bpm_term = ''
    render :index
  end

  def search_bpm
    @tracks = Track.where('bpm LIKE ?', @term)
    @name_term = ''
    @key_term = ''
    @bpm_term = params[:term]
    render :index
  end

  def search_key_name
    @tracks = Track.where('key_name LIKE ?', @term)
    @name_term = ''
    @key_term = params[:term]
    @bpm_term = ''
    render :index
  end

  private

  def set_search_term
    @term = "%#{ params[:term] }%"
  end

  def set_sort_and_order
    @order = params[:order]
    @sort = params[:sort] || 'created_at'
    case @order
    when 'ASC'
      @order = 'DESC'
    else
      @order = 'ASC'
    end
    @order_by = "#{ @sort} #{ @order }"
  end
end
