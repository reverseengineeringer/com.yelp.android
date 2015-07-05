package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.x;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MapFragment$b
  extends a<MapFragment.a>
{
  private final Fragment TG;
  protected f<MapFragment.a> akW;
  private final List<OnMapReadyCallback> akX = new ArrayList();
  private Activity nB;
  
  MapFragment$b(Fragment paramFragment)
  {
    TG = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    nB = paramActivity;
    nO();
  }
  
  protected void a(f<MapFragment.a> paramf)
  {
    akW = paramf;
    nO();
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    if (je() != null)
    {
      ((MapFragment.a)je()).getMapAsync(paramOnMapReadyCallback);
      return;
    }
    akX.add(paramOnMapReadyCallback);
  }
  
  public void nO()
  {
    if ((nB != null) && (akW != null) && (je() == null)) {}
    try
    {
      MapsInitializer.initialize(nB);
      Object localObject = x.S(nB).j(e.k(nB));
      akW.a(new MapFragment.a(TG, (IMapFragmentDelegate)localObject));
      localObject = akX.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((MapFragment.a)je()).getMapAsync(localOnMapReadyCallback);
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
 * Qualified Name:     com.google.android.gms.maps.MapFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */