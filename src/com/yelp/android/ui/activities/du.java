package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import java.util.Queue;
import java.util.Set;

class du
  implements fg
{
  du(ActivityRetryShare paramActivityRetryShare) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager)
  {
    a.d.add(ShareRequest.ShareType.FACEBOOK);
    a.a.poll();
    a.b.poll();
    a.c();
  }
  
  public void a(FacebookConnectManager paramFacebookConnectManager, Throwable paramThrowable)
  {
    ActivityRetryShare.a(a, 2131165255);
  }
  
  public void b(FacebookConnectManager paramFacebookConnectManager)
  {
    ActivityRetryShare.a(a, 2131165458);
  }
  
  public void c(FacebookConnectManager paramFacebookConnectManager) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */