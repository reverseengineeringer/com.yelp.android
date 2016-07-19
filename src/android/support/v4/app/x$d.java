package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class x$d
{
  Notification A;
  public Notification B = new Notification();
  public ArrayList<String> C;
  public Context a;
  public CharSequence b;
  public CharSequence c;
  PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  public Bitmap g;
  public CharSequence h;
  public int i;
  int j;
  boolean k = true;
  public boolean l;
  public x.p m;
  public CharSequence n;
  int o;
  int p;
  boolean q;
  String r;
  boolean s;
  String t;
  public ArrayList<x.a> u = new ArrayList();
  boolean v = false;
  String w;
  Bundle x;
  int y = 0;
  int z = 0;
  
  public x$d(Context paramContext)
  {
    a = paramContext;
    B.when = System.currentTimeMillis();
    B.audioStreamType = -1;
    j = 0;
    C = new ArrayList();
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = B;
      flags |= paramInt;
      return;
    }
    Notification localNotification = B;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  protected static CharSequence d(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() <= 5120) {
      return paramCharSequence;
    }
    return paramCharSequence.subSequence(0, 5120);
  }
  
  public Notification a()
  {
    return x.a().a(this, b());
  }
  
  public d a(int paramInt)
  {
    B.icon = paramInt;
    return this;
  }
  
  public d a(long paramLong)
  {
    B.when = paramLong;
    return this;
  }
  
  public d a(PendingIntent paramPendingIntent)
  {
    d = paramPendingIntent;
    return this;
  }
  
  public d a(Bitmap paramBitmap)
  {
    g = paramBitmap;
    return this;
  }
  
  public d a(x.a parama)
  {
    u.add(parama);
    return this;
  }
  
  public d a(x.p paramp)
  {
    if (m != paramp)
    {
      m = paramp;
      if (m != null) {
        m.a(this);
      }
    }
    return this;
  }
  
  public d a(CharSequence paramCharSequence)
  {
    b = d(paramCharSequence);
    return this;
  }
  
  public d a(boolean paramBoolean)
  {
    a(16, paramBoolean);
    return this;
  }
  
  public d b(int paramInt)
  {
    i = paramInt;
    return this;
  }
  
  public d b(CharSequence paramCharSequence)
  {
    c = d(paramCharSequence);
    return this;
  }
  
  protected x.e b()
  {
    return new x.e();
  }
  
  public d c(int paramInt)
  {
    B.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = B;
      flags |= 0x1;
    }
    return this;
  }
  
  public d c(CharSequence paramCharSequence)
  {
    B.tickerText = d(paramCharSequence);
    return this;
  }
  
  public d d(int paramInt)
  {
    y = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.x.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */