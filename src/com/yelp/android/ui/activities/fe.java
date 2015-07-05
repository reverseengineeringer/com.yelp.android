package com.yelp.android.ui.activities;

import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;

class fe
  implements Session.StatusCallback
{
  fe(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if (paramSessionState.isOpened()) {
      if (!FacebookConnectManager.d(a).allPublishPermissionsGranted(paramSession)) {
        FacebookConnectManager.e(a);
      }
    }
    do
    {
      return;
      FacebookConnectManager.f(a);
      return;
      if ((paramSessionState.isClosed()) || ((paramException instanceof FacebookOperationCanceledException)) || ((paramException instanceof FacebookAuthorizationException)))
      {
        FacebookConnectManager.e(a);
        return;
      }
    } while (paramException == null);
    FacebookConnectManager.a(a, paramException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */