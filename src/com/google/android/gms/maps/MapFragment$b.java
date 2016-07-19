package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MapFragment$b
  extends b<MapFragment.a>
{
  protected com.google.android.gms.dynamic.e<MapFragment.a> a;
  private final Fragment b;
  private Activity c;
  private final List<e> d = new ArrayList();
  
  MapFragment$b(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    g();
  }
  
  protected void a(com.google.android.gms.dynamic.e<MapFragment.a> parame)
  {
    a = parame;
    g();
  }
  
  public void g()
  {
    if ((c != null) && (a != null) && (a() == null)) {
      try
      {
        d.a(c);
        Object localObject = q.a(c).b(com.google.android.gms.dynamic.d.a(c));
        if (localObject == null) {
          return;
        }
        a.a(new MapFragment.a(b, (com.yelp.android.bj.d)localObject));
        localObject = d.iterator();
        while (((Iterator)localObject).hasNext())
        {
          e locale = (e)((Iterator)localObject).next();
          ((MapFragment.a)a()).a(locale);
        }
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
        d.clear();
        return;
      }
      catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */