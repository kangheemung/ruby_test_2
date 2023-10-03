require 'date'

# 理解度確認：以下のテーブルをRubyのハッシュで定義をしていただきて、3ヶ月以内に誕生日を迎えるユーザーのみをコンソールで表示してください
    
    
  # | id | name | date of birth |
  # | --- | --- | --- |
  # | 1 | Kang | 1991-12-01 |
  # | 2 | Sato | 1989-01-21 |
  # | 3 | Kato | 2000-06-01 |
  # | 4 | Goto | 2004-11-01 |
  users = [{id: 1,name: "kang",birth: "1991/12/01"},
            {id: 2,name: "Sato",birth: "1989/01/21"},
            {id: 3,name: "Kato",birth: "2000/06/01"},
            {id: 4,name: "Goto ",birth: "2004/11/01"} ]


# Get the current date
current_date = Date.today

# Iterate over each user
users.each do |user|
  # Convert the birthdate to a Date object
  birthdate = Date.parse(user[:birth])

  # Calculate the difference in months between the birthdate and current date
  months_difference = (birthdate.year * 12 + birthdate.month) - (current_date.year * 12 + current_date.month)

  # Check if the user's birthday is within the next 3 months
  if months_difference <= 3 && months_difference >= 0
    puts "#{user[:name]} (ID: #{user[:id]}) has a birthday within the next 3 months"
  end
end            