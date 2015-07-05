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
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class SupportMapFragment
  extends Fragment
{
  private GoogleMap akS;
  private final SupportMapFragment.b alD = new SupportMapFragment.b(this);
  
  public static SupportMapFragment newInstance()
  {
    return new SupportMapFragment();
  }
  
  public static SupportMapFragment newInstance(GoogleMapOptions paramGoogleMapOptions)
  {
    SupportMapFragment localSupportMapFragment = new SupportMapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramGoogleMapOptions);
    localSupportMapFragment.setArguments(localBundle);
    return localSupportMapFragment;
  }
  
  @Deprecated
  public final GoogleMap getMap()
  {
    Object localObject = nN();
    if (localObject == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject = ((IMapFragmentDelegate)localObject).getMap();
        if (localObject == null) {
          continue;
        }
        if ((akS == null) || (akS.nC().asBinder() != ((IGoogleMapDelegate)localObject).asBinder())) {
          akS = new GoogleMap((IGoogleMapDelegate)localObject);
        }
        return akS;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    jx.aU("getMapAsync must be called on the main thread.");
    alD.getMapAsync(paramOnMapReadyCallback);
  }
  
  protected IMapFragmentDelegate nN()
  {
    alD.nO();
    if (alD.je() == null) {
      return null;
    }
    return ((SupportMapFragment.a)alD.je()).nN();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    SupportMapFragment.b.a(alD, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    alD.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return alD.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    alD.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    alD.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    SupportMapFragment.b.a(alD, paramActivity);
    paramAttributeSet = GoogleMapOptions.createFromAttributes(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    alD.onInflate(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    alD.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    alD.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    alD.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    alD.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */