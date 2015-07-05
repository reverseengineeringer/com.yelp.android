package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.w;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class SupportStreetViewPanoramaFragment$a
  implements StreetViewLifecycleDelegate
{
  private final Fragment Mx;
  private final IStreetViewPanoramaFragmentDelegate aln;
  
  public SupportStreetViewPanoramaFragment$a(Fragment paramFragment, IStreetViewPanoramaFragmentDelegate paramIStreetViewPanoramaFragmentDelegate)
  {
    aln = ((IStreetViewPanoramaFragmentDelegate)jx.i(paramIStreetViewPanoramaFragmentDelegate));
    Mx = ((Fragment)jx.i(paramFragment));
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    try
    {
      aln.getStreetViewPanoramaAsync(new SupportStreetViewPanoramaFragment.a.1(this, paramOnStreetViewPanoramaReadyCallback));
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaReadyCallback);
    }
  }
  
  public IStreetViewPanoramaFragmentDelegate nR()
  {
    return aln;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = Mx.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("StreetViewPanoramaOptions"))) {
        w.a(localBundle, "StreetViewPanoramaOptions", paramBundle.getParcelable("StreetViewPanoramaOptions"));
      }
      aln.onCreate(localBundle);
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
      paramLayoutInflater = aln.onCreateView(e.k(paramLayoutInflater), e.k(paramViewGroup), paramBundle);
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
      aln.onDestroy();
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
      aln.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    try
    {
      aln.onInflate(e.k(paramActivity), null, paramBundle2);
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
      aln.onLowMemory();
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
      aln.onPause();
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
      aln.onResume();
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
      aln.onSaveInstanceState(paramBundle);
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
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */