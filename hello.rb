puts "じゃんけん..."

def attimuite_hoi(result)
  puts "あっち向いて..."
  puts "0(上)1(下)2(左)3(右)"
  face = ["上", "下", "左", "右"]
  face_you = gets.chomp.to_i
  puts "ホイ！"
  puts "あなた: #{face[face_you]}"
  face_cp = rand(4)
  puts "相手: #{face[face_cp]}"

  if face_you == face_cp
    puts "あなたの#{result}です"
  else
    puts "じゃんけん..."
    janken_poi("ポイ！")
  end
end

def janken_poi(hand) 
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  janken = ["グー", "チョキ", "パー"]
  signal_you = gets.chomp.to_i
  puts hand
  if signal_you == 3
    puts "また挑戦してね！"
    return
  end
  puts "あなた: #{janken[signal_you]}を出しました"
  signal_cp = rand(3)
  puts "相手: #{janken[signal_cp]}を出しました"
  
  if signal_you == signal_cp
    puts "あいこで"
    janken_poi("ショ！")
  elsif (signal_you == 0 && signal_cp == 1) || (signal_you == 1 && signal_cp == 3) || (signal_you == 3 && signal_cp == 0)
    puts "あなたは攻め手です"
    attimuite_hoi("勝ち")
  else
    puts "あなたは守り手です"
    attimuite_hoi("負け")
  end
end

janken_poi("ポイ！")


  

