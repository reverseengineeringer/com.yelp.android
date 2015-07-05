package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class o
  implements m<gc>
{
  o(MyTalkTab paramMyTalkTab) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gc paramgc)
  {
    a.j();
    if (paramgc.a().size() == 0)
    {
      a.a(true);
      if (a.c.getCount() == 0) {
        a.a(ErrorType.NO_TALK_TOPICS);
      }
      return;
    }
    a.a(paramgc.a());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(ErrorType.getTypeFromException(paramYelpException), new p(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */