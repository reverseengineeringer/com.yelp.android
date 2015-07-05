package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.w;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class MapFragment$a
  implements MapLifecycleDelegate
{
  private final Fragment TG;
  private final IMapFragmentDelegate akT;
  
  public MapFragment$a(Fragment paramFragment, IMapFragmentDelegate paramIMapFragmentDelegate)
  {
    akT = ((IMapFragmentDelegate)jx.i(paramIMapFragmentDelegate));
    TG = ((Fragment)jx.i(paramFragment));
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    try
    {
      akT.getMapAsync(new MapFragment.a.1(this, paramOnMapReadyCallback));
      return;
    }
    catch (RemoteException paramOnMapReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnMapReadyCallback);
    }
  }
  
  public IMapFragmentDelegate nN()
  {
    return akT;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = TG.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
        w.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      akT.onCreate(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = akT.onCreateView(e.k(paramLayoutInflater), e.k(paramViewGroup), paramBundle);
      return (View)e.f(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeRemoteException(paramLayoutInflater);
    }
  }
  
  public void onDestroy()
  {
    try
    {
      akT.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    try
    {
      akT.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      akT.onInflate(e.k(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeRemoteException(paramActivity);
    }
  }
  
  public void onLowMemory()
  {
    try
    {
      akT.onLowMemory();
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
      akT.onPause();
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
      akT.onResume();
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
      akT.onSaveInstanceState(paramBundle);
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
 * Qualified Name:     com.google.android.gms.maps.MapFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */