class Wot::CLI 

    attr_accessor :books

    def call
        Wot::Scraper.get_book_titles
        Wot::Scraper.make_books
        welcome
        book_menu
        goodbye
    end

    def welcome 
        puts <<-'EOF'
        __        ___               _  ___   __ _____ _                
        \ \      / / |__   ___  ___| |/ _ \ / _|_   _(_)_ __ ___   ___ 
         \ \ /\ / /| '_ \ / _ \/ _ \ | | | | |_  | | | | '_ ` _ \ / _ \
          \ V  V / | | | |  __/  __/ | |_| |  _| | | | | | | | | |  __/
           \_/\_/  |_| |_|\___|\___|_|\___/|_|   |_| |_|_| |_| |_|\___|
               ____                                  _             
              / ___|___  _ __ ___  _ __   __ _ _ __ (_) ___  _ __  
             | |   / _ \| '_ ` _ \| '_ \ / _` | '_ \| |/ _ \| '_ \ 
             | |__| (_) | | | | | | |_) | (_| | | | | | (_) | | | |
              \____\___/|_| |_| |_| .__/ \__,_|_| |_|_|\___/|_| |_|
                                  |_|                              
        EOF

        puts <<-DOC

        Welcome to the Wheel Of Time Companion Ruby CLI Gem to Robert
        Jordan's Wheel of Time Series.

        --------------------------------------------------------------
        
        This CLI Ruby gem provides a listing of chapters belonging to
        each book within the series, as well as chapter summaries.

        Please wait a moment to load the list of books.

        DOC
    end

    def book_menu
        input = nil
        while input != "exit"
            list_books
            
            puts <<-DOC

            *******************************************************
            *                                                     *
            *                    WHICH BOOK?                      *
            *                                                     *
            *     Enter the number of the book you would like     *
            *      chapter details on or type 'exit' to quit.     *
            *                                                     *
            *******************************************************
            
            DOC
            input = gets.strip.downcase
            case input
            when "0"
                book = Wot::Book.find(0).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(0)
            when "1"
                book = Wot::Book.find(1).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(1)
            when "2"
                book = Wot::Book.find(2).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(2)
            when "3"
                book = Wot::Book.find(3).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(3)
            when "4"
                book = Wot::Book.find(4).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(4)
            when "5"
                book = Wot::Book.find(5).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(5)
            when "6"
                book = Wot::Book.find(6).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(6)
            when "7"
                book = Wot::Book.find(7).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(7)
            when "8"
                book = Wot::Book.find(8).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(8)
            when "9"
                book = Wot::Book.find(9).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(9)
            when "10"
                book = Wot::Book.find(10).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(10)
            when "11"
                book = Wot::Book.find(11).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(11)
            when "12"
                book = Wot::Book.find(12).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(12)
            when "13"
                book = Wot::Book.find(13).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(13)
            when "14"
                book = Wot::Book.find(14).chapters
                book.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
                summary_menu(14)
            end
        end

    end

    def list_books
        puts <<-DOC

        BOOKS IN SERIES:
        ---------------

        DOC
        @books = Wot::Book.all
        @books.each.with_index do |book, i|
        counter = 0
            while counter != 10
                puts "        [  #{i} ] #{book.name}"
            end
            while counter != 15
                puts "        [ #{i} ] #{book.name}"
            end
        end
    end

    def summary_menu(book)
        selection = Wot::Book.find(book)
        puts <<-DOC
        
        You selected: #{selection}

        DOC
        selection.chapters.each.with_index {|chapter, i| puts "        [ #{i+1}] #{chapter}"}
    
        while input != "back"
           
            puts <<-DOC

            *******************************************************
            *                                                     *
            *                   CHAPTER SUMMARY                   *
            *                                                     *
            *    Enter the number of the chapter you would like   *
            *       a summary on or type 'back' to go to the      *
            *                    previous menu.                   *
            *                                                     *
            *******************************************************
            
            DOC
            input = gets.strip.downcase
            Wot::Book.find(selection).summary[input+1].each {|summary| puts "", "    #{summary}" }
        end
    end

    def goodbye 
        puts <<-'EOF'
                         _   _                          
                        | | | | __ _ _ __  _ __  _   _  
                        | |_| |/ _` | '_ \| '_ \| | | | 
                        |  _  | (_| | |_) | |_) | |_| | 
                        |_| |_|\__,_| .__/| .__/ \__, | 
                                    |_|   |_|    |___/ 
                     ____                _ _             _ _ 
                    |  _ \ ___  __ _  __| (_)_ __   __ _| | |
                    | |_) / _ \/ _` |/ _` | | '_ \ / _` | | |
                    |  _ <  __/ (_| | (_| | | | | | (_| |_|_|
                    |_| \_\___|\__,_|\__,_|_|_| |_|\__, (_|_)
                                                   |___/     
        EOF
    end


end