package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gb;
import com.yelp.android.appdata.webrequests.gc;
import com.yelp.android.appdata.webrequests.m;

public class MyTalkTab
  extends TalkTopicList<gc>
{
  m<gc> a = new o(this);
  
  protected boolean e()
  {
    if (!AppData.b().m().e()) {
      return false;
    }
    b = new gb(p(), a);
    ((gb)b).execute(new Void[0]);
    return true;
  }
  
  protected m<gc> f()
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
    b = a("request_my_talk_topics", b, f());
    if (((b == null) || (!b.isFetching())) && (AppData.b().m().e())) {
      a_();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.MyTalkTab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */