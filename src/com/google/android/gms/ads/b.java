package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.c.a;
import com.google.android.gms.ads.formats.d.a;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.client.l;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.z;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.br;
import com.google.android.gms.internal.bs;
import com.google.android.gms.internal.dr;

public class b
{
  private final q a;
  private final Context b;
  private final z c;
  
  b(Context paramContext, z paramz)
  {
    this(paramContext, paramz, q.a());
  }
  
  b(Context paramContext, z paramz, q paramq)
  {
    b = paramContext;
    c = paramz;
    a = paramq;
  }
  
  private void a(com.google.android.gms.ads.internal.client.b paramb)
  {
    try
    {
      c.a(a.a(b, paramb));
      return;
    }
    catch (RemoteException paramb)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Failed to load ad.", paramb);
    }
  }
  
  public void a(c paramc)
  {
    a(paramc.a());
  }
  
  public static class a
  {
    private final Context a;
    private final aa b;
    
    a(Context paramContext, aa paramaa)
    {
      a = paramContext;
      b = paramaa;
    }
    
    public a(Context paramContext, String paramString)
    {
      this((Context)zzx.zzb(paramContext, "context cannot be null"), m.a(paramContext, paramString, new dr()));
    }
    
    public a a(a parama)
    {
      try
      {
        b.a(new l(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to set AdListener.", parama);
      }
      return this;
    }
    
    public a a(com.google.android.gms.ads.formats.b paramb)
    {
      try
      {
        b.a(new NativeAdOptionsParcel(paramb));
        return this;
      }
      catch (RemoteException paramb)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to specify native ad options", paramb);
      }
      return this;
    }
    
    public a a(c.a parama)
    {
      try
      {
        b.a(new br(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to add app install ad listener", parama);
      }
      return this;
    }
    
    public a a(d.a parama)
    {
      try
      {
        b.a(new bs(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to add content ad listener", parama);
      }
      return this;
    }
    
    public b a()
    {
      try
      {
        b localb = new b(a, b.a());
        return localb;
      }
      catch (RemoteException localRemoteException)
      {
        com.google.android.gms.ads.internal.util.client.b.b("Failed to build AdLoader.", localRemoteException);
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */