
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

    User.create(username: 'akiko', bio: "Confidence literally starts from yourself. You have to go look in the mirror at yourself. If you don’t like what you see, you’re going to give off that energy. – Megan Thee Stallion",password:'bacon', password_confirmation: 'bacon', avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSvPq656mchx0pl_hXonWktZeumThtHCsQmdA&usqp=CAU", )

    # add password confirmation to sign up component

############################
#Blogs data
# please add a link attribute for the link to route t send the user to the blogs
    Blog.create(title: 'Imposter Syndrome', img_url: "https://images.squarespace-cdn.com/content/v1/5a8ec7a44c0dbfc5c297f8d1/1558453055924-N88Z2BWEN3THSX03GH5Y/ke17ZwdGBToddI8pDm48kG4VqDreF-qTqyP-RyQBlzwUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcz9FKOkYZZtCaZTQFz_pq4njr3fQnFjhxZuT9qSS4BtKI42iWDYN3Yj3ILGKtJgbC/Add+a+heading+%281%29.png", description:"Impostor syndrome—the idea that you’ve only succeeded due to luck, and not because of your talent or qualifications—was first identified in 1978 by psychologists Pauline Rose Clance and Suzanne Imes. In their paper, they theorized that women were uniquely affected by impostor syndrome.", name:'Imposter Syndrome vs reality')

    Blog.create(title: 'Break the Vicious Cycle', img_url: "https://kidshelpline.com.au/sites/default/files/bdl_image/01_8.png", description:"There are different ways that you may be able to approach an anxiety cycle and break it for better emotional wellness.", name: 'Boy sitting on bus seat with shadow of a big scary monster behind')

    Blog.create(title: 'Conqure The Fear Of Interviews', img_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqo-EJ44yRdteEfURRjuoBFg-lgXPLCsAZrA&usqp=CAU", description:"Do you get anxious about the very idea of a job interview? Do you worry your nerves will get in the way of impressing your interviewer?", name:'Girl having anxtious thoughts')

    Blog.create(title: 'When Imposter Syndrome Hits You', img_url: "https://www.discoveryinaction.com.au/wp-content/uploads/2015/08/how-to-improve-confidence.jpg", description:"You’ll suddenly feel like a fraud, an imposter, and you think you’re undeserving of the success you’ve had so far. It sucks, it really really sucks... ", name: 'image with writing on how t overcome anxiety')

    Blog.create(title: 'How Writing Can Help with Anxiety', img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbd1gsP1dLVMoNS17t_lMDygVJ0ml3A9RTpg&usqp=CAU", description:"Flow is what you can achieve when you fully immerse yourself into what you’re doing. It’s a mental state that’s characterized by total concentration. It’s also referred to as “getting into the zone,” which is what most people know it as.", name: 'image of the word flow')
    
    Blog.create(title: 'When Worry Gets Out of Control', img_url: "https://www.therecoveryvillage.com/wp-content/uploads/2019/02/what-is-generalized-anxiety.png", description:"Occasional anxiety is a normal part of life. You might worry about things like health, money, or family problems. But people with generalized anxiety disorder (GAD) feel extremely worried or feel nervous about these and other things—even when there is little or no reason to worry about them. People with GAD find it difficult to control their anxiety and stay focused on daily tasks.", name: 'image of the symptoms of Generalized Anxiety')
    
    # https://www.nimh.nih.gov/health/topics/obsessive-compulsive-disorder-ocd/index.shtml#part_145346
    Blog.create(title: 'Obsessive-Compulsive Disorder', img_url: "https://www.straitstimes.com/sites/default/files/articles/2017/02/07/st_20170207_stbichongfebnew_2923554-page-001.jpg", description:"Obsessive-Compulsive Disorder (OCD) is a common, chronic, and long-lasting disorder in which a person has uncontrollable, reoccurring thoughts (obsessions) and/or behaviors (compulsions) that he or she feels the urge to repeat over and over.", name: 'man compulsive washing his hands')

    Blog.create(title: '9 Ways To Deal With Imposter Syndrome', img_url: "https://blog.hubspot.com/hubfs/how-to-deal-with-imposter-syndrome.jpg", description:"People who suffer from this syndrome often feel like frauds -- despite being smart, skilled, capable professionals who actually deserve whatever commendations and praise they're given.")

    Blog.create(title: 'Social Anxiety', img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSpLB8V2jnmpM4ocJ-9cyxCzk764swT0G7Riw&usqp=CAU", description:"1. An understanding and awareness of the problem, 2. A commitment to carry through with cognitive-behavioral therapy even when it is repetitious and seems difficult... ", name: 'woman in a ghost like for around people in non ghost like form')
        # https://socialanxietyinstitute.org/what-is-social-anxiety

        ################################## 
        # Exercises data

        # mediation
    Exercise.create(title:'All You Need Is 5 Minutes',img_url: "https://youtu.be/hFcQpNr_KA4", description:"5 Minutes A Day with Stacey Schuerma")

    Exercise.create(title:'10 Minutes Of Mediation',img_url: "https://youtu.be/O-6f5wQXSu8", description:"Take a moment and let this guided meditation relieve your anxiety.")

    Exercise.create(title:'Meditation for Anxiety ',img_url: "https://youtu.be/4pLUleLdwY4", description:"15 Minute Meditation For Anxiety guides you through a simple at home meditation to provide relief from anxiety, stress, and energetic imbalance. ")

    Exercise.create(title:'Japanese Method To Relax In 5 Minutes',img_url: "https://youtu.be/m3-O7gPsQK0", description:"Helpful technique to help relieve stress and anxiety")
    
    # yoga
    Exercise.create(title:'Yoga For Anxiety and Stress',img_url: "https://youtu.be/hJbRpHZr_d0", description:"In this practice video Adriene guides you through breath and body practices that serve you when you feel bad")

    Exercise.create(title:'Quarentine Home Workouts',img_url: "https://youtu.be/Q-NbcgLN22o", description:"Enjoy a 7 minute, at home workout videos to help reduce stress and anxiety. ")

    Exercise.create(title:'Breathing Technique',img_url: "https://youtu.be/vXZ5l7G6T2I", description:"When feeling a little anxious, follow this breathing technique to reduce yur anxiety")

    Exercise.create(title:'The 4-7-8 Breathing Exercise',img_url: "https://youtu.be/PmBYdfv5RSk", description:"The 4-7-8 breathing is a method, pioneered by Harvard-trained Dr Andrew Weill. It finds its roots in pranayama and is described as a 'natural tranquiliser for the nervous system' helping to quickly reduce tension and allowing the body to relax.")

    Exercise.create(title:'Do Nothing foor 10 Minutes',img_url: "https://youtu.be/aXItOY0sLRY", description:"For 10 minutes, do nothing but breathe. Clear your head, meditate, be free of worries for ten whole minutes")



    8.times do 
    UserFavoriteBlog.create({
        user_id: User.all.sample,
        blog_id: Blog.all.sample
    })
    end
    # add more here later
    # Exercise.create(title:'All You Need Is 5 Minutes',img_url: "https://youtu.be/UkM-FjfN6Mc", description:"")
    # Exercise.create(title:'Kicking Imposter Syndrome WHere It Hurts',img_url: "https://youtu.be/whyUPLJZljE", description:"Solution to Imposter syndrome with Lou Solomon")

puts 'seeds done'


