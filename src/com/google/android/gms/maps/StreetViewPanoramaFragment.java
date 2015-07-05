package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaFragment
  extends Fragment
{
  private final StreetViewPanoramaFragment.b all = new StreetViewPanoramaFragment.b(this);
  private StreetViewPanorama alm;
  
  public static StreetViewPanoramaFragment newInstance()
  {
    return new StreetViewPanoramaFragment();
  }
  
  public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    StreetViewPanoramaFragment localStreetViewPanoramaFragment = new StreetViewPanoramaFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("StreetViewPanoramaOptions", paramStreetViewPanoramaOptions);
    localStreetViewPanoramaFragment.setArguments(localBundle);
    return localStreetViewPanoramaFragment;
  }
  
  @Deprecated
  public final StreetViewPanorama getStreetViewPanorama()
  {
    Object localObject = nR();
    if (localObject == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject = ((IStreetViewPanoramaFragmentDelegate)localObject).getStreetViewPanorama();
        if (localObject == null) {
          continue;
        }
        if ((alm == null) || (alm.nQ().asBinder() != ((IStreetViewPanoramaDelegate)localObject).asBinder())) {
          alm = new StreetViewPanorama((IStreetViewPanoramaDelegate)localObject);
        }
        return alm;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    jx.aU("getStreetViewPanoramaAsync() must be called on the main thread");
    all.getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
  }
  
  protected IStreetViewPanoramaFragmentDelegate nR()
  {
    all.nO();
    if (all.je() == null) {
      return null;
    }
    return ((StreetViewPanoramaFragment.a)all.je()).nR();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    StreetViewPanoramaFragment.b.a(all, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    all.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return all.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    all.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    all.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    StreetViewPanoramaFragment.b.a(all, paramActivity);
    paramAttributeSet = new Bundle();
    all.onInflate(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public void onLowMemory()
  {
    all.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    all.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    all.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    all.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */