package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.x;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MapView$b
  extends a<MapView.a>
{
  protected f<MapView.a> akW;
  private final List<OnMapReadyCallback> akX = new ArrayList();
  private final ViewGroup ald;
  private final GoogleMapOptions ale;
  private final Context mContext;
  
  MapView$b(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    ald = paramViewGroup;
    mContext = paramContext;
    ale = paramGoogleMapOptions;
  }
  
  protected void a(f<MapView.a> paramf)
  {
    akW = paramf;
    nO();
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    if (je() != null)
    {
      ((MapView.a)je()).getMapAsync(paramOnMapReadyCallback);
      return;
    }
    akX.add(paramOnMapReadyCallback);
  }
  
  public void nO()
  {
    if ((akW != null) && (je() == null)) {}
    try
    {
      Object localObject = x.S(mContext).a(e.k(mContext), ale);
      akW.a(new MapView.a(ald, (IMapViewDelegate)localObject));
      localObject = akX.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((MapView.a)je()).getMapAsync(localOnMapReadyCallback);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      akX.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */