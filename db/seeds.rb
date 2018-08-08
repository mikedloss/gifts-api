require 'database_cleaner'

# used to ensure the id resets to 1
DatabaseCleaner.clean_with(:truncation, only: %w[gifts questions])

gifts = Gift.create([
  {
     "title":"Prophecy",
     "description":"The gift of prophecy is the special ability that God gives to certain members of the body of Christ to receive and communicate an immediate message of God to His people through a divinely-anointed utterance.",
     "verses": "Luke 7:26; Acts 15:32; Acts 21:9-11; Romans 12:6; 1 Corinthians 12:10,28; Ephesians 4:11-13"
  },
  {
     "title":"Pastor",
     "description":"The gift of pastor is the special ability that God gives to certain members of the body of Christ to assume a long-term personal responsibility for the spiritual welfare of a group of believers.",
     "verses": "John 10:1-18; Ephesians 4:11-13; 1 Timothy 3:1-7; 1 Peter 5:1-3"
  },
  {
     "title":"Teaching",
     "description":"The gift of teaching is the special ability that God gives to certain members of the body of Christ to communicate information relevant to the health and ministry of the body and its members in such a way that others will learn.",
     "verses": "Acts 18:24-28; Acts 20:20-21; Romans 12:7; 1 Corinthians 12:28; Ephesians 4:11-13"
  },
  {
     "title":"Wisdom",
     "description":"The gift of wisdom is the special ability that God gives to certain members of the body of Christ to know the mind of the Holy Spirit in such a way as to receive insight into how given knowledge may best be applied to specific needs arising in the body of Christ.",
     "verses": "Acts 6:3,10; 1 Corinthians 2:1-13; 1 Corinthians 12:8; James 1:5-6; 2 Peter 3:15-16"
  },
  {
     "title":"Knowledge",
     "description":"The gift of knowledge is the special ability that God gives to certain members of the body of Christ to discover, accumulate, analyze, and clarify information and ideas which are pertinent to the well being of the body.",
     "verses": "Acts 5:1:11; 1 Corinthians 2:14; 1 Corinthians 12:8; 2 Corinthians 11:6; Colossians 2:2-3"
  },
  {
     "title":"Exhortation",
     "description":"The gift of exhortation is the special ability that God gives to certain members of the body of Christ to minister words of comfort, consolation, encouragement, and counsel to other members of the body in such a way that they feel helped and healed.",
     "verses": "Acts 14:22; Romans 12:8; 1 Timothy 4:13; Hebrews 10:25"
  },
  {
     "title":"Discerning of Spirits",
     "description":"The gift of discerning of spirits is the special ability that God gives to certain members of the body of Christ to know with assurance whether certain behavior purported to be of God is in reality divine, human, or satanic.",
     "verses": "Matthew 16:21-23; Acts 5:1-11; Acts 16:16-18; 1 Corinthians 12:10; 1 John 4:1-6"
  },
  {
     "title":"Giving",
     "description":"The gift of giving is the special ability that God gives to certain members of the body of Christ to contribute their material resources to the work of the Lord with liberality and cheerfulness.",
     "verses": "Mark 12:41-44; Romans 12:8; 2 Corinthians 8:1-7; 2 Corinthians 9:2-8"
  },
  {
     "title":"Helps",
     "description":"The gift of helps is the special ability that God gives to certain members of the body of Christ to invest the talents they have in the life and ministry of other members of the body, with thus enabling those others to increase the effectiveness of their own spiritual gifts",
     "verses": "Mark 15:40-41; Luke 8:2-3; Acts 9:36; Romans 16:1-2; 1 Corinthians 12:28"
  },
  {
     "title":"Mercy",
     "description":"The gift of mercy is the special ability that God gives to certain members of the body of Christ to feel genuine empathy and compassion for individuals (both Christian & non – Christian) who suffer distressing physical, mental, or emotional problems, and to translate that compassion into cheerfully done deeds which reflect Christ’s love and alleviate the suffering",
     "verses": "Matthew 20:29-34; Matthew 25:34-40; Mark 9:41; Luke 10:33-35; Acts 11:28-3; Acts 16:33-34; Romans 12:8"
  },
  {
     "title":"Missionary",
     "description":"The gift of missionary is the special ability that God gives to certain members of the body of Christ to minister whatever other spiritual gifts they have in a second culture.",
     "verses": "Acts 8:4; Acts 13:2-3; Acts 22:21; Romans 10:15; 1 Corinthians 9:19-23; Ephesians 3:6-8"
  },
  {
     "title":"Evangelist",
     "description":"The gift of evangelist is the special ability that God gives to certain members of the body of Christ to share the gospel with unbelievers in such a way that men and women become Jesus’ disciples and responsible members of the body of Christ.",
     "verses": "Acts 8:5-6; Acts 8:26-40; Acts 14:21; Acts 21:8; Ephesians 4:11-13 ; 2 Timothy 4:5"
  },
  {
     "title":"Hospitality",
     "description":"The gift of hospitality is the special ability that God gives to certain members of the body of Christ to provide an open house and a warm welcome to those in need of food and lodging.",
     "verses": "Acts 16:14-15; Romans 12:9-13; Romans 16:23; Hebrews 13:1-2; 1 Peter 4:9"
  },
  {
     "title":"Faith",
     "description":"The gift of faith is the special ability that God gives to certain members of the body of Christ to discern with extraordinary confidence the will and purposes of God for His work.",
     "verses": "Acts 11:22-24; Acts 27:21-25; Romans 4:18-21; 1 Corinthians 12:9; Hebrews 11"
  },
  {
     "title":"Leadership",
     "description":"The gift of leadership is the special ability that God gives to certain members of the body of Christ to set goals in accordance with God’s purpose for the future and to communicate these goals to others in such a way that they voluntarily and harmoniously work together to accomplish these goals for the glory of God.",
     "verses": "Luke 9:51; Acts 7:10; Acts 15:7-11; Romans 12:8; 1 Timothy 5:17; Hebrews 13:17"
  },
  {
     "title":"Administration",
     "description":"The gift of administration is the special ability that God gives to certain members of the body of Christ to understand clearly the immediate and long range goals of a particular unit of the body of Christ and to devise and execute effective plans for the accomplishment of those goals.",
     "verses": "Luke 14:28-30; Acts 6:1-7; Acts 27:11; 1 Corinthians 12:28; Titus 1:5"
  },
  {
     "title":"Miracles",
     "description":"The gift of miracles is the special ability that God gives to certain members of the body of Christ to serve as human intermediaries through whom it pleases God to perform such powerful acts that are perceived by observers to have altered the ordinary course of nature.",
     "verses": "Acts 9:36-42; Acts 19: 11-20; Acts 20:7-12; Romans 15: 18-19; 1 Corinthians 12:10,28; 2 Corinthians 12:12"
  },
  {
     "title":"Healing",
     "description":"The gift of healing is the special ability that God gives to certain members of the body of Christ to serve as human intermediaries through whom it pleases God to cure illness and restore health apart from the use of natural means.",
     "verses": "Acts 3:1-10; Acts 5:12-16; Acts 9:32-35; Acts 28:7-10; 1 Corinthians 12:9,28"
  },
  {
     "title":"Tongues",
     "description":"The gift of tongues is the special ability that God gives to certain members of the body of Christ (a) to speak to God in a language they have never learned and/or (b) to receive and communicate an immediate message of God to His people through a divinely – anointed utterance in a language they have never learned.",
     "verses": "Mark 16:17; Acts 2:1-13; Acts 10:44-46; Acts 19:1-7; 1 Corinthians 12:10,28; 1 Corinthians 14:13-19"
  },
  {
     "title":"Interpretation",
     "description":"The gift of interpretation is the special ability that God gives to certain members of the body of Christ to make known in a vernacular the message of one who speaks in tongues.",
     "verses": "1 Corinthians 12:10,30; 1 Corinthians 14:13; 1 Corinthians 14:26-28"
  },
  {
     "title":"Voluntary Poverty",
     "description":"The gift of voluntary poverty is the special ability that God gives to certain members of the body of Christ to renounce material comfort and luxury and adopt a personal lifestyle equivalent to those living at the poverty level in a given society in order to serve God more effectively.",
     "verses": "Acts 2:44-45; Acts 4:34-37; 1 Corinthians 13:1-3; 2 Corinthians 6:10; 2 Corinthians 8:9"
  },
  {
     "title":"Celibacy",
     "description":"The gift of celibacy is the special ability that God gives to certain members of the body of Christ to remain single and enjoy it; to be unmarried and not suffer undue sexual temptations.",
     "verses": "Matthew 19:10-12; 1 Corinthians 7:7-8"
  },
  {
     "title":"Intercession",
     "description":"The gift of intercession is the special ability that God gives to certain members of the body of Christ to pray for extended periods of time on a regular basis and see frequent and specific answers to their prayers, to a degree much greater than that which is expected of the average Christian.",
     "verses": "Luke 22:41-44; Acts 12:12; Colossians 1:9-12; Colossians 4:12-13; 1 Timothy 2:1-2; James 5:14-16"
  },
  {
     "title":"Exorcism",
     "description":"The gift of exorcism is the special ability that God gives to certain members of the body of Christ to cast out demons and evil spirits.",
     "verses": "Matthew 12:22-32; Luke 10:12-20; Acts 8:5-8; Acts 16:16-18"
  },
  {
     "title":"Service",
     "description":"The gift of service is the special ability that God gives to certain members of the body of Christ to identify the unmet needs involved in a task related to God’s work, and to make use of available resources to meet those needs and to help accomplish the desired results.",
     "verses":"Acts 6:1-7; Romans 12:7; Galatians 6:2,10; 2 Timothy 1:16-18; Titus 3:14"
  },
  {
     "title":"Apostle",
     "description":"The gift of apostle is the special ability that God gives to certain members of the Body of Christ to assume and to exercise divinely imparted authority in order to esablish the foundational government of an assigned sphere of ministry within the Church. An apostle hears from the Holy Spirit and sets things in order accordingly for the Church's health, growth, maturity, and outreach. (Note: \"Church\" refers to the believers who gather weekly and also to the believers scattered in the workplace.)",
     "verses":"Luke 6:12-13; 1 Corinthians 12:28; Ephesians 2:20; Ephesians 4:11-13"
  },
  {
     "title":"Leading Worship",
     "description":"The gift of leading worship is the special ability that God gives to certain members of the Body of Christ to accurately discern the heart of God for a particular public worship service, to draw others into an intimate experience of God during the worship time and to allow the Holy Spirit to change directions and emphases as the service progresses.",
     "verses":"1 Samuel 16:23; 1 Chronicles 9:33 2 Chronicles 5:12-14"
  }
])

questions = Question.create(
  [
  {
    "question": "I have a desire to speak direct messages that I receive from God in order to edify, exhort or comfort others."
  },
  {
    "question": "I have enjoyed ministering to a certain group of people over a long period of time, sharing personally in their successes and their failures."
  },
  {
    "question": "People have told me that I helped them learn biblical truths in a meaningful way."
  },
  {
    "question": "I have applied spiritual truth effectively to critical situations in my own life."
  },
  {
    "question": "Others have told me I have helped them to discern key and important facts of scripture."
  },
  {
    "question": "I have verbally encouraged and helped people who are troubled or the discouraged."
  },
  {
    "question": "Others in my church have noted that I am able to see through phoniness before it is evident to other people."
  },
  {
    "question": "I find I manage money will in order to give liberally to the Lord’s work."
  },
  {
    "question": "I have assisted Christian leaders to relieve them for concentrating on their essential job."
  },
  {
    "question": "I have a desire to work with those who have physical and mental problems in order to alleviate their suffering."
  },
  {
    "question": "I feel comfortable relating to people of other cultures, and they seem to accept me."
  },
  {
    "question": "I have led others to a decision for salvation through faith in Christ."
  },
  {
    "question": "My home is always open to people who need a place to stay."
  },
  {
    "question": "When in a group, I am the one to whom others often look to for vision and direction."
  },
  {
    "question": "When I speak, people seem to listen and agree."
  },
  {
    "question": "When a group I am in is lacking organization, I love to step in to fill the gap."
  },
  {
    "question": "Others can point to specific instances in which my prayers have resulted in visible miracles."
  },
  {
    "question": "In the name of the Lord, I have been used in curing diseases instantaneously."
  },
  {
    "question": "I have spoken in tongues."
  },
  {
    "question": "Sometimes when a person speaks in tongues, I seem to know what God is saying through them."
  },
  {
    "question": "I could live more comfortably, but I choose not to in order to identify with the poor."
  },
  {
    "question": "I am single and enjoy it."
  },
  {
    "question": "I spend at least an hour a day in prayer."
  },
  {
    "question": "I have spoken directly to evil spirits, and they have obeyed me."
  },
  {
    "question": "I enjoy being called on to do odd jobs around the church/for the church."
  },
  {
    "question": "A number of pastors and/or ministry leaders have told me that they desire to minister and to be held accountable under my spiritual covering/leadership."
  },
  {
    "question": "I have an insatiable appetite (great desire) for the presence of God."
  },
  {
    "question": "Through God I have been used to reveal to others specific things that will happen in the future, and they have come to pass."
  },
  {
    "question": "I have enjoyed assuming the responsibility for the spiritual well being of a particular group of Christians."
  },
  {
    "question": "I feel I can explain the New Testament teaching about the health and ministry of the body of Christ in a relevant way."
  },
  {
    "question": "I can intuitively arrive at solutions to fairly complicated problems."
  },
  {
    "question": "I have had insights relating to spiritual truth that others have said helped bring them closer to God."
  },
  {
    "question": "I can effectively motivate people to get busy and do what they are supposed to do."
  },
  {
    "question": "I can “see” the Spirit of God resting on certain people from time to time."
  },
  {
    "question": "My giving records show that I contribute considerably more than 10 percent of my income to the Lord’s work."
  },
  {
    "question": "Other people have told me that I have helped them become more effective in their ministries."
  },
  {
    "question": "I have offered to care for others when they have had material or physical needs."
  },
  {
    "question": "I feel I could learn another language well in order to minister to those in a different culture."
  },
  {
    "question": "I have shared joyfully how Christ has brought me to Himself in a way that is meaningful to nonbelievers."
  },
  {
    "question": "I enjoy taking charge of church suppers, potlucks or social events."
  },
  {
    "question": "I have believed God for the impossible and seen it happen in a tangible way."
  },
  {
    "question": "Other Christians have followed my leadership because they trusted me."
  },
  {
    "question": "I enjoy handling the details of organizing ideas, people, resources and time for more effective ministry."
  },
  {
    "question": "God has used me personally to perform supernatural signs and wonders."
  },
  {
    "question": "I enjoy praying for sick people because I know ahead of time that many of them will be healed as a result."
  },
  {
    "question": "I have spoken an immediate message of God to His people in a language I have never learned."
  },
  {
    "question": "I have interpreted public tongues with the result that the Body of Christ (a church) was edified, exhorted or comforted."
  },
  {
    "question": "Living a simple lifestyle is an exciting challenge for me."
  },
  {
    "question": "Other people have noted that I feel more indifferent about not being married than most."
  },
  {
    "question": "When I hear an urgent prayer request, I pray for that need for several days."
  },
  {
    "question": "I have actually heard a demon speak in a loud voice."
  },
  {
    "question": "I don’t have many special skills, but I volunteer to do what needs to be done around the church."
  },
  {
    "question": "I am known as a leader of leaders."
  },
  {
    "question": "I intuitively know what should happen next in a worship service."
  },
  {
    "question": "People have told me that I have communicated timely and urgent messages that must have come directly from the Lord."
  },
  {
    "question": "I feel unafraid of offering spiritual guidance and direction to a group of Christians."
  },
  {
    "question": "I can devote considerable time to learning new biblical truths in order to communicate them to others."
  },
  {
    "question": "When other people have a problem, I can frequently guide them to the best biblical solution."
  },
  {
    "question": "Through study or experience I have discerned major strategies or techniques that God seems to use in furthering His kingdom."
  },
  {
    "question": "People come to me in their afflictions (hardship) or suffering because they know that I will listen to them and understand."
  },
  {
    "question": "I can tell with a fairly high degree of assurance when an evil spirit afflicts a person."
  },
  {
    "question": "When I am moved by an appeal to give to God’s work, I usually can find the money I need to help."
  },
  {
    "question": "I have enjoyed doing routine tasks that have allowed more effective ministry on the part of others."
  },
  {
    "question": "I enjoy visiting in hospitals and/or retirement homes, and feel I do well in such ministry."
  },
  {
    "question": "People of different race or culture have been attracted to me, and we have related well."
  },
  {
    "question": "Non‐Christians have noted that they feel comfortable when they are around me, and that I have a positive effect on them toward developing a faith in Christ."
  },
  {
    "question": "When people come to our home, they indicate that they “feel at home” with us."
  },
  {
    "question": "Other people have told me that I had faith to accomplish what seemed impossible to them."
  },
  {
    "question": "When I set goals, others seem to accept them readily."
  },
  {
    "question": "I have been able to make effective and efficient plans for accomplishing the goals of a group."
  },
  {
    "question": "God regularly seems to do impossible things through my life."
  },
  {
    "question": "Others have told me that God healed them of an emotional problem when I ministered to them."
  },
  {
    "question": "I can speak to God in a language I have never learned."
  },
  {
    "question": "I have prayed that I may interpret if someone begins to speak in tongues."
  },
  {
    "question": "I am not poor, but I can warmly identify with poor people."
  },
  {
    "question": "I am glad I have more time to serve the Lord because I am single."
  },
  {
    "question": "Day in and day out, intercessory prayer is one of my favorite ways of spending my time."
  },
  {
    "question": "Others call on me when they suspect that someone is demonized."
  },
  {
    "question": "Others have mentioned that I seem to enjoy routine tasks and do well at them."
  },
  {
    "question": "Christian leaders seem pleased to work under my leadership, and they respect my authority when we undertake a common task."
  },
  {
    "question": "During worship, I can often tell if there is a spiritual force attempting to hinder our connection with God."
  },
  {
    "question": "I sometimes have a strong sense of what God wants to say to people in response to particular situations. "
  },
  {
    "question": "I have helped fellow believers by guiding them to relevant portions of the Bible and praying with them."
  },
  {
    "question": "I feel I can communicate significant truths to others and see resulting changes in knowledge, attitudes, values or conduct."
  },
  {
    "question": "Some people indicate that I have perceived and applied biblical truths to the specific needs of fellow believers."
  },
  {
    "question": "I study and read quite a bit in order to learn new biblical truths."
  },
  {
    "question": "I have a desire to effectively counsel those in need."
  },
  {
    "question": "I can recognize whether a person’s teaching or actions are from God, from Satan, or of human origin."
  },
  {
    "question": "I am so confident that God will meet my financial needs that I do not hesitate to give to His work sacrificially and consistently."
  },
  {
    "question": "When I do things behind the scenes and others are helped, I am joyful."
  },
  {
    "question": "People call on me to help those who are less fortunate."
  },
  {
    "question": "I would be willing to leave comfortable surroundings if it would enable me to share Christ with less‐fortunate people."
  },
  {
    "question": "I get frustrated when others don’t seem to share their faith with nonbelievers as much as I do."
  },
  {
    "question": "Others have mentioned to me that I am a very hospitable person."
  },
  {
    "question": "There have been times when I have felt sure I know God’s specific will for the future growth of His work, even when others have not been so sure."
  },
  {
    "question": "When I am part of a group, others seem to back off and expect me to take the leadership."
  },
  {
    "question": "I am able to give directions to others without using persuasion to get them to accomplish a certain task."
  },
  {
    "question": "People have told me that I was God’s instrument that brought supernatural change in lives or circumstances."
  },
  {
    "question": "I have prayed for others and instantaneous physical healing has often occurred."
  },
  {
    "question": "When I gave a public message in tongues, I expect it to be interpreted."
  },
  {
    "question": "I have interpreted tongues in a way that seemed to bless others."
  },
  {
    "question": "Others tell me that I sacrifice too much materially in order to fulfill God’s calling."
  },
  {
    "question": "I am single and have little difficulty controlling my sexual desires."
  },
  {
    "question": "Others have told me that my prayers for them have been answered in tangible ways."
  },
  {
    "question": "Other people have been instantly delivered from demonic oppression when I have prayed."
  },
  {
    "question": "I prefer being active and doing something rather than just sitting around talking, reading or listening to a speaker."
  },
  {
    "question": "I regularly receive revelation from God as to what the Holy Spirit is currently saying to the Church."
  },
  {
    "question": "Others have told me that my worship helps them enter into the presence of God."
  },
  {
    "question": "I frequently feel that I know exactly what God wants to do in ministry as a specific point in time."
  },
  {
    "question": "People with needs have told me that I have helped them be restored to the Christian community."
  },
  {
    "question": "Studying the Bible and sharing my insights with others are very satisfying form me."
  },
  {
    "question": "I have felt an unusual presence of God and personal confidence when important decisions needed to be made."
  },
  {
    "question": "I have the ability to discover new truths for myself through reading or observing situations firsthand."
  },
  {
    "question": "I have helped others find a biblical solution to their affliction or suffering."
  },
  {
    "question": "I can tell whether a person speaking in tongues is genuine."
  },
  {
    "question": "I have been willing to maintain a lower standard of living in order to benefit God’s work."
  },
  {
    "question": "When I serve the Lord, I truthfully don’t care if someone else gets the credit for what I do. "
  },
  {
    "question": "I frequently enjoy spending time with a lonely, shut‐in person or with someone in prison."
  },
  {
    "question": "More than most, I have had a strong desire to see people of other countries won to the Lord."
  },
  {
    "question": "I am attracted to nonbelievers mainly because of my desire to win them to Christ. "
  },
  {
    "question": "I have desired to make my home available to those in the Lord’s service whenever needed."
  },
  {
    "question": "Others have told me that I am a person of unusual vision, and I agree."
  },
  {
    "question": "When I am in charge, things seem to run smoothly."
  },
  {
    "question": "I have enjoyed bearing the responsibility for the success of a particular task within my church or in the workplace."
  },
  {
    "question": "In the name of the Lord, I have been able to help blind people receive their sight."
  },
  {
    "question": "When I pray for the sick, either I or they feel sensations of tingling or warmth."
  },
  {
    "question": "When I speak in tongues to a group, I believe it is edifying to the church."
  },
  {
    "question": "I have interpreted tongues in such a way that the message appeared to be directly from God."
  },
  {
    "question": "Poor people accept me easily because I choose to live on their level."
  },
  {
    "question": "I readily identify with Paul’s desire for others to be single as he was."
  },
  {
    "question": "When I pray, God frequently speaks to me, and I recognize His voice."
  },
  {
    "question": "I regularly cast out demons in Jesus’ name."
  },
  {
    "question": "I respond cheerfully when asked to do a job, even if it seems menial."
  },
  {
    "question": "When I call Christian leaders to come together for a certain purpose, a significant number of them respond."
  },
  {
    "question": "I have a compelling desire to lead others into an experience with God."
  }
]
)