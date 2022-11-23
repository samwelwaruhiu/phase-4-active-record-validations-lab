class Post < ApplicationRecord
    validate :checks_title
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}


    

    def checks_title
        if !(["Won't Believe","Secret","Top [number]","Guess"].any?{|phrase|"#{title}".include?(phrase)})
            errors.add(:title, "must contain the specified")
    end
end
end


