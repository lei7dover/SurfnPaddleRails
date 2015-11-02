class Post

  attr_accessor :id, :title, :body, :author, :created_at, :image

  def initialize(args)
    self.id         = args[:id]
    self.title      = args[:title]
    self.body       = args[:body]
    self.author     = args[:author]
    self.created_at = args[:created_at] || Time.now
    self.image = args[:image]
  end

  def self.all
    unless defined?(@posts)
      @posts = [
        Post.new(
          id: "Chicago",
          title:  "Nothing worthwhile is easy",
          author: "Lauren Imhoff",
          body: %q(
            God's doing some tremendous work on my heart right now, especially this last week as Satan is trying to use every angle he can to stop me. I just gotta keep Jesus in lines sight & fill myself with His Word. When life isn't a breeze and we're challenged- it brings us to a place of deep dependence on God; gives us opportunity to grow closer, lean on Him & know that WHEN we get through it-It's because God got us through it. He gives us what we need when we need it.

            "For the Spirit God gave us does not make us timid, but gives us power, love and self-discipline" (2 Timothy 1:7).

            He's shown up big time in the past & brought me through & blessed me more than I could ever imagine.. Why worry that I won't succeed or about all the what ifs now?! Will it be easy? Nope. But will it be worth it. Absolutely.
          ),
          created_at:   rand(6).months.ago ,
          image: "chicago.jpg"
        ),
        Post.new(
          id: "HockingHills",
          title: "Giving the Gift of Attention",
          author: "Lauren Imhoff",
          body: %q(
            I loved this devo today! Quality time means a lot to me & so I try to be intentional with my time with others. It's such a small thing yet can be so easily passed up because of our constant fast paced lifestyles. Generally-there is always something to do or somewhere to be. We have to manage our time & leave margin so we are able to be attentive for the ones we love & care about. People who are crazy busy & make time for others- by those people you feel even more special & valued. At least I do! Its not maybe always as much about quantity as it is about quality!

            Dear Jesus, I’m so glad You understand what it is to have an overflowing schedule. Yet, You still made time to give the gift of Your full attention when You engaged with others. Help me to do the same. Give me the wisdom to know when to pause and with whom I should engage. In Jesus’ Name, Amen.
                - Chrystal Evans Hurst
          ),
          created_at:   rand(6).months.ago ,
          image: "hay.jpg"
        ),
        Post.new(
          id: "LakeMohawk",
          title:  "ONLY GOD",
          author: "Lauren Imhoff",
          body: %q(
            This weekend Canton Campus finished up this round of Married Life Lives! It was yet another success & great set of events. When I was debating about going to Bootcamp I was torn because I couldn't miss MLL(in which most know of my passion for investing in marriages). Well, as always, God worked things out.

            Yes, I'm a little tired & definitely glad I'm not making that drive until Thanksgiving! However, I was able to successfully get through bootcamp the last 3 weeks with my head above water AND pull off organizing& attending all 4 events. Now I know one thing...that's not because of my abilities...ONLY GOD!

            When people ask me how I could manage it... Well the answer is I wasn't going to manage it... God was. The "cherry" on top of all this is that Scott was able to serve with me & experience this event that I am so passionate about. In which, I must say he was such a trooper! So thankful for him. AND the other "cherry" was my sister also got to help & spend time with us.

            God is good... All the time!
          ),
          created_at:   rand(6).months.ago,
          image: "lakesunset.jpg"
        ),
        Post.new(
          id: "Sedona",
          title:  "Then ...Now...Soon",
          author: "Lauren Imhoff",
          body: %q(
            I continue to be in awe of how much my life has completely changed in a matter of 9 months. Just a short time ago, I was a teacher. I took a leap of faith & followed God's call. Just 2 months later, I started a new job as Customer support representative at a software company in Akron(I get to work remote several days a week). In 2 weeks, I'm heading to a bootcamp in Indianapolis for 3 months of intense immersion in Ruby programming. I'll come away a junior developer. I could have never imagined God had this in store for me. And that's just professionally speaking, not to mention the pretty cool guy God allowed our paths to cross back in February(this you are all well aware of by now hehe).

            So for me & all of us that struggle trusting God because we can't see what is coming...I hope this gives you hope. Now I realize we've all had God show up in our lives big time yet we still struggle to trust in those times of ...waiting & wondering ..how will you use this...what are you doing in this time... etc. but my hope is that my story gives you hope that God IS working & will bless you beyond anything you could even imagine- so be patient & ask Him what He wants to do in your life. Follow Him no matter how hard or crazy it may seem to the "outside" world. No one else is God & no one else knows about your personal relationship & what God is calling you to. If you've prayed about it & God has given you the peace & all things are falling into place ...ONLY GOD can provide that in the midst of uncertainty & craziness.

            Lastly, I ask for prayer. I'm so blessed by this opportunity but I am for sure nervous. I'll be in the midst of this bootcamp in the middle of a big foreign city living alone in an apartment building for the 1st time in 26 years. Also please pray for Scott & I's relationship as I will be doing 60-80 hrs of code each week & it's going to be taxing on me. Of course we will only be 4 hours apart but a lot of my weekends will be spent doing my hw due Sunday evening. Finally, that during these 3 months- I really grow closer to God & lean on him gaining a deeper dependence than ever before. Thanks in advance for all the support & prayers. I truly appreciate it!
          ),
          created_at:   rand(6).months.ago ,
          image: "indysunset.jpg"
        ),
        Post.new(
          id:"Home",
          title:  "Walking with Me",
          author: "Lauren Imhoff",
          body: %q(
            I have to remind myself of this each and every day of bootcamp because without God's strength I feel overwhelmed & sometimes defeated. Thoughts will pass through my mind "I can't do this. This is too hard. I don't know what I'm doing."

            God says: "You can do this. Lean on me. Trust me. You've got this." Today was much like how many days begin-- when I go through morning lecture & the hw assignment is presented I look at it with thoughts of doubt & am like what--where do I even begin? However, thus far in bootcamp, I've always been able to complete the assignment.

            I have to look back & remember God's walking with me each and every day giving me what I need & teaching me so much more than just coding. Philippians 4:13
          ),
          created_at:   rand(6).months.ago ,
          image: "winter.jpg"
        )
      ]
    end
    @posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end

  def self.sorted
    all.sort_by{|p| p.created_at}
  end


end
