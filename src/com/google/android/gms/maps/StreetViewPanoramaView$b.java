package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.x;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class StreetViewPanoramaView$b
  extends a<StreetViewPanoramaView.a>
{
  protected f<StreetViewPanoramaView.a> akW;
  private final StreetViewPanoramaOptions alC;
  private final ViewGroup ald;
  private final List<OnStreetViewPanoramaReadyCallback> alq = new ArrayList();
  private final Context mContext;
  
  StreetViewPanoramaView$b(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    ald = paramViewGroup;
    mContext = paramContext;
    alC = paramStreetViewPanoramaOptions;
  }
  
  protected void a(f<StreetViewPanoramaView.a> paramf)
  {
    akW = paramf;
    nO();
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    if (je() != null)
    {
      ((StreetViewPanoramaView.a)je()).getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
      return;
    }
    alq.add(paramOnStreetViewPanoramaReadyCallback);
  }
  
  public void nO()
  {
    if ((akW != null) && (je() == null)) {}
    try
    {
      Object localObject = x.S(mContext).a(e.k(mContext), alC);
      akW.a(new StreetViewPanoramaView.a(ald, (IStreetViewPanoramaViewDelegate)localObject));
      localObject = alq.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnStreetViewPanoramaReadyCallback localOnStreetViewPanoramaReadyCallback = (OnStreetViewPanoramaReadyCallback)((Iterator)localObject).next();
        ((StreetViewPanoramaView.a)je()).getStreetViewPanoramaAsync(localOnStreetViewPanoramaReadyCallback);
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
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */