package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.es;
import com.yelp.android.appdata.webrequests.es.a;

public class MyTalkTab
  extends TalkTopicList<es.a>
{
  ApiRequest.b<es.a> a = new MyTalkTab.1(this);
  
  protected boolean f()
  {
    if (!AppData.b().q().d()) {
      return false;
    }
    b = new es(p(), a);
    ((es)b).f(new Void[0]);
    return true;
  }
  
  protected ApiRequest.b<es.a> g()
  {
    return a;
  }
  
  public void onPause()
  {
    super.onPause();
    a("request_my_talk_topics", b);
  }
  
  public void onResume()
  {
    super.onResume();
    b = a("request_my_talk_topics", b, g());
    if (((b == null) || (!b.u())) && (AppData.b().q().d())) {
      p_();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.MyTalkTab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */