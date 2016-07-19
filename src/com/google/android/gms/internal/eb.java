package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.zzx;
import com.yelp.android.bc.c;
import com.yelp.android.bc.d;
import com.yelp.android.bc.e;
import com.yelp.android.bc.f;
import com.yelp.android.bc.g;
import com.yelp.android.bc.h;
import com.yelp.android.bc.i;

@fv
public final class eb
  implements d, f, h
{
  private final du a;
  private i b;
  
  public eb(du paramdu)
  {
    a = paramdu;
  }
  
  public i a()
  {
    return b;
  }
  
  public void a(c paramc)
  {
    zzx.zzcD("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    try
    {
      a.e();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdLoaded.", paramc);
    }
  }
  
  public void a(c paramc, int paramInt)
  {
    zzx.zzcD("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdFailedToLoad.", paramc);
    }
  }
  
  public void a(e parame)
  {
    zzx.zzcD("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    try
    {
      a.e();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdLoaded.", parame);
    }
  }
  
  public void a(e parame, int paramInt)
  {
    zzx.zzcD("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdFailedToLoad.", parame);
    }
  }
  
  public void a(g paramg)
  {
    zzx.zzcD("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdOpened.", paramg);
    }
  }
  
  public void a(g paramg, int paramInt)
  {
    zzx.zzcD("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdFailedToLoad.", paramg);
    }
  }
  
  public void a(g paramg, i parami)
  {
    zzx.zzcD("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    b = parami;
    try
    {
      a.e();
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdLoaded.", paramg);
    }
  }
  
  public void b(c paramc)
  {
    zzx.zzcD("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdOpened.", paramc);
    }
  }
  
  public void b(e parame)
  {
    zzx.zzcD("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdOpened.", parame);
    }
  }
  
  public void b(g paramg)
  {
    zzx.zzcD("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdClosed.", paramg);
    }
  }
  
  public void c(c paramc)
  {
    zzx.zzcD("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdClosed.", paramc);
    }
  }
  
  public void c(e parame)
  {
    zzx.zzcD("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdClosed.", parame);
    }
  }
  
  public void c(g paramg)
  {
    zzx.zzcD("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdLeftApplication.", paramg);
    }
  }
  
  public void d(c paramc)
  {
    zzx.zzcD("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdLeftApplication.", paramc);
    }
  }
  
  public void d(e parame)
  {
    zzx.zzcD("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdLeftApplication.", parame);
    }
  }
  
  public void d(g paramg)
  {
    zzx.zzcD("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException paramg)
    {
      b.d("Could not call onAdClicked.", paramg);
    }
  }
  
  public void e(c paramc)
  {
    zzx.zzcD("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdClicked.", paramc);
    }
  }
  
  public void e(e parame)
  {
    zzx.zzcD("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdClicked.", parame);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */