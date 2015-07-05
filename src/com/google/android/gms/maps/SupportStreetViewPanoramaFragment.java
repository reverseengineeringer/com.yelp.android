package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class SupportStreetViewPanoramaFragment
  extends Fragment
{
  private final SupportStreetViewPanoramaFragment.b alF = new SupportStreetViewPanoramaFragment.b(this);
  private StreetViewPanorama alm;
  
  public static SupportStreetViewPanoramaFragment newInstance()
  {
    return new SupportStreetViewPanoramaFragment();
  }
  
  public static SupportStreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    SupportStreetViewPanoramaFragment localSupportStreetViewPanoramaFragment = new SupportStreetViewPanoramaFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("StreetViewPanoramaOptions", paramStreetViewPanoramaOptions);
    localSupportStreetViewPanoramaFragment.setArguments(localBundle);
    return localSupportStreetViewPanoramaFragment;
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
    alF.getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
  }
  
  protected IStreetViewPanoramaFragmentDelegate nR()
  {
    alF.nO();
    if (alF.je() == null) {
      return null;
    }
    return ((SupportStreetViewPanoramaFragment.a)alF.je()).nR();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    SupportStreetViewPanoramaFragment.b.a(alF, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    alF.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return alF.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    alF.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    alF.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    SupportStreetViewPanoramaFragment.b.a(alF, paramActivity);
    paramAttributeSet = new Bundle();
    alF.onInflate(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public void onLowMemory()
  {
    alF.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    alF.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    alF.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    alF.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */