package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.x;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class SupportStreetViewPanoramaFragment$b
  extends a<SupportStreetViewPanoramaFragment.a>
{
  private final Fragment Mx;
  protected f<SupportStreetViewPanoramaFragment.a> akW;
  private final List<OnStreetViewPanoramaReadyCallback> alq = new ArrayList();
  private Activity nB;
  
  SupportStreetViewPanoramaFragment$b(Fragment paramFragment)
  {
    Mx = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    nB = paramActivity;
    nO();
  }
  
  protected void a(f<SupportStreetViewPanoramaFragment.a> paramf)
  {
    akW = paramf;
    nO();
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    if (je() != null)
    {
      ((SupportStreetViewPanoramaFragment.a)je()).getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
      return;
    }
    alq.add(paramOnStreetViewPanoramaReadyCallback);
  }
  
  public void nO()
  {
    if ((nB != null) && (akW != null) && (je() == null)) {}
    try
    {
      MapsInitializer.initialize(nB);
      Object localObject = x.S(nB).k(e.k(nB));
      akW.a(new SupportStreetViewPanoramaFragment.a(Mx, (IStreetViewPanoramaFragmentDelegate)localObject));
      localObject = alq.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnStreetViewPanoramaReadyCallback localOnStreetViewPanoramaReadyCallback = (OnStreetViewPanoramaReadyCallback)((Iterator)localObject).next();
        ((SupportStreetViewPanoramaFragment.a)je()).getStreetViewPanoramaAsync(localOnStreetViewPanoramaReadyCallback);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      alq.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */