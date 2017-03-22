require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(title: "World Peace scheduled for 0600 today", body: "Today is the day it finally ends. One world, multiple communities, all at peace.")

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Comment.find_or_create_by!(body: "Finally!!!")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
