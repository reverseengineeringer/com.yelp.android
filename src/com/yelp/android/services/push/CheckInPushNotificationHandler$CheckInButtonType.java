package com.yelp.android.services.push;

import android.net.Uri;
import com.yelp.android.analytics.iris.EventIri;

public enum CheckInPushNotificationHandler$CheckInButtonType
{
  COMMENT,  LIKE(EventIri.PushNotificationFriendCheckInLike);
  
  private EventIri mButtonIri;
  
  private CheckInPushNotificationHandler$CheckInButtonType()
  {
    this(null);
  }
  
  private CheckInPushNotificationHandler$CheckInButtonType(EventIri paramEventIri)
  {
    mButtonIri = paramEventIri;
  }
  
  public EventIri getButtonIri(Uri paramUri)
  {
    return mButtonIri;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInButtonType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */