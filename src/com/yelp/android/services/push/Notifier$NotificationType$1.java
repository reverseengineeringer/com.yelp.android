package com.yelp.android.services.push;

import android.net.Uri;
import com.yelp.android.analytics.iris.PushNotificationIri;

 enum Notifier$NotificationType$1
{
  Notifier$NotificationType$1(String... paramVarArgs)
  {
    super(paramString, paramInt, paramVarArgs, null);
  }
  
  public PushNotificationIri getDeleteIri(Uri paramUri)
  {
    return CheckInPushNotificationHandler.CheckInType.getPushNotificationDeleteIri(paramUri);
  }
  
  public PushNotificationIri getOpenIri(Uri paramUri)
  {
    return CheckInPushNotificationHandler.CheckInType.getPushNotificationOpenIri(paramUri);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.Notifier.NotificationType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */