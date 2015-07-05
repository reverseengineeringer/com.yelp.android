package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dx;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class h
  extends j<dx>
{
  h(AllTalkTab paramAllTalkTab) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dx paramdx)
  {
    if (a.size() == 0)
    {
      a.a(true);
      a.a(ErrorType.NO_TALK_TOPICS);
      return;
    }
    if (a.r() == null) {
      AllTalkTab.a(a, AllTalkTab.a(a));
    }
    a.a(a);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    a.a(paramYelpException, new i(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */