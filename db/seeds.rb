# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u=User.new
u.username="jiyunmoves"
u.password="wusdlf82"
u.save

number=1
while number<5
  g=Gallery.new
  g.title="009_0"+ number.to_s
  g.category="009"
  g.save
  number=number.to_i
  number=number+1
end

def seed_image(file_name)
  galleries=Gallery.all
  galleries.each do |gallery|
    File.open(File.join('https://s3.amazonaws.com/jiyunmoves.com/images_2014/', gallery.title+'.jpg'))
  end
end


g= {
   :image=> seed_image('gallery'),
   :category=>'009',
   :title=>'#{file_name}'
   }
Gallery.find_or_create_by_title(g[:title])

