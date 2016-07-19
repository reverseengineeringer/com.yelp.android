package com.yelp.android.m;

import android.app.Notification.MediaStyle;
import android.media.session.MediaSession.Token;
import android.support.v4.app.w;

public class b
{
  public static void a(w paramw, int[] paramArrayOfInt, Object paramObject)
  {
    paramw = new Notification.MediaStyle(paramw.a());
    if (paramArrayOfInt != null) {
      paramw.setShowActionsInCompactView(paramArrayOfInt);
    }
    if (paramObject != null) {
      paramw.setMediaSession((MediaSession.Token)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */