require "csv" 
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i
 
if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp

    puts "メモを入力"
    puts "入力後、Ctrl + D で保存"
    memo = STDIN.read

    CSV.open("#{file_name}.csv","w") do |csv|
      csv.puts ["#{memo}"]
    end
 
  elsif memo_type == 2
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
   file_name = gets.chomp

    puts "編集内容を記入してください"
    puts "入力後、Ctrl + D で保存"
    memo = STDIN.read

    CSV.open("#{file_name}.csv","a") do |csv|
      csv.puts ["#{memo}"]
    end


  else
  puts "1か2の数字を入力してください"
  end