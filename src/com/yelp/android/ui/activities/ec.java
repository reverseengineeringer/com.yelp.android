package com.yelp.android.ui.activities;

import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.talk.TalkViewPost;

class ec
  implements m<TalkTopic>
{
  ec(ActivityTalkUrlCatcher paramActivityTalkUrlCatcher) {}
  
  public void a(ApiRequest paramApiRequest, TalkTopic paramTalkTopic)
  {
    a.disableLoading();
    a.startActivity(TalkViewPost.a(AppData.b(), paramTalkTopic));
    AppData.a(new o(ActivityTalkUrlCatcher.b(a)));
    a.finish();
  }
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    ActivityTalkUrlCatcher.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */