package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.h;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class SupportStreetViewPanoramaFragment$b
  extends b<SupportStreetViewPanoramaFragment.a>
{
  protected e<SupportStreetViewPanoramaFragment.a> a;
  private final Fragment b;
  private Activity c;
  private final List<f> d = new ArrayList();
  
  SupportStreetViewPanoramaFragment$b(Fragment paramFragment)
  {
    b = paramFragment;
  }
  
  private void a(Activity paramActivity)
  {
    c = paramActivity;
    g();
  }
  
  protected void a(e<SupportStreetViewPanoramaFragment.a> parame)
  {
    a = parame;
    g();
  }
  
  public void g()
  {
    if ((c != null) && (a != null) && (a() == null)) {}
    try
    {
      d.a(c);
      Object localObject = q.a(c).c(com.google.android.gms.dynamic.d.a(c));
      a.a(new SupportStreetViewPanoramaFragment.a(b, (h)localObject));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext())
      {
        f localf = (f)((Iterator)localObject).next();
        ((SupportStreetViewPanoramaFragment.a)a()).a(localf);
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

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */