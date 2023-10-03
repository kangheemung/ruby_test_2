## **D143:制動距離の計算**

#あなたはある車を購入しました。あらかじめ入念に自動車の特性を把握しておきたいあなたは、ある速度で進行している時にブレーキをかけてから停止するまでに何メートル進むか調べることにしました。この距離を制動距離と言います。

#制動距離は、摩擦がない場合を考えると車の重さを m, ブレーキをかけ始めたときの速度を v, ブレーキの強さを f としたとき、以下のように表せます。



#以上の値が与えられるので、制動距離 L を求めるプログラムを作成してください。ただし、小数点以下は切り捨てて出力してください。

#たとえば、入力例 1 では 100 [Kg] の車が 40 [m/s] で進行しており、2000 [N] の力でブレーキをかけるので、L = 100 * 40^2 / (2 * 2000) = 40 より 40 を出力します。

#条件すべてのテストケースにおいて、以下の条件をみたします。
# ・1 ≦ M ≦ 1,000
# ・1 ≦ V ≦ 100
# ・1 ≦ F ≦ 10,000

M,V,F=gets.chomp.split.map(&:to_i)

if (1..1000).include?(M)&&(1..100).include?(V)&&(1..10000).include?(F)
    L = (M * V**2) / (2 * F)
    puts L.floor
else
    puts"no"
end