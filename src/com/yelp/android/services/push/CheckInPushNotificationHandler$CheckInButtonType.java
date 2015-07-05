package com.yelp.android.services.push;

import android.net.Uri;
import com.yelp.android.analytics.iris.PushNotificationIri;

public enum CheckInPushNotificationHandler$CheckInButtonType
{
  COMMENT,  LIKE(PushNotificationIri.PushNotificationFriendCheckInLike);
  
  private PushNotificationIri mButtonIri;
  
  private CheckInPushNotificationHandler$CheckInButtonType()
  {
    this(null);
  }
  
  private CheckInPushNotificationHandler$CheckInButtonType(PushNotificationIri paramPushNotificationIri)
  {
    mButtonIri = paramPushNotificationIri;
  }
  
  public PushNotificationIri getButtonIri(Uri paramUri)
  {
    return mButtonIri;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInButtonType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */