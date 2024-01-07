import 'package:newsfeed_test/data/datasources/service.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';

class MockService implements RestClient {
  @override
  Future<ResponseWrapper<List<NewsArticle>?>> getNewsArticles(
      String? country, String? language, String? page, String? category) {
    return Future.value(
      ResponseWrapper.fromJson({
        "status": "success",
        "totalResults": 6907,
        "results": [
          {
            "article_id": "16b5b87b84ffa74c4df198ec4c1866ba",
            "title":
                "GM Steve Staios looking for veteran help to assist the Senators' young core",
            "link":
                "https://ottawasun.com/sports/hockey/nhl/ottawa-senators/gm-steve-staios-looking-for-veteran-help-to-assist-the-senators-young-core",
            "keywords": ["hockey", "ottawa senators"],
            "creator": ["Bruce Garrioch"],
            "video_url": null,
            "description": null,
            "content":
                "Article content Steve Staios wants to give the kids a helping hand. The Ottawa Senators’ president of hockey operations and general manager confirmed Friday he’d like to add at least one veteran player to the roster if he can find the right fit before the National Hockey League’s March 8 trade deadline. As Postmedia reported earlier this week, the Senators would like to find a good fit for their third line, someone who could play a big role and help support alternate captain Claude Giroux by acting as a leader for the young players. Speaking to The Jason Gregor Show on Sports 1440 in Edmonton on Friday night, Staios was asked about the value of bringing in more veteran players. He agreed that could be helpful, especially with a young group like the Senators. He noted he’d like to add “a veteran player if we could” to the current group. “The market often dictates things in certain areas to be able to move this thing in the right direction,” Staios said as the Senators prepared to face the Oilers at Rogers Place Arena on Saturday night. “We’ll be out (looking) and we’re being aggressive to try to identify those areas. “Regardless of where you think your team is, I think (the deadline) is an important time to try to take advantage of certain situations, if they’re there. To try to force something into your team or to try something rash is never been what we’ve set out to do here. “We’ve taken a process-driven approach. It’s not patience because we work at it every day, and, if there are opportunities, we’ll take advantage of it. Certainly, it’s going to have to make sense. Time will tell on what the opportunities might become as we get closer to the deadline.” Staios said he felt the expectations for the current group had been too high coming into the season because the Senators didn’t have the necessary experience to figure out a way forward when they weren’t playing well. “These young players are eager and they never cheat me on effort,” Staios said. “This core group works every night. Claude Giroux has been perfect for this group because he’s lived it, seen it and been a captain. “The other element is that in a Canadian market and some of the bold statements that were made about this group prior to me coming on. They raised the expectations and when you have high character players like I feel we do, you almost extend yourself even further. “That’s a good problem to have but I think that’s the growth phase that we’re in as an organization.” The Senators will make one addition, with Shane Pinto set to return Jan. 21 against the Philadelphia Flyers. Staios said he expected to Pinto, who has nearly finished his 41-game NHL suspension, to suit up for that game, and he would be allowed to resume skating with the club next Wednesday. The belief is the Senators will sign Pinto, a restricted free agent, to a one-year deal close to the \$800,000 qualifying offer he received last summer, but the talk in league circles is the club has had some talks regarding a long-term extension with his New York-based agent, Lewis Gross. That’s unlikely to be the case, but it has been discussed. “He’s skating now and will officially rejoin our team on Jan. 10 and he’ll start practising with our group leading into coming back to play for us,” Staios said. Though the decision to bring back veteran coach Jacques Martin and former captain Daniel Alfredsson as an assistant coach hasn’t had the desired effect, with the Senators remaining in last place in the Eastern Conference, Staios has seen progress. Staios praised the approach Martin had brought, but didn’t commit to bringing him back next season. The expectation is he’ll finish out the season with Alfredsson and then Martin will return to a senior advisory role within the organization. “Jacques brings an incredible amount of professionalism, detail and discipline to the game and he’s instilling that,” Staios said. “It takes time for a new coaching staff to be able to do that. The amount of respect that Daniel Alfredsson, with his experience and competitiveness, I feel that’s a good combination to be able to continue to nurture this group and what they’ll need to continue to work on as individuals and as a team. “It’s a longer evaluation. We studied the championship team and, as far as timing of it, if you look at when the Tampa Bays of the world drafted their core players, there was quite a bit of time before they got to championship form. That needs to be understood. “I believe this is the right group with Jacques, Alfie and, of course, Jack Capuano, who has been a head coach in this league, to really dig on those details it’s going to take. Unfortunately, it will take time. We’re all competitive people and we want to win every night and our players believe they can win every night. “We’re balancing that with making sure this build is done properly and we are ready to go when this team is truly ready.” bgarrioch@postmedia.com",
            "pubDate": "2024-01-05 23:43:46",
            "image_url":
                "https://smartcdn.gprod.postmedia.digital/ottawasun/wp-content/uploads/2024/01/steve-staios_jo14.jpg?quality=100&strip=all",
            "source_id": "ottawasun",
            "source_priority": 237991,
            "country": ["canada"],
            "category": ["sports"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "ead8ada4e107cf72d7ba6edf9053420d",
            "title":
                "From Houthis to Hezbollah, a look at the Iran-allied groups rallying to arms around Middle East",
            "link":
                "https://www.ctvnews.ca/world/from-houthis-to-hezbollah-a-look-at-the-iran-allied-groups-rallying-to-arms-around-middle-east-1.6713737",
            "keywords": null,
            "creator": ["The Associated Press"],
            "video_url": null,
            "description":
                "Here's a breakdown of the armed groups facing the United States and Israel in the Middle East, a look at what unites some of them, and what's different about each.",
            "content":
                "Missiles, rockets and drones struck targets around the Middle East this week as the United States, Israel and others clashed with Iran-allied militant groups -- with attacks hitting in vital Red Sea shipping lanes, along Israeli-Lebanon borders emptied by fleeing residents and around the region's crowded capitals and U.S. military installations. Together, Israel and its U.S. allies were facing two realities they knew all too well going into the war in Gaza: The Gaza-based Hamas militant group is far from alone as it battles for its survival. And by launching an all-out campaign to eliminate Hamas as a fighting force, Israeli and American leaders also are confronting simultaneous attacks from a strengthening defensive alliance of other armed militant groups linked with Hamas and Iran. Complete coverage of the Israel-Hamas war This week, the risk of being drawn into a wider, more chaotic and deadlier conflict with an array of regional enemies loomed large. U.S. Secretary of State Antony Blinken and other senior Biden administration envoys were travelling to Middle East capitals on Friday to calm tensions and deter further attacks. Here's a breakdown of the armed groups facing the United States and Israel in the Middle East, a look at what unites some of them, and what's different about each. THE SITUATION The United States is scrambling to quell attacks by a range of armed groups that are allied to Iran and to each other. They are: -- Hamas in Gaza; -- powerful Hezbollah, the dominant force in Lebanon; -- smaller militias in Iraq and Syria; -- Houthis in the poor Arabian peninsula country of Yemen, who are sometimes seen as more of the loose cannons of the alliance. All the groups have escalated attacks on U.S., Israeli or global targets within their reach since Israel launched its war in Gaza on Oct. 7, after Hamas's deadly cross-border raids. The aim of Iran and of the armed groups at large is to aid Hamas with attacks that distract the focus of Israel and the United States, and that make the military, economic and political costs of continuing the war against Hamas too great for Israel and the United States. The groups don't necessarily want further additional escalation themselves, given their odds in any all-out confrontation with two of the world's strongest militaries, experts say. But under the leadership of the late Iranian Gen. Qassem Soleimani, who was killed by the U.S. in 2020 , the far-flung array of Iranian-allied militias knitted themselves into a more cohesive network. They also grew into a common understanding, said Randa Slim, a regional analyst with the Washington-based Middle East Institute: When the survival of any one was threatened, all would rally. THE PLAYERS: ------ HAMAS WHAT: Based in Gaza. Founded in 1987 at a time of widespread protests by Palestinians against Israel's occupation. Has early ties to one of the Sunni world's most prominent groups, the Muslim Brotherhood, founded in Egypt in the 1920s. Has vowed to annihilate Israel and has carried out suicide bombings and other deadly attacks on civilians and Israeli soldiers. BACKGROUND: Hamas seized control of Gaza by force in 2007, the year after it won parliamentary elections there with 44 per cent of the vote. Israel has kept Gaza under a devastating blockade ever since, restricting movement of people and goods in and out of the territory. Hamas receives backing from Arab and Muslim countries, including Qatar and Turkey. Although a Sunni Muslim group, Hamas leaders have moved closer to Shiite Muslim Iran and its allies over the years. Hamas's Oct. 7 attacks in Israel were seen by many as Hamas' bid to reclaim relevance on the world stage. Israel's far-right government had sidelined any attempt at a negotiated Israeli-Palestinian political agreement, and world attention faded away. HEZBOLLAH WHAT: Formed in 1982 in response to the Israeli invasion of Lebanon, where it is based. One of the strongest members of the Iran-allied alliance, militarily and organizationally. A Shiite Muslim group. Took part in repeated attacks against the United States through the mid-1990s, including the deadly 1983 bombing of a U.S. Marines barrack in Beirut, Lebanon's capital. Has participated in Lebanon's government since 1992. Its military wing is stronger than the country's armed forces. BACKGROUND: A 2006 war with Israel provoked by Hezbollah's kidnapping of Israeli soldiers devastated southern Lebanon and Beirut. Many ordinary Lebanese are deeply fearful of a new war with Israel in the wake of the Gaza fighting. Wary of a repeat of the war itself, Hezbollah has lobbed rockets and missiles across its southern border into Israel since the start of the war in Gaza, losing fighters daily in return fire, but held back from further dramatic escalation. That may have changed with a presumed Israeli strike this week that killed a Hamas leader sheltering in Lebanon . Hezbollah leader Hassan Nasrallah said Friday that his group had to retaliate, or else all of Lebanon would be vulnerable to Israeli attack. HOUTHIS WHAT: Based in Yemen, overseeing one of the world's most vital shipping routes for oil and other trade. Have launched rockets, missiles and drones at commercial vessels during the Gaza war. Forced some major shippers to change route and threatens a potentially major toll on the world's economy. Formally known as Ansar Allah. Had its start as one of several armed groups vying internally for power in fractured, impoverished Yemen. While Shiite Muslim, it's of a different branch than Iran. Group's motto calls for destruction of Israel and the United States, though it has been largely focused on affairs in Yemen. BACKGROUND: At odds with Yemen's government, Houthis seized control of Yemen's capital in 2014 and soon controlled much of the north. After Saudi Arabia and the United Arab Emirates opened attack in 2015 in an unsuccessful attempt to rout the Houthis, the Houthis moved increasingly close to Iran as a source of materiel support. Saudi and U.S. attempts to formally end the Saudi-led war in Yemen have failed to bring Yemen's war to a close, but had succeeded in stopping what were sporadic missile and drone strikes by the Houthis against their richer Gulf neighbours. The Houthis, who have limited popular support in Yemen outside of their immediate base, are seen as more independent of Iran in their actions than some of the other groups in the alliance. The strikes on shipping since Israel launched its campaign in Gaza are some of the Houthis' first outward-facing attacks, other than at its Gulf enemies. IRAN-ALLIED MILITIAS IN SYRIA AND IRAQ WHAT: Array of smaller Iranian-backed militant groups that have battled with U.S. and coalition forces in Iraq and Syria for years. Mount sporadic attacks against bases in the region where U.S. troops are deployed to fight Islamic State group insurgents. BACKGROUND: There has been a dramatic spike in attacks by Iran's proxies in those two countries since the open of the war between Israel and Hamas. Iraq says it is working with the U.S. to contain the militias there. On Thursday, the U.S. unleashed an airstrike against the headquarters of an Iran-backed militia in central Baghdad, killing a high-ranking militia commander. It was an attempt to discourage more attacks. THE ISLAMIC STATE, AL-QAIDA, OTHER ARMED SUNNI MUSLIM GROUPS WHAT: Israel's deadly military campaign in Gaza, and the United States' support for it, are sparking calls to action by violent extremist groups that have long battled the West and other enemies. BACKGROUND: On Thursday, a spokesman for the Islamic State called on Muslims around the world to carry out killings in what he said would be vengeance for the people of Gaza. \"Oh lions of Islam, hunt your prey -- the Jews, Christians, and their allies -- in the streets and alleyways of America, Europe, and the world,\" Abu Hudhayfa al-Ansar said in a speech transcribed by the SITE intelligence group. \"Break into their homes, kill them, and torment them in every way you can.\" ------ Associated Press journalist Ellen Knickmeyer has reported from Gaza, Yemen, Lebanon, Iraq and Syria over more than two decades reporting in and on the Middle East.",
            "pubDate": "2024-01-05 23:43:42",
            "image_url":
                "https://www.ctvnews.ca/content/experience-fragments/ctv_news/national/world/world-boa/master/_jcr_content/root/responsivegrid_27151/responsivegrid_78099/teaser_copy_copy_cop_1623448575.coreimg.png/1650379707643/ctv-news-app-promo.png",
            "source_id": "ctvnews_vancouverisland",
            "source_priority": 7722,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "b23e71026868947b34cfdb3ac7313ee1",
            "title":
                "N.Y. seeks \$370 million in penalties in Trump’s civil fraud trial. His response: ’They should pay me’",
            "link":
                "https://montrealgazette.com/news/world/n-y-seeks-370-million-in-penalties-in-trumps-civil-fraud-trial-his-response-they-should-pay-me",
            "keywords": ["world"],
            "creator": ["The Associated Press"],
            "video_url": null,
            "description":
                "The case could end up barring him from doing business in the state where he built his real estate empire.",
            "content":
                "Article content NEW YORK — New York state lawyers increased their request for penalties of more than US\$370 million Friday in Donald Trump’s civil business fraud trial. He retorted: “They should pay me.” The exchange came as lawyers for both sides filed papers highlighting their takeaways from the trial in court filings ahead of closing arguments, set for next Thursday. Trump is expected to attend, though plans could change. It will be the final chance for state and defense lawyers to make their cases. The civil lawsuit, which accuses the leading Republican presidential hopeful of deceiving banks and insurers by vastly inflating his net worth, is consequential for him even while he fights four criminal cases in various courts. The New York civil case could end up barring him from doing business in the state where he built his real estate empire. On top of that, state Attorney General Letitia James is seeking the \$370 million penalty, plus interest — up from a pretrial figure of \$250 million, nudged to over \$300 million during the proceeding. The state says the new sum reflects windfalls from wrongdoing, chiefly \$199 million in profits from property sales and \$169 million in savings on interest rates, as calculated by an investment banking expert hired by James’ office. Trump bristled at the proposed penalty in an all-caps post on his Truth Social platform, insisting anew “there was no victim, no default, no damages.” He complained the attorney general was seeking \$370 million and instead “should pay me,” asserting businesses are fleeing New York. (According to the state Labor Department, the number of private sector jobs in New York increased one per cent in the year that ended this past November, compared with 1.6 per cent nationally.) James’ office argued in a filing Friday that Trump, his company and executives clearly intended to defraud people. “The myriad deceptive schemes they employed to inflate asset values and conceal facts were so outrageous that they belie innocent explanation,” state lawyer Kevin Wallace wrote. The state alleges Trump and his company ginned up exorbitant values for golf courses, hotels, and more, including Trump’s former home in his namesake tower in New York and his current home at the Mar-a-Lago club in Palm Beach, Fla. The numbers were listed on personal financial statements that netted him attractive rates on loans and insurance, leaving him money to invest in other projects and even his 2016 presidential campaign, James’ office says. The defendants, including Trump’s sons Donald Jr. and Eric, deny any wrongdoing. The former president has painted the case as a political maneuver by James, Judge Arthur Engoron and other Democrats, saying they’re abusing the legal system to try to cut off his chances of winning back the White House this year. He asserts his financial statements actually came in billions of dollars low, and any overestimations — such as valuing his Trump Tower penthouse at nearly three times its actual size — were mere mistakes and made no difference in the overall picture of his fortune. He also says the documents are essentially legally bulletproof because they said the numbers weren’t audited, among other caveats. Recipients understood them as simply starting points for their own analyses, the defence says. None of Trump’s lenders testified that wouldn’t have made the loans or would have charged more interest if his financial statements had shown different numbers, and 10-plus weeks of testimony produced “no factual evidence from any witness that the gains were ill-gotten,” attorneys Michael Madaio and Christopher Kise wrote in a filing Friday. Nor, they said, was there proof= insurers were ripped off. Separately, defence lawyers argued claims against executive vice-presidents Eric Trump and Donald Trump Jr. should be dismissed because they never had “anything more than a peripheral knowledge or involvement in the creation, preparation, or use of” their father’s financial statements. The sons relied on the work of other Trump Organization executives and an outside accounting firm that prepared those documents, attorneys Clifford Robert and Michael Farina said, echoing the scions’ own testimony. Their father also took the stand, disputing the allegations, decrying the case as political and criticizing the judge and the attorney general. James’ office argued in its filing Friday that Trump was “not a credible witness.” “He was evasive, gave irrelevant speeches and was incapable of answering questions in a direct and credible manner,” Wallace wrote. The verdict is up to the judge because James brought the case under a state law that doesn’t allow for a jury. Engoron has said he hopes to decide by the end of this month. He will weigh claims of conspiracy, insurance fraud and falsifying business records. But he ruled before trial on the lawsuit’s top claim, finding that Trump and other defendants engaged in fraud for years. With that ruling, the judge ordered a receiver take control of some of the ex-president’s properties, but an appeals court has frozen that order for now. During the trial, Engoron fined Trump a total of \$15,000 after finding that he violated a gag order that barred all trial participants from commenting publicly on the judge’s staff. The order was imposed after Trump maligned the judge’s principal law clerk. Trump’s lawyers are appealing the gag order.",
            "pubDate": "2024-01-05 23:43:11",
            "image_url":
                "https://smartcdn.gprod.postmedia.digital/montrealgazette/wp-content/uploads/2024/01/trump-fraud-lawsuit.jpg?quality=90&strip=all&w=288&h=216&sig=HzA4a5dTEi-Jokx1lONjuQ",
            "source_id": "montrealgazette",
            "source_priority": 45963,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "7faeff02e224fde9fa7f567614134d3f",
            "title":
                "Family grieves daughter who died after Thunder Bay police did not respond to 911 call",
            "link":
                "https://www.castanet.net/news/Canada/465763/Family-grieves-daughter-who-died-after-Thunder-Bay-police-did-not-respond-to-911-call",
            "keywords": null,
            "creator": ["The Canadian Press"],
            "video_url": null,
            "description":
                "The family of a woman found dead in northern Ontario after officers reportedly did not respond to a 911 call say the case raises concerns about the treatment of First Nations women by Thunder Bay police. The family of Jenna Ostberg, in a statement shared by the Windigo First Nations Council, ask...",
            "content":
                "The family of a woman found dead in northern Ontario after officers reportedly did not respond to a 911 call say the case raises concerns about the treatment of First Nations women by Thunder Bay police. The family of Jenna Ostberg, in a statement shared by the Windigo First Nations Council, asked for privacy as they \"grieve the loss of their daughter who died under tragic circumstances.\" Ontario's police watchdog says a 21-year-old woman was found dead at a residence in Thunder Bay on Saturday. The Special Investigation Unit says police did not respond to the scene after an initial 911 domestic disturbance call was made from the residence, or to a follow-up call to \"cancel\" the first call for service. The family says they will wait for the results of a coroner's report, as well as more information from the SIU, before they make further comment or decide how to proceed. But the statement says the family fears their daughter \"is the latest victim of inadequate and unjust policing services received by First Nation women in particular, in Thunder Bay.\" A number of probes in recent years have concluded systemic racism toward Indigenous people exists in the Thunder Bay Police Service at an institutional level, citing examples of sudden-death cases being inadequately investigated due to racist attitudes and stereotyping. A spokesman for the service says he could not comment further Friday, referring to rules preventing police from releasing details about an incident being investigated by the SIU, but directed The Canadian Press to a statement from the police union. The Thunder Bay Police Association's statement Friday urged the SIU director to release further details about the case \"aimed at ensuring transparency among community members and to safeguard trust\" between the police and community.",
            "pubDate": "2024-01-05 23:43:00",
            "image_url":
                "https://www.castanet.net/content/2024/1/20240105170120-65988092e1e5841153fd5329jpeg_p3752752.jpg",
            "source_id": "kamloopsthisweek",
            "source_priority": 538927,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "65b9d98c6537699bf3e8ca848159c376",
            "title":
                "Justin Trudeau’s plane breaks down during lavish Jamaican holiday: Report",
            "link":
                "https://torontosun.com/news/national/justin-trudeaus-plane-breaks-down-during-lavish-jamaican-holiday-report",
            "keywords": [
              "canada",
              "jamaica",
              "justin trudeau",
              "liberals",
              "planes",
              "vacation"
            ],
            "creator": ["Postmedia News"],
            "video_url": null,
            "description":
                "Second time in four months a PM plane has been grounded",
            "content":
                "Justin Trudeau’s latest vacation gaffe has taken yet another turn. On the heels of news that the Prime Minister and his family were gifted the Christmastime getaway – at a former slave plantation in Jamaica – comes word the Canadian Armed Forces sent a second plane to Jamaica this week. Why? The military aircraft that brought Trudeau to the Caribbean island for the family vacation reportedly became “unserviceable.” Andrée-Anne Poulin, spokesperson for the Department of National Defence (DND), confirmed two Royal Canadian Air Force CC-144 Challengers travelled to Jamaica, according to a CBC report on Friday. “The first aircraft that transported the Prime Minister’s party became unserviceable after arrival,” Poulin wrote in an emailed response, per the CBC report. “The second aircraft brought a maintenance team to repair the first aircraft, and remained in the area as a backup for the Prime Minister’s departure, if necessary.” It was not immediately clear what happened to Trudeau’s plane or when it became unserviceable. It’s also not clear what costs might be associated with the aircraft issues. The plane that took the Prime Minister to Jamaica was one of the military’s newer Challenger aircraft. It’s the second instance in less than four months where a plane transporting Trudeau was grounded due to mechanical issues. Trudeau’s departure from India after a G20 summit meeting September was delayed two days after pre-flight checks showed a part on the CC-150 Polaris was faulty and had to be replaced. Security protocol dictates that Trudeau is required to travel on military planes. Trudeau and family members flew to Montego Bay, Jamaica on Dec. 26. The PMO originally said he would be paying for his family’s accommodations but later flip-flopped and said Trudeau and his family were staying in Jamaica “at no cost at a location owned by family friends.” The Prime Minister’s Office declined to comment on the problems with the plane Friday, per the CBC, and referred questions to DND. On Thursday afternoon, flight tracking sites showed the two Challengers flying back to Ottawa with the second one not far behind the PM’s plane. Trudeau’s vacations have raised many an eyebrow. His trip to visit the Aga Khan on a private island in 2016 resulted in a former ethics commissioner finding Trudeau violated ethics rules that prohibit ministers from accepting gifts or other advantages. The Jamaican property currently rents out for \$7,000 USD per night meaning the nine-night trip – from Dec. 26 to Jan. 4 – could have cost \$63,000 USD or \$84,000 CAD just for the accommodation.",
            "pubDate": "2024-01-05 23:42:59",
            "image_url": null,
            "source_id": "torontosun",
            "source_priority": 12198,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "98301058e8a57d671f760711f855b598",
            "title":
                "Winnipeg military team parachuted into remote Northwest Territories to rescue plane crash survivors",
            "link":
                "https://www.cbc.ca/news/canada/manitoba/air-tindi-plane-crash-rescue-nwt-1.7076154?cmp=rss",
            "keywords": ["news/canada/manitoba"],
            "creator": null,
            "video_url": null,
            "description":
                "A military search and rescue team from 17 Wing Winnipeg navigated through treacherous terrain and weather to save 10 people whose plane had crashed about 300 kilometres north of Yellowknife last week.",
            "content":
                "A military search and rescue team from 17 Wing Winnipeg navigated through treacherous terrain and weather to save 10 people whose plane had crashed about 300 kilometres north of Yellowknife last week. The Twin Otter plane operated by Air Tindi, a Yellowknife-based airline, was carrying eight passengers and two crew members when it went down on the afternoon of Dec. 27. The search and rescue team was dispatched that night on a Royal Canadian Air Force CC-130 Hercules. Hercules aircraft commander Capt. Jason Shaw said the team was able to find the crash site using satellite tracking. But the low visibility and strong winds that evening made it difficult to get into position so that rescuers could parachute to the site, Shaw said. WATCH | Military team describes rescue: Military team rescues passengers from N.W.T. plane crash 1 hour ago Duration 1:09 Sgt. Vincent C-Benoit describes what he and his team members found when they arrived at the site of a plane crash in a remote area northeast of Yellowknife. \"It looked like the clouds were coming up a little bit and we might have a small window to make that happen,\" he said in an interview with CBC on Friday. \"So we took all the information we had at that time [and] made the decision to deploy them as soon as we could.\" Finding the passengers Sgt. Vincent C-Benoit was among three search and rescue technicians who parachuted in from an altitude of 2,000 feet (just over 600 metres) with medical supplies, food and survival gear in the cold, dark night. Once on the ground, they found six passengers who had taken shelter in a tent that was part of the plane's survival gear, Benoit said. Four others were still inside the downed aircraft. \"They did their own survival shelter, but it was quite exposed with the wind,\" he said. The search and rescue team was transported via a Royal Canadian Air Force CC-130 Hercules from 17 Wing Winnipeg. (Justin Fraser/CBC) The team treated the four passengers who were stuck inside the plane while setting up heated tents close to the wreckage to help protect the six other passengers from the elements. Benoit said the team also had help from members of an emergency response team from the nearby Diavik diamond mine, who headed to the crash site on snowmobiles. \"It was quite the trouble for them at night and in the blizzard, but they were able to come and help and I was really happy to see them,\" said Benoit. The crash happened about 16 kilometres southeast of the Diavik diamond mine, but the privately chartered flight wasn't carrying passengers to or from the camp, Air Tindi's president previously said. Making it through the night Even after the rescuers arrived, it still took several hours for everyone who was on the plane to be evacuated from the crash site. Benoit said he was honest with the passengers, telling them they wouldn't be picked up until the morning. \"My first thing I told him is, 'You're not out of the woods yet and there's help, there's extraction coming, but it won't be until the morning, so you gotta stay in the fight,'\" he said. The passengers and crew from the plane, along with their rescuers, took shelter in heated tents like these while they waited to be picked up by helicopter from the plane crash site. (Justin Fraser/CBC) Despite the dire circumstances, morale was quite good throughout the night, Benoit said. \"Even though they were in a dire situation, they're all good people,\" he said. \"We exchanged the meal, exchanged a few stories, and we're quite pleased to be together in that situation.\" The following morning, the passengers were rescued with the help of a helicopter. Passengers and crew arrive in Yellowknife after rescue from plane crash site Joint venture behind winter road to diamond mines offering assistance to workers injured in Air Tindi crash A spokesperson for 1 Canadian Air Division and Canadian NORAD Region Headquarters said all 10 people had been safely extracted and taken to the Diavik mine by 1 p.m. MT on Dec. 28. The 10 passengers and crew were flown into Yellowknife later that afternoon and taken to hospital for medical assessments, Air Tindi president Chris Reynolds said last week. An Air Tindi plane lands at the Yellowknife airport on the afternoon of Dec. 28, after the rescue of the 10 people who were stranded when their plane went down a day earlier. (Travis Burke/CBC) Six of the people were assessed as having minor injuries, while two had moderate to serious injuries but were expected to recover. Benoit said he's rescued passengers from plane crashes before, but nothing as intense as this. \"[It] takes years of experience to be able to conduct something like this,\" he said. \"I would say everybody's proud, everybody's happy that those 10 passengers were able to get out of there alive.\" The cause of the crash is not yet known. Both Air Tindi and the Transportation Safety Board of Canada are investigating.",
            "pubDate": "2024-01-05 23:42:56",
            "image_url":
                "https://i.cbc.ca/1.7076182.1704494933!/fileImage/httpImage/image.jpeg_gen/derivatives/16x9_620/sgt-vincent-c-benoit-and-captain-jason-shaw.jpeg",
            "source_id": "cbc",
            "source_priority": 1537,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "200bf80ee3f0ba6684cd579d2903c3a9",
            "title": "Guest lineups for the Sunday news shows",
            "link":
                "https://www.winnipegfreepress.com/arts-and-life/entertainment/tv/2024/01/05/guest-lineups-for-the-sunday-news-shows-158",
            "keywords": ["tv"],
            "creator": ["The Associated Press"],
            "video_url": null,
            "description":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. Ron DeSantis, a Republican presidential candidate; Sen. Chris Van Hollen, D-Md. __ CNN’s “State of the Union” — Former Vice President Mike Pence; Rep. James Clyburn, D-S.C. __ “Fox News Sunday” — Gov. Greg Abbott, R-Texas; Denver Mayor Mike Johnston; Sen. James Lankford, R-Okla.",
            "content":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. Read this article for free: Already have an account? To continue reading, please subscribe: * WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. Ron DeSantis, a Republican presidential candidate; Sen. Chris Van Hollen, D-Md. __ CNN’s “State of the Union” — Former Vice President Mike Pence; Rep. James Clyburn, D-S.C. __ “Fox News Sunday” — Gov. Greg Abbott, R-Texas; Denver Mayor Mike Johnston; Sen. James Lankford, R-Okla. Advertisement",
            "pubDate": "2024-01-05 23:42:39",
            "image_url": null,
            "source_id": "winnipegfreepress",
            "source_priority": 101538,
            "country": ["canada"],
            "category": ["entertainment"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "35544069a746289fc9bd1041f0ff44c4",
            "title": "Guest lineups for the Sunday news shows",
            "link":
                "https://toronto.citynews.ca/2024/01/05/guest-lineups-for-the-sunday-news-shows-275/",
            "keywords": ["world"],
            "creator": ["News Staff"],
            "video_url": null,
            "description":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. […]",
            "content": null,
            "pubDate": "2024-01-05 23:42:39",
            "image_url":
                "https://toronto.citynews.ca/wp-content/themes/citynews-2023/src/images/featured-image.png",
            "source_id": "toronto_citynews",
            "source_priority": 41556,
            "country": ["canada"],
            "category": ["world"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "fc98ea99350e32dbd48c5b3fba1d3811",
            "title": "Guest lineups for the Sunday news shows",
            "link":
                "https://halifax.citynews.ca/2024/01/05/guest-lineups-for-the-sunday-news-shows-215/",
            "keywords": ["world"],
            "creator": null,
            "video_url": null,
            "description":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. […]",
            "content":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. Ron DeSantis, a Republican presidential candidate; Sen. Chris Van Hollen, D-Md. __ CNN’s “State of the Union” — Former Vice President Mike Pence; Rep. James Clyburn, D-S.C. __ “Fox News Sunday” — Gov. Greg Abbott, R-Texas; Denver Mayor Mike Johnston; Sen. James Lankford, R-Okla. The Associated Press",
            "pubDate": "2024-01-05 23:42:39",
            "image_url": null,
            "source_id": "halifaxtoday",
            "source_priority": 38482437,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          },
          {
            "article_id": "b0e93ebb2f2b7f3ff076b78cac1f8173",
            "title": "Guest lineups for the Sunday news shows",
            "link":
                "https://kitchener.citynews.ca/2024/01/05/guest-lineups-for-the-sunday-news-shows-216/",
            "keywords": ["world"],
            "creator": null,
            "video_url": null,
            "description":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. […] The post Guest lineups for the Sunday news shows appeared first on CityNews Kitchener.",
            "content":
                "WASHINGTON (AP) — ABC’s “This Week” — House Speaker Emerita Nancy Pelosi, D-Calif.; Rep. Tony Gonzales, R-Texas. ___ NBC’s “Meet the Press” — Rep. Elise Stefanik, R-N.Y.; Israeli President Isaac Herzog; Quentin Fulks, a top official in President Joe Biden’s reelection campaign. ___ CBS’ “Face the Nation” — House Speaker Mike Johnson, R-La.; Florida Gov. Ron DeSantis, a Republican presidential candidate; Sen. Chris Van Hollen, D-Md. __ CNN’s “State of the Union” — Former Vice President Mike Pence; Rep. James Clyburn, D-S.C. __ “Fox News Sunday” — Gov. Greg Abbott, R-Texas; Denver Mayor Mike Johnston; Sen. James Lankford, R-Okla. The Associated Press",
            "pubDate": "2024-01-05 23:42:39",
            "image_url":
                "https://kitchener.citynews.ca/wp-content/themes/citynews-2023/src/images/featured-image.png",
            "source_id": "kitchenertoday",
            "source_priority": 40538754,
            "country": ["canada"],
            "category": ["top"],
            "language": "english",
            "ai_tag": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment": "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN",
            "sentiment_stats":
                "ONLY AVAILABLE IN PROFESSIONAL AND CORPORATE PLAN"
          }
        ],
        "nextPage": "1704498159084514728"
      }, (json) {
        return List<NewsArticle>.from(
            (json as List).map((model) => NewsArticle.fromJson(model)));
      }),
    );
  }
}
