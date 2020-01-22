# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (song_array)
  song_array.each_with_index {|song, index|}
  puts "#{index+1}. #{song}"
end

def play (input)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i >= 1 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{songs.find{|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  input = gets.strip
  while true do
  if input == "exit"
    exit_jukebox
    break
  elsif input == "help"
    help
  elsif input == "play"
    play
  elsif input == "list"
    list
  else
    puts "Please enter a valid command."
  end
end
end


