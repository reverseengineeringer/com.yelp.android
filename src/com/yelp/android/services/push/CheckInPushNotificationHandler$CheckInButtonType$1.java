package com.yelp.android.services.push;

import android.net.Uri;
import com.yelp.android.analytics.iris.PushNotificationIri;

 enum CheckInPushNotificationHandler$CheckInButtonType$1
{
  CheckInPushNotificationHandler$CheckInButtonType$1()
  {
    super(paramString, paramInt, null);
  }
  
  public PushNotificationIri getButtonIri(Uri paramUri)
  {
    switch (b.a[CheckInPushNotificationHandler.CheckInType.getCheckinTypeFromUri(paramUri).ordinal()])
    {
    default: 
      return null;
    case 1: 
      return PushNotificationIri.PushNotificationCheckInCommentComment;
    case 2: 
      return PushNotificationIri.PushNotificationCheckInLikeComment;
    }
    return PushNotificationIri.PushNotificationFriendCheckInComment;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInButtonType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */