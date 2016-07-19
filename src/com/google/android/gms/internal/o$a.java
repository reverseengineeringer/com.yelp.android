package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.formats.h;
import java.lang.ref.WeakReference;

public class o$a
  implements w
{
  private WeakReference<h> a;
  
  public o$a(h paramh)
  {
    a = new WeakReference(paramh);
  }
  
  public View a()
  {
    h localh = (h)a.get();
    if (localh != null) {
      return localh.e();
    }
    return null;
  }
  
  public boolean b()
  {
    return a.get() == null;
  }
  
  public w c()
  {
    return new o.b((h)a.get());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */