package com.yelp.android.ui.activities;

import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.Session.NewPermissionsRequest;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;
import java.util.Arrays;

class fd
  implements Session.StatusCallback
{
  fd(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void call(Session paramSession, SessionState paramSessionState, Exception paramException)
  {
    if (paramSessionState.isOpened()) {
      if (!FacebookConnectManager.d(a).allReadPermissionsGranted(paramSession)) {
        FacebookConnectManager.e(a);
      }
    }
    do
    {
      return;
      if (!FacebookConnectManager.d(a).hasPublishPermissions())
      {
        FacebookConnectManager.f(a);
        return;
      }
      paramSession.removeCallback(this);
      if (FacebookConnectManager.d(a).allPublishPermissionsGranted(paramSession))
      {
        FacebookConnectManager.f(a);
        return;
      }
      paramSessionState = Arrays.asList(FacebookConnectManager.d(a).getPublishPermissions());
      paramSession.requestNewPublishPermissions(new Session.NewPermissionsRequest(FacebookConnectManager.c(a), paramSessionState).setRequestCode(FacebookConnectManager.h(a)).setCallback(FacebookConnectManager.g(a)));
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
 * Qualified Name:     com.yelp.android.ui.activities.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */