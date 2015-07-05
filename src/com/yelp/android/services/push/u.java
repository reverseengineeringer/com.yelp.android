package com.yelp.android.services.push;

import android.content.Context;
import android.net.Uri;
import java.util.List;

public class u
  extends DefaultPushNotificationHandler
{
  public u(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.QuickTip, paramContext.getString(2131166886), paramUri);
  }
  
  protected int a()
  {
    return a((String)b.getPathSegments().get(1));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */