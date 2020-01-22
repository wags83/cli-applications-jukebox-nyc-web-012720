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
