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
    channels = [
        'UC3swo6utVXOSYwxazwoKWBQ', #nanakoななこ
        'UCM_Ll26nXOkscq0YSpBmgyg', #ほしのこCH
        'UCLO1yCo0gDgpXhyM0fXfXXA', #nanachannel
        'UCIL9Qtyh0t8IvbE2olfLxpg', #紫帆ちゃんねる
        'UC8jmf0qmbAI5zwB3RtwZT8w', #yurika mul
        'UC40D9LjaiWhtmEiTDQTDwww', #Yupi Channel
        'UCYQxbbJron_WOJwUJIhCGjg', #ねぎま
        'UCCGCOcj0usnE3qIRVW3093w', #佐藤 あやみ / Ayami Sato
        'UC9bBLlVFMa-65C2YEcvz6pg', #mizuki channel
        'UCyud5ThlDFDrR98ImBFZD0w', #田中日菜/TANAKA HINA
        'UCD_-oN3OfgGmajXMest2iFQ', #トウニュウチャン
        'UCDI82jqw92atkpLkMXbhXNQ', #Renachiれなち
        'UCJDab2cxNSMrphtB5nRgGpA', #丸山クルミ
        'UCpul-EHJQygjUrpcms6jjpQ', #ながたさき
        'UCRqjwmtJDflrggWsICObbnw', #areshannあれしゃん
        'UC27RnbFszF94F-RYm5nhbCw', #マリリーナ MARIRINA24
        'UCzeqhyvmoQQ2dVHdwO_HClw', #かなチャンネルkanachannel
        'UCQeFbIDnaIWxec2fBePARow', #きぃ
        'UCNadImJ0tGlNC2mPiS-pIdQ', #伊純雛/Izumi Hina
        'UCACc1sEnfd_gxuALOI2oZAw', #AbbyK Channel
        'UCg_WxpB66UTeS9svc-L7Aog', #かぶとむしの木
        'UCA8KXanW8BhpZW-ovlKnDnQ', #あみにーちゃんねる
        'UCtWMA_n-sKZUoAlMgtqP6pw', #大屋亜梨須/Oya Alice
    ]
    channels.each do |channel_id|
      snippet = youtube.list_channels("snippet", id: channel_id).items.first.snippet
      channel_id = youtube.list_channels("snippet", id: channel_id).items.first.id
      Youtuber.create!(
      title: snippet.title,
      channel_id: channel_id,
      # description: snippet.description,
      thumbnail_url: snippet.thumbnails.high.url
      )
    end
  end
end
