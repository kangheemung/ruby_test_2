#あなたは 0 % 〜 100 % 降水確率の数値を得て、その数値から天気を文字列で表示をしようと考えました。

#表示のルールは以下のよう定めました。

#・降水確率が 0 % 以上 30 % 以下ならば "sunny"

#・降水確率が 31 % 以上 70 % 以下ならば "cloudy"

#・降水確率が 71 % 以上ならば "rainy"

#降水確率 n (%) が与えられるので上のルールに従って文字列を出力して下さい。


n = gets.chomp.to_i

if 0 <= n && n <= 100
    case n
    when 0..30
    puts "sunny"
    when 31..70
    puts "cloudy"
    when 71..100
    puts "rainy"
    end
else
    puts "no"
end