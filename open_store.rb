=begin
①入力値
N 出店数 M 何ヶ月運営するか
A =建築費用
B＝人件費
C＝１杯あたりの利益
入力値最終行の末尾に改行が 1 つ入ります
入力方法
input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  print "hello = #{ s[0] } , world = #{ s[1] }\n"



  処理 
  費用 = 建築費用＋人件費 ✖️ M 
  売上の計算 ラーメンの杯数 ✖️利益 
  利益 < 費用 の場合出力



  出力
  利益が０円より下回った店舗の数を書く
end

=end 

# 出点数と何ヶ月運営するか
open_stores = gets.to_i
total_months = gets.to_i

# 費用とラーメン１杯あたりの利益
build_money = gets.to_i
labor_in_a_month = gets.to_i
profit_per_ramen = gets.to_i

ramen_cup_numbers = []

open_stores.times do 
  ramen_cup_number = gets.to_i
  ramen_cup_numbers.push(ramen_cup_number)
end



# 費用の計算
total_cost  = build_money + labor_in_a_month * total_months 

closed_shop_count = 0 
# 売上の計算
ramen_cup_numbers.each do |ramen_cup_number|
  total_sales = ramen_cup_number * profit_per_ramen
      if total_sales < total_cost
        closed_shop_count+=1
     
      end

   end

   puts "#{closed_shop_count}\n"




  