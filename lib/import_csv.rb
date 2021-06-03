require "csv"

class ImportCsv
  # CSV のパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    # インポートするデータを格納するための空配列
    list = []
    # CSV ファイルからインポートしたデータを格納
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.user_data
    list = import('db/csv_data/user_data.csv')
    puts "インポート処理を開始"
    User.create!(list)
    puts "インポート完了"
    p list
  end

end