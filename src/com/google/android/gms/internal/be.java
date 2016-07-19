package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.d;

@fv
public class be
  extends a.a
{
  private final bd a;
  private final Drawable b;
  private final Uri c;
  private final double d;
  
  public be(bd parambd)
  {
    a = parambd;
    try
    {
      parambd = a.a();
      if (parambd == null) {
        break label83;
      }
      parambd = (Drawable)d.a(parambd);
    }
    catch (RemoteException parambd)
    {
      try
      {
        parambd = a.b();
        c = parambd;
        double d1 = 1.0D;
        try
        {
          double d2 = a.c();
          d1 = d2;
        }
        catch (RemoteException parambd)
        {
          for (;;)
          {
            b.b("Failed to get scale.", parambd);
          }
        }
        d = d1;
        return;
        parambd = parambd;
        b.b("Failed to get drawable.", parambd);
        parambd = null;
      }
      catch (RemoteException parambd)
      {
        for (;;)
        {
          b.b("Failed to get uri.", parambd);
          parambd = (bd)localObject;
        }
      }
    }
    b = parambd;
  }
  
  public Drawable a()
  {
    return b;
  }
  
  public Uri b()
  {
    return c;
  }
  
  public double c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */