# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding Question 1'
Question.create(question_number: 1,
                 question:'What is the supreme law of the land?',
                 answer: 'the Constitution',
                 question_vn: 'Luật cao nhất của quốc gia là gì?',
                 answer_vn: 'Hiến Pháp')

audio = File.open(Rails.root.join('lib', 'seeds', 'question_1.mp3'), 'rb').read


puts 'Seeding Questions Audio 1'
# QuestionAudio.create(question_number: 1, question_audio: audio)

QuestionAudio.create(question_number: 1)


####################################################################################

puts 'Seeding Question 2'
Question.create(question_number: 2,
                 question:'What does the Constitution do?',
                 answer: '- sets up the government\n - defines the government\n - protects basic rights of Americans\n',
                 question_vn: 'Hiến Pháp có mục đích gì?',
                 answer_vn: '- thiết lập chánh phủ\n - mô tả tổ chức chánh phủ\n - bảo vệ các quyền căn bản của người dân Hoa Kỳ')

audio = File.open(Rails.root.join('lib', 'seeds', 'question_2.mp3'), 'rb').read

puts 'Seeding Questions Audio 2'
# QuestionAudio.create(question_number: 2, question_audio: audio)

QuestionAudio.create(question_number: 2)

####################################################################################

puts 'Seeding Question 3'
Question.create(question_number: 3,
                 question:'The idea of self-government is in the first three words of the Constitution. What are these words?',
                 answer: 'We the People',
                 question_vn: 'Ý tưởng tự quản trị nằm trong ba chữ đầu tiên của Hiến Pháp. Các chữ này là những chữ nào?',
                 answer_vn: 'Chúng tôi người dân (We the People)')

audio = File.open(Rails.root.join('lib', 'seeds', 'question_2.mp3'), 'rb').read

puts 'Seeding Questions Audio 3'
# QuestionAudio.create(question_number: 3, question_audio: audio)

QuestionAudio.create(question_number: 3)

####################################################################################

puts 'Seeding Question 4'
Question.create(question_number: 4,
                 question:'What is an amendment?',
                 answer: '- a change (to the Constitution)\n - an addition (to the Constitution)\n',
                 question_vn: 'Tu chính án là gì?',
                 answer_vn: '- một sự thay đổi (trong Hiến Pháp)\n - một sự thêm (vào Hiến Pháp)\n')

audio = File.open(Rails.root.join('lib', 'seeds', 'question_2.mp3'), 'rb').read

puts 'Seeding Questions Audio 4'
# QuestionAudio.create(question_number: 4, question_audio: audio)

QuestionAudio.create(question_number: 4)

####################################################################################