class Print < ApplicationRecord

    has_many_attached :print_images

    enum subject: {
        ja: 0, 
        ma: 1,
        hi: 2,
        ge: 3,
        ci: 4,
        sc: 5,
        en: 6,
        other: 7,
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


end