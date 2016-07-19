package com.yelp.android.ui.activities.talk;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bv.c.b;
import com.yelp.android.ui.util.ar;

class TalkViewPost$8
  implements ApiRequest.b<c.b>
{
  TalkViewPost$8(TalkViewPost paramTalkViewPost) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, c.b paramb)
  {
    if (TalkViewPost.f(a).g())
    {
      TalkViewPost.f(a).a(paramb);
      TalkViewPost.f(a).d().a(false);
    }
    for (;;)
    {
      TalkViewPost.g(a).setText(null);
      TalkViewPost.g(a).clearFocus();
      a.a(true);
      ar.c(TalkViewPost.g(a));
      return;
      TalkViewPost.e(a).a(paramb);
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
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */