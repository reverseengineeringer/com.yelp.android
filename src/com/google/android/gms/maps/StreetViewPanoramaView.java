package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaView
  extends FrameLayout
{
  private StreetViewPanorama alm;
  private final StreetViewPanoramaView.b aly;
  
  public StreetViewPanoramaView(Context paramContext)
  {
    super(paramContext);
    aly = new StreetViewPanoramaView.b(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    aly = new StreetViewPanoramaView.b(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    aly = new StreetViewPanoramaView.b(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    super(paramContext);
    aly = new StreetViewPanoramaView.b(this, paramContext, paramStreetViewPanoramaOptions);
  }
  
  @Deprecated
  public final StreetViewPanorama getStreetViewPanorama()
  {
    if (alm != null) {
      return alm;
    }
    aly.nO();
    if (aly.je() == null) {
      return null;
    }
    try
    {
      alm = new StreetViewPanorama(((StreetViewPanoramaView.a)aly.je()).nV().getStreetViewPanorama());
      return alm;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    jx.aU("getStreetViewPanoramaAsync() must be called on the main thread");
    aly.getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    aly.onCreate(paramBundle);
    if (aly.je() == null) {
      a.b(this);
    }
  }
  
  public final void onDestroy()
  {
    aly.onDestroy();
  }
  
  public final void onLowMemory()
  {
    aly.onLowMemory();
  }
  
  public final void onPause()
  {
    aly.onPause();
  }
  
  public final void onResume()
  {
    aly.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    aly.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */