require 'pry'
class Wot::Book

    attr_accessor :name, :chapters, :summary
    @@all = []

    def self.initialize(name, chapters, summary=nil)
        @name = name
        @chapters = chapters
        @summary = summary
    end

    def self.new_from_scrape(book)
        count = @@all.count
        case count
        when 0
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_0_chapters)
        when 1
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_1_chapters)
        when 2
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_2_chapters)
        when 3
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_3_chapters)
        when 4
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_4_chapters)
        when 5
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_5_chapters)
        when 6
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_6_chapters)
        when 7
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_7_chapters)
        when 8
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_8_chapters)
        when 9
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_9_chapters)
        when 10
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_10_chapters)
        when 11
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_11_chapters)
        when 12
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_12_chapters)
        when 13
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_13_chapters)
        when 14
            self.new(Wot::Scraper.get_book_titles[0], Wot::Scraper.book_14_chapters)
        end
    end

    def self.all
        @@all
    end

    def self.find(number)
        self.all[number]
    end

end