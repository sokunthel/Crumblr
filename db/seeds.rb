# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.new
post1.title = 'Blondies'
post1.kind = 'text'
post1.content = <<CONTENT
Blondies are often called brownies without chocolate which I find silly; blondies are a dessert with their own unique deliciousness and personality.

Whereas brownies depend on chocolate for their flavor, for blondies it’s all about the brown sugar, giving the blondies their distinctive molasses flavor.
Chewy, rich, and flavorful blondies, when made right, are an indulgent dessert that are hard to resist.

This is my “go-to” dessert recipe since it only takes about 5 minutes to make and then throw in the oven. I can’t count how many times I dashed this together so that last second company could arrive to a freshly baked treat.

Plus, it only makes a small batch, so you don’t have to worry about being tempted by dozens of tasty treats lying in wait for you.

Since brown sugar is the critical flavor here, I suggest using dark brown sugar. While butterscotch chips or walnuts are commonly mixed in, chocolate chips are equally good. And of course, blondies should always be served with a glass of milk.

Blondies Recipe
Prep time: 15 minutesCook time: 25 minutesYield: Makes 9 to 16 blondies

Ingredients
1/2 cup (1 stick, 112 g) of butter, melted
1 cup (220 g) of tightly packed dark brown sugar
1 egg, lightly beaten
1 teaspoon of vanilla
1/2 teaspoon baking powder
1/8 teaspoon of baking soda
Pinch of salt
1 cup (128 g)  of all-purpose flour
1/3 cup (60 g) of butterscotch chips (chopped walnuts and chocolate chips are equally tasty)
Method
1 Preheat the oven to 350°F (175°C). Lightly butter and flour an 8X8-inch  pan (20 cm x 20 cm). Whisk together the melted butter and sugar in a bowl.
2 Add the egg and vanilla extract and whisk.
3 Add the flour, baking soda, baking powder, and salt, mix it all together. Add the butterscotch chips or other mix-ins.
4 Pour into the pan and spread evenly. Bake for 25-30 minutes or until a tester inserted into the center comes out clean. Allow to cool. Cut into squares or rectangles and serve.

Source: http://www.simplyrecipes.com/recipes/blondies/
CONTENT
post1.save
13.times do
  post1.hearts.create
end

post2 = Post.new(
  title: "La Farine",
  kind: "text"
)
post2.content = <<CONTENT
Since 1977, our customers have started their day with the legendary morning bun from La Farine French Bakery. Located in three vibrant Oakland neighborhoods, La Farine offers the finest in French pastries, delicious fruit and nut tartes, classic cakes, cookies, and rustic breads.

So, whether you’re out for your morning coffee and croissant, or after the classic compliment to your evening meal, stop by La Farine, relax at one of our family tables, and bask in the ambiance and aromas of the Bay Area’s classic French Bakery.

http://www.lafarine.com/
CONTENT
post2.save
27.times {post2.hearts.create}

post3 = Post.create(
  title: "Chocolate Chip Goodness"
  kind: "image"
  content: "http://www.simplyrecipes.com/wp-content/uploads/2017/05/2017-06-13-ChocolateChipCookies-15.jpg"
)
7.times {post3.hearts.create}

post4 = Post.new(
  title: "Swedish Cream Bun Cake"
  kind: "text"
)
post4.content = <<CONTENT
This Swedish Cream Bun Cake Recipe is a must make and it tastes as good as it looks! You will be thrilled with the results ..

When it comes to amazing recipes, the Swedes sure know how to get it right. A couple of the most popular recipes on our site in recent times have been the copycat Ikea Swedish Meatballs and the Swedish Sandwich Cake.

Well, today we bring you another knockout recipe. We are talking about this delicious Swedish Cream Bun Cake Recipe.

It’s perfect for a sweet treat and it’s filled with Almond Paste and Cream and one look at the photos and you just know it has to taste good. There’s a reason it’s been so popular ..

We have also included the hugely popular Homemade Kitchener Buns and the Berliner Buns for you to try. Be sure that you scroll our page all the way to the end so that you don’t miss a single great idea. Watch the video tutorial too.

Swedish Cream Bun Cake Recipe Ingredients
25 g yeast
1 ¼ cups milk, lukewarm
1 egg
½ cup granulated sugar
1 pinch of salt
½ tsp cardamom seeds, mort put
50 g butter, unsalted
4-5 cups flour

Source: http://thewhoot.com.au/whoot-news/recipes/swedish-cream-bun-cake
CONTENT
post4.save
3.times {post4.hearts.create}

post5 = Post.create(
  title: "Delicious Fruit Tart"
  kind: "image"
  content: "https://s3-media3.fl.yelpcdn.com/bphoto/Q9IOIOP2Tt_4wR1_6_mE-w/o.jpg"
)
post5.save
18.times {post5.hearts.create}
