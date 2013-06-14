class Deal < ActiveRecord::Base
  attr_accessible :businessContact, :businessHours, :businessLocation, :businessName, :detail1, :detail2, :detail3, :detail4, :detail5, :detail6, :detail7, :longDescription, :name, :price, :saleEnd, :saleStart, :shortDescription, :validEnd, :validStart, :value, :voucherLimit, :image
  
  validates :businessContact, :businessHours, :businessLocation, :businessName, :detail1, :detail2, :detail3, :longDescription, :name, :price, :saleEnd, :saleStart, :shortDescription, :validEnd, :validStart, :value, :voucherLimit, presence: true
  
  validates :shortDescription, :length => { :in => 45..105 }
   
  validates_attachment :image, presence: true,
                               content_type: {content_type:['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                               size: { less_than: 5.megabytes}
                               
  has_attached_file :image, styles: { medium: "320x320"}
end
