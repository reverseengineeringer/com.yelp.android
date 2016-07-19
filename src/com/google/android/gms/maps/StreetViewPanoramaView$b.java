package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.i;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class StreetViewPanoramaView$b
  extends b<StreetViewPanoramaView.a>
{
  protected e<StreetViewPanoramaView.a> a;
  private final ViewGroup b;
  private final Context c;
  private final StreetViewPanoramaOptions d;
  private final List<f> e = new ArrayList();
  
  StreetViewPanoramaView$b(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    b = paramViewGroup;
    c = paramContext;
    d = paramStreetViewPanoramaOptions;
  }
  
  protected void a(e<StreetViewPanoramaView.a> parame)
  {
    a = parame;
    g();
  }
  
  public void g()
  {
    if ((a != null) && (a() == null)) {}
    try
    {
      Object localObject = q.a(c).a(d.a(c), d);
      a.a(new StreetViewPanoramaView.a(b, (i)localObject));
      localObject = e.iterator();
      while (((Iterator)localObject).hasNext())
      {
        f localf = (f)((Iterator)localObject).next();
        ((StreetViewPanoramaView.a)a()).a(localf);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      e.clear();
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