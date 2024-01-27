class Textbook < ApplicationRecord
    has_many :pageimages, dependent: :destroy
    validates :grade, presence: true
    validates :texttitle, presence: true

    enum subject: {
        ja: 0,
        ma: 1,
        hi: 2,
        ge: 3,
        ci: 4,
        sc: 5,
        en: 6,
        other: 7
    }

    enum grade: {
        j3: 0,
        j2: 1,
        j1: 2,
        jh: 3,
        e6: 4,
        e5: 5,
        e4: 6,
        er: 7,
        pre: 8
    }

    enum texttitle: {
        jitsuren: 1,
        keywork: 2,
        hisshu: 3,
        master: 4,
        shinwork: 5,
        yoshuseries: 6,
        othertext: 7

     }

end
