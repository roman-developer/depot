# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

Product.create!(title: "Agile Web Development with Rails 6",
            description:
            %{<p>
                <em>The best book to get started in the Rails world</em>
                Quisque sed tellus nec tortor consectetur lacinia. 
                In semper enim quis lacinia ornare. Praesent at sodales neque.
                 Ut a purus dui. Donec sagittis ex et mauris mollis fringilla. 
                 Nulla condimentum eu mauris vel hendrerit. In maximus venenatis vestibulum. Duis laoreet,
                  tellus eu feugiat facilisis, est nisl posuere ex, id facilisis risus ligula et lectus.
            </p>},
            image_url: 'rails_book.jpg',
            price: 20.00
            )