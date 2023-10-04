require 'date'

# 理解度確認：以下のテーブルをRubyのハッシュで定義をしていただきて、3ヶ月以内に誕生日を迎えるユーザーのみをコンソールで表示してください
    
    
  # | id | name | date of birth |
  # | --- | --- | --- |
  # | 1 | Kang | 1991-12-01 |
  # | 2 | Sato | 1989-01-21 |
  # | 3 | Kato | 2000-06-01 |
  # | 4 | Goto | 2004-11-01 |


users = [
  { id: 1, name: "kang", birthday: "1991-12-01" },
  { id: 2, name: "Sato", birthday: "1989-01-21" },
  { id: 3, name: "Kato", birthday: "2000-06-01" },
  { id: 4, name: "Goto ", birthday:"2004-11-01" }
]

# Iterate over each user
users.each do |user|
  birthday = Date.parse(user[:birthday])
  today = Date.today
  current_year_of_birthday = Date.new(today.year, birthday.month, birthday.day)
  day_until_birthday = (current_year_of_birthday - today).to_i

  if day_until_birthday.between?(0, 90)
    puts user[:name]
  end
end
