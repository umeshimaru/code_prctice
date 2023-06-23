=begin
  入力値
   ①ベルトコンベアの信号の長さ（数値） ②Aのコンベアの部品の数（数値） ③Bのコンベアの部品の数（数値）
   ④〜⑥は"F" は直進、"R" は右折、"L" は左折を意味する。
  ④信号のスケジュール（）
  ⑤Aのコンベアの1つの商品進む方向性
  ⑥Bのコンベアの1つの商品進む方向性
  
   
   条件
   ①ベルトコンベアの信号が全てなくなった時終了
   

出力結果
①Aのコンベアに残っている部品の数
②Bのコンベアに残っている部品の数


手順
①入力値の用意をする
②信号のスケジュールがなくなるまでループする



=end 

trafic_light_numbers = gets.to_i 
a_parts_number = gets.to_i 
b_parts_number = gets.to_i 

# 信号のスケジュール作成
trafic_lights = []
trafic_light_numbers.times do 
arrorw = gets.to_s
trafic_lights.push(arrorw)
end

# aのpartsの進む方向性
a_arrows = []
a_parts_number.times do
a_arrow = gets.to_s
a_arrows.push(a_arrow)
end

# bのpartsの進む方向性
b_arrows = []
b_parts_number.times do
b_arrow = gets.to_s
b_arrows.push(b_arrow)
end

a_answer = []
b_answer = []
trafic_lights.each do |trafic_arrows| 
    a_arrows.each do |a_arrow |
    b_arrows.each do |b_arrow |
                 if trafic_arrows == a_arrow && b_arrow 
                  
                 if trafic_arrows != a_arrow && b_arrow 
                    a_answer.push(a_arrow)
                    b_answer.push(b_arrow)
                 
                 elsif trafic_arrows == a_arrow || b_arrow 
                
                       if trafic_arrows == a_arrow 
                          b_answer.push(b_arrow)

                       elsif trafic_arrows != a_arrow 
                          a_answer.push(a_arrow)

                       elsif trafic_arrows == b_arrow 
                          a_answer.push(a_arrow)

                       elsif trafic_arrows != b_arrow 
                          b_answer.push(b_arrow)
                       end
                  end
                 end 

                  end 
                  end
               
                  end
                 
                  puts a_answer.length 
                  puts b_answer.length