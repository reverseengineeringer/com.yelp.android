package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaView$a
  implements StreetViewLifecycleDelegate
{
  private final ViewGroup akZ;
  private View alA;
  private final IStreetViewPanoramaViewDelegate alz;
  
  public StreetViewPanoramaView$a(ViewGroup paramViewGroup, IStreetViewPanoramaViewDelegate paramIStreetViewPanoramaViewDelegate)
  {
    alz = ((IStreetViewPanoramaViewDelegate)jx.i(paramIStreetViewPanoramaViewDelegate));
    akZ = ((ViewGroup)jx.i(paramViewGroup));
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    try
    {
      alz.getStreetViewPanoramaAsync(new StreetViewPanoramaView.a.1(this, paramOnStreetViewPanoramaReadyCallback));
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaReadyCallback);
    }
  }
  
  public IStreetViewPanoramaViewDelegate nV()
  {
    return alz;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      alz.onCreate(paramBundle);
      alA = ((View)e.f(alz.getView()));
      akZ.removeAllViews();
      akZ.addView(alA);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onDestroy()
  {
    try
    {
      alz.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onLowMemory()
  {
    try
    {
      alz.onLowMemory();
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
      alz.onPause();
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
      alz.onResume();
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
      alz.onSaveInstanceState(paramBundle);
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
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */