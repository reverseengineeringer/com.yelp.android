package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MapView$b
  extends b<MapView.a>
{
  protected com.google.android.gms.dynamic.e<MapView.a> a;
  private final ViewGroup b;
  private final Context c;
  private final GoogleMapOptions d;
  private final List<e> e = new ArrayList();
  
  MapView$b(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    b = paramViewGroup;
    c = paramContext;
    d = paramGoogleMapOptions;
  }
  
  protected void a(com.google.android.gms.dynamic.e<MapView.a> parame)
  {
    a = parame;
    g();
  }
  
  public void a(e parame)
  {
    if (a() != null)
    {
      ((MapView.a)a()).a(parame);
      return;
    }
    e.add(parame);
  }
  
  public void g()
  {
    if ((a != null) && (a() == null)) {
      try
      {
        d.a(c);
        Object localObject = q.a(c).a(com.google.android.gms.dynamic.d.a(c), d);
        if (localObject == null) {
          return;
        }
        a.a(new MapView.a(b, (com.yelp.android.bj.e)localObject));
        localObject = e.iterator();
        while (((Iterator)localObject).hasNext())
        {
          e locale = (e)((Iterator)localObject).next();
          ((MapView.a)a()).a(locale);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */