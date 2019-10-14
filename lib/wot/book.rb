require 'pry'
class Wot::Book

    attr_accessor :name, :chapters, :summary, :number_chs
    @@all = []

    def initialize(name, chapters, summary, number_chs)
        @name = name
        @chapters = chapters
        @summary = summary
        @number_chs = number_chs
        @@all << self
    end

    def self.new_from_scrape(book)
        count = @@all.count
        # binding.pry
        case count
        when 0
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_0_chapters, Wot::Scraper.create_summary(27), 27)
        when 1
            self.new(Wot::Scraper.get_book_titles[1], Wot::Scraper.book_1_chapters, Wot::Scraper.create_summary(55), 55)
        when 2
            self.new(Wot::Scraper.get_book_titles[2], Wot::Scraper.book_2_chapters, Wot::Scraper.create_summary(51), 51)
        when 3
            self.new(Wot::Scraper.get_book_titles[3], Wot::Scraper.book_3_chapters, Wot::Scraper.create_summary(57), 57)
        when 4
            self.new(Wot::Scraper.get_book_titles[4], Wot::Scraper.book_4_chapters, Wot::Scraper.create_summary(58), 58)
        when 5
            self.new(Wot::Scraper.get_book_titles[5], Wot::Scraper.book_5_chapters, Wot::Scraper.create_summary(57), 57)
        when 6
            self.new(Wot::Scraper.get_book_titles[6], Wot::Scraper.book_6_chapters, Wot::Scraper.create_summary(57), 57)
        when 7
            self.new(Wot::Scraper.get_book_titles[7], Wot::Scraper.book_7_chapters, Wot::Scraper.create_summary(42), 42)
        when 8
            self.new(Wot::Scraper.get_book_titles[8], Wot::Scraper.book_8_chapters, Wot::Scraper.create_summary(32), 32)
        when 9
            self.new(Wot::Scraper.get_book_titles[9], Wot::Scraper.book_9_chapters, Wot::Scraper.create_summary(56), 56)
        when 10
            self.new(Wot::Scraper.get_book_titles[10], Wot::Scraper.book_10_chapters, Wot::Scraper.create_summary(32), 32)
        when 11
            self.new(Wot::Scraper.get_book_titles[11], Wot::Scraper.book_11_chapters, Wot::Scraper.create_summary(39), 39)
        when 12
            self.new(Wot::Scraper.get_book_titles[12], Wot::Scraper.book_12_chapters, Wot::Scraper.create_summary(52), 52)
        when 13
            self.new(Wot::Scraper.get_book_titles[13], Wot::Scraper.book_13_chapters, Wot::Scraper.create_summary(59), 59)
        when 14
            self.new(Wot::Scraper.get_book_titles[14], Wot::Scraper.book_14_chapters, Wot::Scraper.create_summary(51), 51)
        end
    end

    def self.all
        @@all
    end

    def self.find(number)
        self.all[number]
    end

end
