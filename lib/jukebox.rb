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
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs) 
    puts "Please enter a song name or number:"
    input = gets.chomp
    case 
        when  0 < input.to_i && input.to_i <= songs.length
            puts "Playing #{songs[input.to_i - 1]}"
        when songs.include?(input)
            puts "Playing #{input}"
        else
            puts "Invalid input, please try again"
        end
end

def list(songs)
    songs.each_with_index do |song, n|
        puts "#{n + 1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    cmd = gets.strip
    case cmd
        when "help"
            help()
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "exit"
            exit_jukebox()
        else
            puts "Invalid command." 
            run()
        end
end
