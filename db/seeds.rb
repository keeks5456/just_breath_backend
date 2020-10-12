# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exercise.destroy_all
Blog.destroy_all
JournalEntry.destroy_all
User.destroy_all


5.times do 
User.create({
    username: Faker::TvShows::RickAndMorty.character,
    bio: Faker::TvShows::RickAndMorty.quote,
    avatar: "https://prodimage.images-bn.com/pimages/0889698301824_p0_v1_s550x406.jpg",
    password: 'bacon',
    password_confirmation: 'bacon'
})
end

User.create(username: 'akiko', password:'bacon', password_confirmation: 'bacon', avatar: "pic here", )

5.times do
    JournalEntry.create({
        content: Faker::Quote.most_interesting_man_in_the_world,
        user_id: User.all.sample
    })
end

    Blog.create(img_url: "https://images.squarespace-cdn.com/content/v1/5a8ec7a44c0dbfc5c297f8d1/1558453055924-N88Z2BWEN3THSX03GH5Y/ke17ZwdGBToddI8pDm48kG4VqDreF-qTqyP-RyQBlzwUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcz9FKOkYZZtCaZTQFz_pq4njr3fQnFjhxZuT9qSS4BtKI42iWDYN3Yj3ILGKtJgbC/Add+a+heading+%281%29.png", description:"Impostor syndrome—the idea that you’ve only succeeded due to luck, and not because of your talent or qualifications—was first identified in 1978 by psychologists Pauline Rose Clance and Suzanne Imes. In their paper, they theorized that women were uniquely affected by impostor syndrome.")

    Blog.create(img_url: "", description:"There are different ways that you may be able to approach an anxiety cycle and break it for better emotional wellness.")

    Blog.create(img_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqo-EJ44yRdteEfURRjuoBFg-lgXPLCsAZrA&usqp=CAU", description:"Do you get anxious about the very idea of a job interview? Do you worry your nerves will get in the way of impressing your interviewer?")

    Blog.create(img_url: "https://www.discoveryinaction.com.au/wp-content/uploads/2015/08/how-to-improve-confidence.jpg", description:"")

    Exercise.create(img_url: "https://youtu.be/UkM-FjfN6Mc", description:"")
    Exercise.create(img_url: "https://youtu.be/UkM-FjfN6Mc", description:"")
    Exercise.create(img_url: "https://youtu.be/UkM-FjfN6Mc", description:"")
    Exercise.create(img_url: "https://youtu.be/UkM-FjfN6Mc", description:"")

puts 'seeds done'


