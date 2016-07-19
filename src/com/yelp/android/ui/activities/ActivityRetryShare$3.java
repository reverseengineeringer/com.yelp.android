package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import java.util.ArrayList;
import java.util.Queue;
import java.util.Set;

class ActivityRetryShare$3
  implements FacebookConnectManager.a
{
  ActivityRetryShare$3(ActivityRetryShare paramActivityRetryShare) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager)
  {
    a.e.add(ShareRequest.ShareType.FACEBOOK);
    if (a.c.contains(ShareRequest.ShareType.FACEBOOK)) {
      a.f.add(ShareRequest.ShareType.FACEBOOK);
    }
    a.a.poll();
    a.b.poll();
    a.c();
  }
  
  public void a(FacebookConnectManager paramFacebookConnectManager, Throwable paramThrowable)
  {
    ActivityRetryShare.a(a, 2131165391);
  }
  
  public void b(FacebookConnectManager paramFacebookConnectManager)
  {
    ActivityRetryShare.a(a, 2131165584);
  }
  
  public void c(FacebookConnectManager paramFacebookConnectManager) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRetryShare.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */