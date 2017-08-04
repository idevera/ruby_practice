all_songs = Hash.new

4.times do
  puts "Name of song?"
  input_song_name = gets.chomp
  puts
  puts "Length of song in seconds?"
  input_song_length = gets.chomp.to_i
  puts
  puts "Number of times played?"
  input_times_played = gets.chomp.to_i
  puts

  total_play_time = input_song_length * input_times_played
  all_songs[input_song_name] = total_play_time
end

puts "===== SONG PLAY TIME SUMMARY ====="
puts
all_songs.each do |song_name, total_play_time|
  puts "#{song_name}: #{total_play_time} seconds"
end

puts "Most listened to song: #{all_songs.key(all_songs.values.max)} for a total of #{all_songs.values.max} seconds"
puts
puts "===== THANK YOU FOR USING SONG TIME CALCULATOR ====="
