package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.ae.a;
import com.yelp.android.bj.b;
import com.yelp.android.bj.k;
import com.yelp.android.bj.p;

class SupportMapFragment$a
  implements k
{
  private final Fragment a;
  private final com.yelp.android.bj.d b;
  
  public SupportMapFragment$a(Fragment paramFragment, com.yelp.android.bj.d paramd)
  {
    b = ((com.yelp.android.bj.d)zzx.zzz(paramd));
    a = ((Fragment)zzx.zzz(paramFragment));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = b.a(com.google.android.gms.dynamic.d.a(paramLayoutInflater), com.google.android.gms.dynamic.d.a(paramViewGroup), paramBundle);
      return (View)com.google.android.gms.dynamic.d.a(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeRemoteException(paramLayoutInflater);
    }
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
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      b.a(com.google.android.gms.dynamic.d.a(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeRemoteException(paramActivity);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = a.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
        p.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      b.a(localBundle);
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
  
  public void d()
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
  
  public void e()
  {
    try
    {
      b.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */