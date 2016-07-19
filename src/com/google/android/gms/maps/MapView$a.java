package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.ae.a;
import com.yelp.android.bj.b;
import com.yelp.android.bj.k;

class MapView$a
  implements k
{
  private final ViewGroup a;
  private final com.yelp.android.bj.e b;
  private View c;
  
  public MapView$a(ViewGroup paramViewGroup, com.yelp.android.bj.e parame)
  {
    b = ((com.yelp.android.bj.e)zzx.zzz(parame));
    a = ((ViewGroup)zzx.zzz(paramViewGroup));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
  }
  
  public void a()
  {
    try
    {
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
  }
  
  public void a(Bundle paramBundle)
  {
    try
    {
      b.a(paramBundle);
      c = ((View)d.a(b.f()));
      a.removeAllViews();
      a.addView(c);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void a(final e parame)
  {
    try
    {
      b.a(new ae.a()
      {
        public void a(b paramAnonymousb)
          throws RemoteException
        {
          parame.a(new c(paramAnonymousb));
        }
      });
      return;
    }
    catch (RemoteException parame)
    {
      throw new RuntimeRemoteException(parame);
    }
  }
  
  public void b()
  {
    try
    {
      b.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void b(Bundle paramBundle)
  {
    try
    {
      b.b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void c()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
  }
  
  public void d()
  {
    try
    {
      b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void e()
  {
    try
    {
      b.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public com.yelp.android.bj.e f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */