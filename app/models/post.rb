class Post < ApplicationRecord
    validates :title, length: {in: 1..20}
    validates :start_date, presence:true
    validates :end_date, presence:true
    validates :content, length: {in: 1..500}
    validate :start_end_check

    def start_end_check
        errors.add(:end_date, "は開始日以降の日付で選択してください。") unless
        start_date.present? && end_date.present? && self.start_date <= self.end_date #エラー回避のためnilかどうか確かめる
    end

end
