package com.yelp.android.services.push;

import android.content.Context;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.cb.a;
import com.yelp.android.database.g;
import com.yelp.android.database.h.c;
import com.yelp.android.serializable.InAppNotification;
import com.yelp.android.ui.widgets.InAppNotificationView;

public class c
{
  public h.c a = new c.1(this);
  private InAppNotification b;
  private InAppNotificationView c;
  private Context d;
  private a e;
  private View.OnClickListener f = new c.2(this);
  private View.OnClickListener g = new c.3(this);
  
  public static a a()
  {
    return AppData.b().i().i();
  }
  
  public void a(Class paramClass, Context paramContext, InAppNotificationView paramInAppNotificationView, a parama)
  {
    d = paramContext;
    e = parama;
    c = paramInAppNotificationView;
    c.setVisibility(8);
    a().a(paramClass, a);
  }
  
  public void b()
  {
    int j = 1;
    int i;
    if (b == null)
    {
      i = 1;
      if (c == null) {
        break label39;
      }
    }
    for (;;)
    {
      if ((i & j) != 0) {
        c.setVisibility(8);
      }
      return;
      i = 0;
      break;
      label39:
      j = 0;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */