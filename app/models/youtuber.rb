class Youtuber < ApplicationRecord
  def self.search(search) #self.でクラスメソッドとしている
      if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
        Youtuber.where(['title LIKE ?', "%#{search}%"])
      else
        Youtuber.all #全て表示。
      end
    end
end
