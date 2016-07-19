package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.talk.TalkViewPost;

class ActivityTalkTopicFetcher$1
  implements ApiRequest.b<TalkTopic>
{
  ActivityTalkTopicFetcher$1(ActivityTalkTopicFetcher paramActivityTalkTopicFetcher) {}
  
  public void a(ApiRequest paramApiRequest, TalkTopic paramTalkTopic)
  {
    a.disableLoading();
    a.startActivity(TalkViewPost.a(a, paramTalkTopic));
    a.finish();
  }
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    ActivityTalkTopicFetcher.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTalkTopicFetcher.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */