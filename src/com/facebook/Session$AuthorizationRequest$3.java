package com.facebook;

import android.app.Activity;
import android.content.Intent;

class Session$AuthorizationRequest$3
  implements Session.StartActivityDelegate
{
  Session$AuthorizationRequest$3(Session.AuthorizationRequest paramAuthorizationRequest) {}
  
  public Activity getActivityContext()
  {
    throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session.AuthorizationRequest.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */