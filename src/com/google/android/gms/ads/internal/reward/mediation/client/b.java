package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;

@fv
public class b
  implements com.yelp.android.bf.b
{
  private final a a;
  
  public b(a parama)
  {
    a = parama;
  }
  
  public void a(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onInitializationSucceeded must be called on the main UI thread.");
    gz.a("Adapter called onInitializationSucceeded.");
    try
    {
      a.a(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onInitializationSucceeded.", parama);
    }
  }
  
  public void a(com.yelp.android.bf.a parama, int paramInt)
  {
    zzx.zzcD("onAdFailedToLoad must be called on the main UI thread.");
    gz.a("Adapter called onAdFailedToLoad.");
    try
    {
      a.b(d.a(parama), paramInt);
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onAdFailedToLoad.", parama);
    }
  }
  
  public void a(com.yelp.android.bf.a parama, com.yelp.android.be.a parama1)
  {
    zzx.zzcD("onRewarded must be called on the main UI thread.");
    gz.a("Adapter called onRewarded.");
    if (parama1 != null) {}
    try
    {
      a.a(d.a(parama), new RewardItemParcel(parama1));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onRewarded.", parama);
    }
    a.a(d.a(parama), new RewardItemParcel(parama.getClass().getName(), 1));
    return;
  }
  
  public void b(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onAdLoaded must be called on the main UI thread.");
    gz.a("Adapter called onAdLoaded.");
    try
    {
      a.b(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onAdLoaded.", parama);
    }
  }
  
  public void c(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onAdOpened must be called on the main UI thread.");
    gz.a("Adapter called onAdOpened.");
    try
    {
      a.c(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onAdOpened.", parama);
    }
  }
  
  public void d(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onVideoStarted must be called on the main UI thread.");
    gz.a("Adapter called onVideoStarted.");
    try
    {
      a.d(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onVideoStarted.", parama);
    }
  }
  
  public void e(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onAdClosed must be called on the main UI thread.");
    gz.a("Adapter called onAdClosed.");
    try
    {
      a.e(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onAdClosed.", parama);
    }
  }
  
  public void f(com.yelp.android.bf.a parama)
  {
    zzx.zzcD("onAdLeftApplication must be called on the main UI thread.");
    gz.a("Adapter called onAdLeftApplication.");
    try
    {
      a.g(d.a(parama));
      return;
    }
    catch (RemoteException parama)
    {
      gz.d("Could not call onAdLeftApplication.", parama);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.reward.mediation.client.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */