require 'pry'
class Wot::Scraper

    # Book level scrapes
    def self.get_book_titles
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Chapter_Summaries"))
        all_titles = doc.search("#mw-content-text ul").text.split("\n")
    end

    def self.make_books
        get_book_titles.each {|book| Wot::Book.new_from_scrape(book)}
    end

    # Chapter title level scrapes
    def self.book_0_chapters
        book_0_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=New_Spring:_Chapter_Summaries"))
        counter = 1
        while counter != 15
            book_0_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=14
            book_0_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_0_chapters
    end

    def self.book_1_chapters
        book_1_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Eye_of_the_World:_Chapter_Summaries"))
        counter = 1
        while counter != 28
            book_1_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=28
            book_1_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_1_chapters
    end

    def self.book_2_chapters
        book_2_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Great_Hunt:_Chapter_Summaries"))
        counter = 1
        while counter != 27
            book_2_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=26
            book_2_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_2_chapters
    end

    def self.book_3_chapters
        book_3_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Dragon_Reborn:_Chapter_Summaries"))
        counter = 1
        while counter != 30
            book_3_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=29
            book_3_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_3_chapters
    end

    def self.book_4_chapters
        book_4_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Shadow_Rising:_Chapter_Summaries"))
        counter = 1
        while counter != 30
            book_4_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=30
            book_4_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_4_chapters
    end

    def self.book_5_chapters
        book_5_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Fires_of_Heaven:_Chapter_Summaries"))
        counter = 1
        while counter != 30
            book_5_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=29
            book_5_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_5_chapters
    end

    def self.book_6_chapters
        book_6_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Lord_of_Chaos:_Chapter_Summaries"))
        counter = 1
        while counter != 30
            book_6_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=29
            book_6_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_6_chapters
    end

    def self.book_7_chapters
        book_7_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=A_Crown_of_Swords:_Chapter_Summaries"))
        counter = 1
        while counter != 22
            book_7_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=22
            book_7_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_7_chapters
    end

    def self.book_8_chapters
        book_8_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Path_of_Daggers:_Chapter_Summaries"))
        counter = 1
        while counter != 17
            book_8_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=17
            book_8_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_8_chapters
    end

    def self.book_9_chapters
        book_9_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Winter%27s_Heart:_Chapter_Summaries"))
        counter = 1
        while counter != 19
            book_9_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=19
            book_9_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_9_chapters
    end

    def self.book_10_chapters
        book_10_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Crossroads_of_Twilight:_Chapter_Summaries"))
        counter = 1
        while counter != 17
            book_10_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=17
            book_10_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_10_chapters
    end

    def self.book_11_chapters
        book_11_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Knife_of_Dreams:_Chapter_Summaries"))
        counter = 1
        while counter != 21
            book_11_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=20
            book_11_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_11_chapters
    end

    def self.book_12_chapters
        book_12_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=The_Gathering_Storm:_Chapter_Summaries"))
        counter = 1
        while counter != 27
            book_12_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        counter = 1
        while counter !=27
            book_12_chapters << doc.search("div#mw-content-text table td:nth-child(2) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_12_chapters
    end

    def self.book_13_chapters
        book_13_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=Towers_of_Midnight:_Chapter_Summaries"))
        counter = 1
        while counter != 60
            book_13_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_13_chapters
    end

    def self.book_14_chapters
        book_14_chapters = []
        doc = Nokogiri::HTML(open("https://library.tarvalon.net/index.php?title=A_Memory_of_Light:_Chapter_Summaries"))
        counter = 1
        while counter != 52
            book_14_chapters << doc.search("div#mw-content-text table td:nth-child(1) ul li:nth-child(#{counter}) a").text
            counter += 1
        end
        book_14_chapters
    end

    # Chapter summary level scrapes
    def self.scrape_summary(input, counter_max, ch_summary_url)
        summary = []
        doc = Nokogiri::HTML(open(ch_summary_url))
        counter = 13
        while counter != counter_max
            summary << doc.search("div#mw-content-text p:nth-child(#{counter})").text.strip
            counter += 1
        end
        summary
    end

    def self.book_0_summary
        book_0_summary = []
        counter = 1
        while counter != 28
            ch_summary_url = "https://library.tarvalon.net/index.php?title=New_Spring:_Chapter_#{counter}"
            case counter
            when 1
                book_0_summary << scrape_summary(1, 18, ch_summary_url)
                counter += 1
            when 2
                book_0_summary << scrape_summary(2, 19, ch_summary_url)
                counter += 1
            when 3
                book_0_summary << scrape_summary(3, 18, ch_summary_url)
                counter += 1
            when 4
                book_0_summary << scrape_summary(4, 17, ch_summary_url)
                counter += 1
            when 5
                book_0_summary << scrape_summary(5, 18, ch_summary_url)
                counter += 1
            when 6
                book_0_summary << scrape_summary(6, 20, ch_summary_url)
                counter += 1
            when 7
                book_0_summary << scrape_summary(7, 17, ch_summary_url)
                counter += 1
            when 8
                book_0_summary << scrape_summary(8, 19, ch_summary_url)
                counter += 1
            when 9
                book_0_summary << scrape_summary(9, 17, ch_summary_url)
                counter += 1
            when 10
                book_0_summary << scrape_summary(10, 19, ch_summary_url)
                counter += 1
            when 11
                book_0_summary << scrape_summary(11, 15, ch_summary_url)
                counter += 1
            when 12
                # This page is slightly differnt than the rest and cannot be DRYed with the rest of the chapters.
                ch12_summary = []
                doc = Nokogiri::HTML(open(ch_summary_url))
                counter = 16
                while counter != 21
                    ch12_summary << doc.search("div#mw-content-text p:nth-child(#{counter})").text.strip
                    counter += 1
                end
                book_0_summary << ch12_summary
                counter += 1
            when 13
                book_0_summary << scrape_summary(13, 17, ch_summary_url)
                counter += 1
            when 14
                book_0_summary << scrape_summary(14, 19, ch_summary_url)
                counter += 1
            when 15
                book_0_summary << scrape_summary(15, 15, ch_summary_url)
                counter += 1
            when 16
                book_0_summary << scrape_summary(16, 21, ch_summary_url)
                counter += 1
            when 17
                book_0_summary << scrape_summary(17, 16, ch_summary_url)
                counter += 1
            when 18
                book_0_summary << scrape_summary(18, 19, ch_summary_url)
                counter += 1
            when 19
                book_0_summary << scrape_summary(19, 20, ch_summary_url)
                counter += 1
            when 20
                book_0_summary << scrape_summary(20, 16, ch_summary_url)
                counter += 1
            when 21
                book_0_summary << scrape_summary(21, 17, ch_summary_url)
                counter += 1
            when 22
                book_0_summary << scrape_summary(22, 17, ch_summary_url)
                counter += 1
            when 23
                book_0_summary << scrape_summary(23, 17, ch_summary_url)
                counter += 1
            when 24
                book_0_summary << scrape_summary(24, 17, ch_summary_url)
                counter += 1
            when 25
                book_0_summary << scrape_summary(25, 17, ch_summary_url)
                counter += 1
            when 26
                book_0_summary << scrape_summary(26, 17, ch_summary_url)
                counter += 1
            when 27
                book_0_summary << scrape_summary(27, 17, ch_summary_url)
                counter += 1
            end
        end
        book_0_summary
    end

    def self.comming_soon
        puts "Chapter summaries for this book comming soon!!"
    end

end