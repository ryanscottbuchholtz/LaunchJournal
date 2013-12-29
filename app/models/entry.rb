class Entry<ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description

  belongs_to :category,
    inverse_of: :entries

  default_scope order('updated_at DESC')

  def rendered_category_name
    if category == nil
      ""
    else
      category.name
    end
    
  end

  def ordered_by_date
    
  end
end