require "csv"

class ImportCsv
  # CSV のパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      User.create!(
        # row["name"]でCSVデータのname列の情報を指定して読み取ることができる
        name: row["name"],
        # row["age"]でCSVデータのageの列の情報を指定して読み取ることができる
        age: row["age"],
        # row["address"]でCSVデータのaddressの列の情報を指定して読み取ることができる
        address: row["address"]
      )
    end
  end

end