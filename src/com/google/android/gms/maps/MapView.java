package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView
  extends FrameLayout
{
  private GoogleMap akS;
  private final MapView.b akY;
  
  public MapView(Context paramContext)
  {
    super(paramContext);
    akY = new MapView.b(this, paramContext, null);
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    akY = new MapView.b(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    akY = new MapView.b(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    akY = new MapView.b(this, paramContext, paramGoogleMapOptions);
  }
  
  @Deprecated
  public final GoogleMap getMap()
  {
    if (akS != null) {
      return akS;
    }
    akY.nO();
    if (akY.je() == null) {
      return null;
    }
    try
    {
      akS = new GoogleMap(((MapView.a)akY.je()).nP().getMap());
      return akS;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    jx.aU("getMapAsync() must be called on the main thread");
    akY.getMapAsync(paramOnMapReadyCallback);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    akY.onCreate(paramBundle);
    if (akY.je() == null) {
      a.b(this);
    }
  }
  
  public final void onDestroy()
  {
    akY.onDestroy();
  }
  
  public final void onLowMemory()
  {
    akY.onLowMemory();
  }
  
  public final void onPause()
  {
    akY.onPause();
  }
  
  public final void onResume()
  {
    akY.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    akY.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */