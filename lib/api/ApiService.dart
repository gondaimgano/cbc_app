import 'package:cbc_app/models/CityBean.dart';
import 'package:cbc_app/models/DiscoverBean.dart';
import 'package:cbc_app/models/FeedBean.dart';
import 'package:cbc_app/models/NoticeBean.dart';
import 'package:cbc_app/models/SongBean.dart';
import 'package:flutter/cupertino.dart';

class ApiService with ChangeNotifier{

  List<DiscoverBean> produceDiscover() => [
    {
      "title": "Next steps".toUpperCase(),
      "group": [
        {
          "header": "Life Group",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
        {
          "header": "Worship",
          "image":
          "https://media.swncdn.com/cms/CW/faith/69089-worship-song-singing-cross-church-gettyimages.1200w.tn.jpg"
        },
        {
          "header": "NextGen",
          "image":
          "https://www.evangelicalsforsocialaction.org/wp-content/uploads/2017/02/generationnext.jpg"
        },
        {
          "header": "Careers",
          "image":
          "https://www.covenantcareers.com//wp-content/uploads/sites/34/2016/04/group-careers-image.jpg"
        },
        {
          "header": "Serving",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
      ]
    },
    {
      "title": "Tools for growth".toUpperCase(),
      "group": [
        {
          "header": "Leadership Podcast",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
        {
          "header": "Church Online",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
        {
          "header": "Young Ladies",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
        {
          "header": "Generation Faith",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
        {
          "header": "321 Go",
          "image":
          "https://www.life.church/assets/pages/lifegroups/lifegroups-hero-large@3x-0b83720839d61327af62b40d7d24f499c674dc149473d65c3efebdd1066983fb.jpg"
        },
      ]
    },
  ].map((i)=>DiscoverBean.fromJson(i),);

  List<Feed> produceFeed() {
    return [
      {
        "heading": "A better today and a brighter tomorrow",
        "description": "A chance for a new start and new beginnings",
        "image": "https://previews.123rf.com/images/evgenyatamanenko/evgenyatamanenko1509/evgenyatamanenko150900051/45241193-happy-girl-enjoying-life-and-freedom-in-the-autumn-on-the-nature.jpg",
        "share": true,
        "read": false
      },
      {
        "heading": "The Adoption process: Ready?",
        "description": "A lot of people can't help but feel curious when they learn someone is adopted. Their life experience may be different from their own because of it. Questions like, Do you know who your biological parents are?",
        "image": "https://www.adoptivefamilies.com/wp-content/uploads/2014/06/newsletter-multicultural-family-ts-487054278.jpg",
        "share": true,
        "read": true
      },
      {
        "heading": "Depression",
        "description": "#life #death #prosperity",
        "image": "https://www.unilad.co.uk/wp-content/uploads/2017/01/6419UNILAD-imageoptim-sad-man.jpeg",
        "share": true,
        "read": false
      },
      {
        "heading": "",
        "description": "",
        "image": "",
        "share": true,
        "read": true
      },
      {
        "heading": "",
        "description": "",
        "image": "http://www.globallightminds.com/wp-content/uploads/2016/02/Enjoying-life.jpg",
        "share": true,
        "read": true
      },
    ].map((i)=>Feed.fromJson(i),);
  }

  List<CityBean> updatesByCity()=>[
    {"city":"bulawayo"},
    {"city":"harare"},
    {"city":"masvingo"},
  ].map((i)=>CityBean.fromJson(i),);

  List<NoticeBean> produceMessages()=>[
    {
      "city":["harare","bulawayo","masvingo"],
      "image":"",
      "title":"Message Notes",
      "description":"Get notes from today's message using the YouVersion Bible App.",

      "action":(){}
    },
    {
      "city":["harare","bulawayo"],
      "image":"",
      "title":"Open Door",
      "description":"We want to get to know you better at Open Door",
      "action":(){}
    },
    {
      "city":["bulawayo","harare"],
      "image":"",
      "title":"Baptism",
      "description":"Is baptism your next step? If you have given your life to Jesus, tell the world through baptism!",
      "action":(){}
    },
    {
      "city":"bulawayo",
      "image":"",
      "title":"Kids Love LifeKids!",
      "description":"Once your kids try LifeKids, they'll be begging you to bring them every week!There's something for all of your kids",
      "action":(){}
    }
  ].map((i)=>NoticeBean.fromJson(i),);

  List<SongBean> produceWorshipSet()=>[
    {
      "city":"harare",
      "title":"All Glory",
      "artist":"Life.Church Worship"
    },
    {
      "city":"bulawayo",
      "title":"Another In The Fire",
      "artist":"Hillsong United"
    },
    {
      "city":"harare",
      "title":"Living Hope",
      "artist":"Phil Wickham"
    },
    {
      "city":"harare",
      "title":"All glory",
      "artist":"Central Baptist Church"
    },
    {
      "city":"harare",
      "title":"All glory",
      "artist":"Central Baptist Church"
    }

  ].map((i)=>SongBean.fromJson(i));
}

