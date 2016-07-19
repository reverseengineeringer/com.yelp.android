package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.zze;
import java.util.concurrent.Callable;

@fv
public class an
{
  private final Object a = new Object();
  private boolean b = false;
  private SharedPreferences c = null;
  
  public <T> T a(final ak<T> paramak)
  {
    synchronized (a)
    {
      if (!b)
      {
        paramak = paramak.b();
        return paramak;
      }
      (T)hn.a(new Callable()
      {
        public T call()
        {
          return (T)paramak.a(an.a(an.this));
        }
      });
    }
  }
  
  public void a(Context paramContext)
  {
    synchronized (a)
    {
      if (b) {
        return;
      }
      paramContext = zze.getRemoteContext(paramContext);
      if (paramContext == null) {
        return;
      }
    }
    c = s.l().a(paramContext);
    b = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */