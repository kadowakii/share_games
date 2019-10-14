require 'google/apis/youtube_v3'
namespace :youtube do
 youtube = Google::Apis::YoutubeV3::YouTubeService.new
  youtube.key = ENV['YOUTUBE_DATA_API_KEY']
  desc "トレンド取得"
  task :trending do
    youtube.list_videos("snippet", chart: "mostpopular",region_code: "JP", max_results: 50)
  end

  desc "チャンネル情報取得"
  task :list_channels do
      youtube.list_channels("snippet", id: "UCoFLB_Gw_AoxUuuzKjXrc_Q")
  end
end
