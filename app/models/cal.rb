class Cal < ActiveRecord::Base


before_save :set_closing_date
 def set_closing_date
    self.closing_date = Date.today
 end

before_save :calculate_no_of_days
  def calculate_no_of_days
     self.no_of_days = (Date.today - opening_date).to_i
  end

before_save :calculate_amount_due
  def calculate_amount_due
   if self.no_of_days <= 90
       self.amount_due = ( self.amount * no_of_days * (self.roi/100) / 365 ).to_i
     else
       self.no_of_days >= 90
         self.amount_due = ( self.amount * no_of_days * (self.roi/100) / 360 ).to_i
   end
 end

  validates :customer_name, presence: true
  validates :opening_date, presence: true
  validates_numericality_of :roi, presence: true
  validates_numericality_of :amount, presence: true
  validates :transaction_type, presence: true
  validates_numericality_of :net_weight, presence: true
  validates_numericality_of :gross_weight, presence: true


end


