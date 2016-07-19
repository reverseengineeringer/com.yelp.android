package android.support.v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.w;
import android.support.v4.app.x;
import android.support.v4.app.x.d;
import android.support.v4.app.x.e;
import android.support.v4.app.x.p;
import android.support.v4.media.session.MediaSessionCompat.Token;
import com.yelp.android.m.b;
import com.yelp.android.m.c;

public class m
  extends x
{
  private static void b(Notification paramNotification, x.d paramd)
  {
    if ((m instanceof e))
    {
      e locale = (e)m;
      c.a(paramNotification, a, b, c, h, i, g, n, l, B.when, u, c, h);
    }
  }
  
  private static void b(w paramw, x.d paramd)
  {
    if ((m instanceof e))
    {
      e locale = (e)m;
      c.a(paramw, a, b, c, h, i, g, n, l, B.when, u, a, c, h);
    }
  }
  
  private static void c(w paramw, x.p paramp)
  {
    int[] arrayOfInt;
    if ((paramp instanceof e))
    {
      paramp = (e)paramp;
      arrayOfInt = a;
      if (b == null) {
        break label39;
      }
    }
    label39:
    for (paramp = b.a();; paramp = null)
    {
      b.a(paramw, arrayOfInt, paramp);
      return;
    }
  }
  
  public static class a
    extends x.d
  {
    public a(Context paramContext)
    {
      super();
    }
    
    protected x.e b()
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return new m.d(null);
      }
      if (Build.VERSION.SDK_INT >= 16) {
        return new m.c(null);
      }
      if (Build.VERSION.SDK_INT >= 14) {
        return new m.b(null);
      }
      return super.b();
    }
  }
  
  private static class b
    extends x.e
  {
    public Notification a(x.d paramd, w paramw)
    {
      m.a(paramw, paramd);
      return paramw.b();
    }
  }
  
  private static class c
    extends x.e
  {
    public Notification a(x.d paramd, w paramw)
    {
      m.a(paramw, paramd);
      paramw = paramw.b();
      m.a(paramw, paramd);
      return paramw;
    }
  }
  
  private static class d
    extends x.e
  {
    public Notification a(x.d paramd, w paramw)
    {
      m.b(paramw, m);
      return paramw.b();
    }
  }
  
  public static class e
    extends x.p
  {
    int[] a = null;
    MediaSessionCompat.Token b;
    boolean c;
    PendingIntent h;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */