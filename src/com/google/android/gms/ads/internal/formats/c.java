package com.google.android.gms.ads.internal.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.bd.a;
import com.google.android.gms.internal.fv;

@fv
public class c
  extends bd.a
{
  private final Drawable a;
  private final Uri b;
  private final double c;
  
  public c(Drawable paramDrawable, Uri paramUri, double paramDouble)
  {
    a = paramDrawable;
    b = paramUri;
    c = paramDouble;
  }
  
  public com.google.android.gms.dynamic.c a()
    throws RemoteException
  {
    return d.a(a);
  }
  
  public Uri b()
    throws RemoteException
  {
    return b;
  }
  
  public double c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */