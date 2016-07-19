package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.dy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import java.util.Map;

final class n$5
  implements bz
{
  n$5(dx paramdx, g.a parama, dy paramdy) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramMap = paramib.b();
    if (paramMap == null) {}
    do
    {
      return;
      try
      {
        if (a == null) {
          continue;
        }
        if (!a.k())
        {
          a.a(d.a(paramMap));
          b.a();
          return;
        }
      }
      catch (RemoteException paramib)
      {
        gz.d("Unable to call handleClick on mapper", paramib);
        return;
      }
      n.a(paramib);
      return;
    } while (c == null);
    if (!c.i())
    {
      c.a(d.a(paramMap));
      b.a();
      return;
    }
    n.a(paramib);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */