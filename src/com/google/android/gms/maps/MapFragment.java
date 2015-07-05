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
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapFragment
  extends Fragment
{
  private final MapFragment.b akR = new MapFragment.b(this);
  private GoogleMap akS;
  
  public static MapFragment newInstance()
  {
    return new MapFragment();
  }
  
  public static MapFragment newInstance(GoogleMapOptions paramGoogleMapOptions)
  {
    MapFragment localMapFragment = new MapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramGoogleMapOptions);
    localMapFragment.setArguments(localBundle);
    return localMapFragment;
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
    akR.getMapAsync(paramOnMapReadyCallback);
  }
  
  protected IMapFragmentDelegate nN()
  {
    akR.nO();
    if (akR.je() == null) {
      return null;
    }
    return ((MapFragment.a)akR.je()).nN();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    MapFragment.b.a(akR, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    akR.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return akR.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    akR.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    akR.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    MapFragment.b.a(akR, paramActivity);
    paramAttributeSet = GoogleMapOptions.createFromAttributes(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    akR.onInflate(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    akR.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    akR.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    akR.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    akR.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */