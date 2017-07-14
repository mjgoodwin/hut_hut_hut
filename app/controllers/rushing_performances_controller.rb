class RushingPerformancesController < ApplicationController
  def index
    @player_name = params[:query] && params[:query][:player_name]
    @performances = RushingPerformance
      .order("#{sort_column} #{sort_direction}")
      .where("player_name LIKE ?", "%#{@player_name}%")

    respond_to do |format|
      format.html
      format.csv { send_data @performances.to_csv, filename: "rushing_performances.csv" }
    end
  end

  private

  def sort_column
    params[:column].presence_in(%w(yards long touchdowns)) || 'yards'
  end
  helper_method :sort_column

  def sort_direction
    params[:direction].presence_in(%w(asc desc)) || 'desc'
  end
  helper_method :sort_direction
end
