require 'google/apis/youtube_v3'
namespace :youtube do
    desc "動画収集のため"
    task trending: :environment do
        youtube = Google::Apis::YoutubeV3::YouTubeService.new
        youtube.key = ENV['YOUTUBE_DATA_API_KEY']
        p youtube.list_searches("id,snippet", type: "video", q: "ヒカキン", max_results: 10)
    end
end
