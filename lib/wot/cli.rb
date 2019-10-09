class Wot::CLI 

    attr_accessor :books

    def call
        Wot::Scraper.get_book_titles
        # scrape book 0 summary
        Wot::Scraper.make_books
        welcome
        book_menu
        goodbye
    end

    def welcome 
        title = <<-'EOF'
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
        puts title.colorize(:blue)
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
        while true
            list_books
            
            which_book = <<-DOC

            *******************************************************
            *                                                     *
            *                    WHICH BOOK?                      *
            *                                                     *
            *     Enter the number of the book you would like     *
            *      chapter details on or type 'exit' to quit.     *
            *                                                     *
            *******************************************************
            
            DOC
            puts which_book.colorize(:light_blue)
            input = gets.strip.downcase
            break if input == "exit"
            selection = input.to_i
            summary_menu(selection)
        end

    end

    def list_books
        puts <<-DOC

        BOOKS IN SERIES:
        ---------------

        DOC
        @books = Wot::Book.all
        @books.each.with_index {|book, i| puts "[".rjust(20) + i.to_s.rjust(4) + "]".rjust(3) + book.name}
    end

    def summary_menu(book)
        selection = Wot::Book.find(book)
        puts <<-DOC
        
        You selected: #{selection.name}

        DOC
        selection.chapters.each.with_index do |chapter, i| 
            i += 1
            puts "[".rjust(20) + i.to_s.rjust(4) + "]".rjust(3) + "  " + chapter
        end
        
        input = nil
        while true 
           
            which_chapter = <<-DOC



            *******************************************************
            *                                                     *
            *                   CHAPTER SUMMARY                   *
            *                                                     *
            *    Enter the number of the chapter you would like   *
            *       a summary on or type 'exit' to go to the      *
            *                    previous menu.                   *
            *                                                     *
            *******************************************************
            
            DOC
            puts which_chapter.colorize(:light_blue)
            input = gets.strip.downcase
            break if input == "exit"
            chapter_number = input.to_i

            if book == 0
                Wot::Scraper.book_0_summary(chapter_number)
                chapter = selection.summary[chapter_number-1]
                chapter.each {|summary| puts "", "    #{summary}" }

            elsif book == 1 || 2 || 3 || 4 || 5 || 6 || 7 || 8 || 9 || 10 || 11 || 12 || 13 || 14
                output = Wot::Scraper.comming_soon
                output.each {|msg| puts msg}
            end
            
        end
    end

    def goodbye 
        bye = <<-'EOF'
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
        puts bye.colorize(:blue)
    end


end