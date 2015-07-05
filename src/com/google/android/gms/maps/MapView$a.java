package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class MapView$a
  implements MapLifecycleDelegate
{
  private final ViewGroup akZ;
  private final IMapViewDelegate ala;
  private View alb;
  
  public MapView$a(ViewGroup paramViewGroup, IMapViewDelegate paramIMapViewDelegate)
  {
    ala = ((IMapViewDelegate)jx.i(paramIMapViewDelegate));
    akZ = ((ViewGroup)jx.i(paramViewGroup));
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    try
    {
      ala.getMapAsync(new MapView.a.1(this, paramOnMapReadyCallback));
      return;
    }
    catch (RemoteException paramOnMapReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnMapReadyCallback);
    }
  }
  
  public IMapViewDelegate nP()
  {
    return ala;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      ala.onCreate(paramBundle);
      alb = ((View)e.f(ala.getView()));
      akZ.removeAllViews();
      akZ.addView(alb);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
  }
  
  public void onDestroy()
  {
    try
    {
      ala.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
  }
  
  public void onLowMemory()
  {
    try
    {
      ala.onLowMemory();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onPause()
  {
    try
    {
      ala.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onResume()
  {
    try
    {
      ala.onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      ala.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */