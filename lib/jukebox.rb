songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.strip
  if songs.member?(user)
    puts "Playing #{user}"
    system "open #{songs.keys(user)}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each {
    |key, val|
    puts "#{key}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command"
    input = gets.downcase.chomp
    case input
    when "exit"
      puts "Goodbye"
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    end
  end
end
