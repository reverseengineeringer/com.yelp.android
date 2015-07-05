package com.yelp.android.services.push;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.Style;
import java.util.List;

public abstract class r
  extends DefaultPushNotificationHandler
{
  private p c;
  private Bitmap d;
  private n e;
  
  r(Context paramContext, Notifier.NotificationType paramNotificationType, String paramString, Uri paramUri)
  {
    super(paramContext, paramNotificationType, paramString, paramUri);
  }
  
  private void a(Bitmap paramBitmap)
  {
    Object localObject = null;
    d = paramBitmap;
    String str = c.c();
    List localList = a(DefaultPushNotificationHandler.NotificationViewType.SINGLE, str);
    if (d == null) {}
    for (paramBitmap = (Bitmap)localObject;; paramBitmap = a(null, str))
    {
      paramBitmap = a(str, str, 0, paramBitmap, localList, 24);
      e.a(new m(a(), c, paramBitmap));
      return;
    }
  }
  
  private void e()
  {
    super.a(c, e);
  }
  
  protected NotificationCompat.Style a(m paramm, String paramString)
  {
    if (d == null) {
      return super.a(paramm, paramString);
    }
    paramm = new NotificationCompat.BigPictureStyle();
    paramm.setSummaryText(paramString);
    paramm.bigPicture(d);
    return paramm;
  }
  
  public void a(p paramp, n paramn)
  {
    e = paramn;
    c = paramp;
    new s(this).execute(new String[0]);
  }
  
  protected abstract String b();
  
  protected abstract String d();
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */