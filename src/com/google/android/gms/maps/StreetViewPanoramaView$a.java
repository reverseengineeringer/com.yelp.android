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
import com.yelp.android.bj.g;
import com.yelp.android.bj.i;
import com.yelp.android.bj.l;
import com.yelp.android.bj.n.a;

class StreetViewPanoramaView$a
  implements l
{
  private final ViewGroup a;
  private final i b;
  private View c;
  
  public StreetViewPanoramaView$a(ViewGroup paramViewGroup, i parami)
  {
    b = ((i)zzx.zzz(parami));
    a = ((ViewGroup)zzx.zzz(paramViewGroup));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
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
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
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
  
  public void a(final f paramf)
  {
    try
    {
      b.a(new n.a()
      {
        public void a(g paramAnonymousg)
          throws RemoteException
        {
          paramf.a(new h(paramAnonymousg));
        }
      });
      return;
    }
    catch (RemoteException paramf)
    {
      throw new RuntimeRemoteException(paramf);
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
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
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
  
  public i f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */