class Product < ApplicationRecord
    validates :title, :description, :image_url, presence: true 
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :title, uniqueness: true 
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }

    #validates() kiem tra 1 hoac nhieu field dua tren 1 hoac nhieu dien kien 
    #presence: true  kiem tra cac field co empty khong, neu empty thi khong cho create product 
    #numericality() gia phai la kieu number, khong dc la kieu du lieu khac 
    #uniqueness kiem tra khong trung 
    #format kiem tra image url, khong duoc bo trong , chi dc xai link co dung image

end
