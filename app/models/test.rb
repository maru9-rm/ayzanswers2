class Test < ApplicationRecord
    validates :category, presence: true
    validates :school_name, presence: true

    has_many_attached :ja_images
    has_many_attached :ma_images
    has_many_attached :ss_images
    has_many_attached :sc_images
    has_many_attached :en_images

    enum category: {
        junior_high: 0,
        high: 1,
        high_sg: 2,
        high_kk: 3
    }
    enum school_name: {
        sn: 0,
        oh: 1,
        hf: 2,
        cj: 3,
        ws: 4,
        ls: 5,
        fs: 6,
        su: 7,
        kg: 8,
        fw: 9,
        mz: 10,
        nj: 11,
        jc: 12,
        fz: 13,
        ps: 14,
        other: 15

    }
    enum year: {
        H14_2002: 1,
        H15_2003: 2,
        H16_2004: 3,
        H17_2005: 4,
        H18_2006: 5,
        H19_2007: 6,
        H20_2008: 7,
        H21_2009: 8,
        H22_2010: 9,
        H23_2011: 10,
        H24_2012: 11,
        H25_2013: 12,
        H26_2014: 13,
        H27_2015: 14,
        H28_2016: 15,
        H29_2017: 16,
        H30_2018: 17,
        R01_2019: 18,
        R02_2020: 19,
        R03_2021: 20,
        R04_2022: 21,
        R05_2023: 22,
        R06_2024: 23,
        R07_2025: 24,
        R08_2026: 25
    }

end
