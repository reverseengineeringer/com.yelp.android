package com.yelp.android.ui.activities.talk;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.aw.h;
import com.yelp.android.ui.util.cp;

class af
  implements m<h>
{
  af(TalkViewPost paramTalkViewPost) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, h paramh)
  {
    if (TalkViewPost.f(a).g())
    {
      TalkViewPost.f(a).a(paramh);
      TalkViewPost.f(a).d().a(false);
    }
    for (;;)
    {
      TalkViewPost.g(a).setText(null);
      TalkViewPost.g(a).clearFocus();
      a.a(true);
      cp.b(TalkViewPost.g(a));
      return;
      TalkViewPost.e(a).a(paramh);
      TalkViewPost.e(a).d().a(false);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
    a.a(true);
    TalkViewPost.e(a).d().a(false);
    TalkViewPost.f(a).d().a(false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */