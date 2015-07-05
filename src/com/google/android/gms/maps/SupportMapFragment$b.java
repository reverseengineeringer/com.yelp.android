package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
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

class SupportMapFragment$b
  extends a<SupportMapFragment.a>
{
  private final Fragment Mx;
  protected f<SupportMapFragment.a> akW;
  private final List<OnMapReadyCallback> akX = new ArrayList();
  private Activity nB;
  
  SupportMapFragment$b(Fragment paramFragment)
  {
    Mx = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    nB = paramActivity;
    nO();
  }
  
  protected void a(f<SupportMapFragment.a> paramf)
  {
    akW = paramf;
    nO();
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    if (je() != null)
    {
      ((SupportMapFragment.a)je()).getMapAsync(paramOnMapReadyCallback);
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
      akW.a(new SupportMapFragment.a(Mx, (IMapFragmentDelegate)localObject));
      localObject = akX.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((SupportMapFragment.a)je()).getMapAsync(localOnMapReadyCallback);
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
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */