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
    def self.scrape_summary(input, counter_start, counter_end)
        summary = []
        ch_summary_url = "https://library.tarvalon.net/index.php?title=New_Spring:_Chapter_#{input}"
        doc = Nokogiri::HTML(open(ch_summary_url))
        counter = counter_start
        while counter != counter_end
            summary << doc.search("div#mw-content-text p:nth-child(#{counter})").text.strip
            counter += 1
        end
        summary
    end

    def self.create_summary(num_chapters)
        summary_array = []
        num_chapters.times{summary_array << nil}
        summary_array
    end

    def self.book_0_summary(chapter_number)
        book = Wot::Book.find(0)

        case chapter_number
        when 1
            book.summary[0] ||= scrape_summary(1, 13, 18)
        when 2
            book.summary[1] ||= scrape_summary(2, 13, 19)
        when 3
            book.summary[2] ||= scrape_summary(3, 13, 17)
        when 4
            book.summary[3] ||= scrape_summary(4, 13, 17)
        when 5
            book.summary[4] ||= scrape_summary(5, 13, 18)
        when 6
            book.summary[5] ||= scrape_summary(6, 13, 20)
        when 7
            book.summary[6] ||= scrape_summary(7, 13, 17)
        when 8
            book.summary[7] ||= scrape_summary(8, 13, 19)
        when 9
            book.summary[8] ||= scrape_summary(9, 13, 17)
        when 10
            book.summary[9] ||= scrape_summary(10, 13, 19)
        when 11
            book.summary[10] ||= scrape_summary(11, 13, 15)
        when 12
            book.summary[11] ||= scrape_summary(12, 16, 21)
        when 13
            book.summary[12] ||= scrape_summary(13, 13, 17)
        when 14
            book.summary[13] ||= scrape_summary(14, 13, 19)
        when 15
            book.summary[14] ||= scrape_summary(15, 13, 15)
        when 16
            book.summary[15] ||= scrape_summary(16, 13, 21)
        when 17
            book.summary[16] ||= scrape_summary(17, 13, 16)
        when 18
            book.summary[17] ||= scrape_summary(18, 13, 19)
        when 19
            book.summary[18] ||= scrape_summary(19, 13, 20)
        when 20
            book.summary[19] ||= scrape_summary(20, 13, 16)
        when 21
            book.summary[20] ||= scrape_summary(21, 13, 17)
        when 22
            book.summary[21] ||= scrape_summary(22, 13, 17)
        when 23
            book.summary[22] ||= scrape_summary(23, 13, 17)
        when 24
            book.summary[23] ||= scrape_summary(24, 13, 17)
        when 25
            book.summary[24] ||= scrape_summary(25, 13, 17)
        when 26
            book.summary[25] ||= scrape_summary(26, 13, 17)
        when 27
            book.summary[26] ||= scrape_summary(27, 13, 17)
        end


    end


    def self.comming_soon
        cs_summary = []
        cs_summary << ["Chapter summaries for this book comming soon!!", "Please check back later for update!"]
        cs_summary
    end

end