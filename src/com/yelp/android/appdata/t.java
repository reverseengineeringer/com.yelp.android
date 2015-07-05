package com.yelp.android.appdata;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

class t
  implements GoogleApiClient.ConnectionCallbacks
{
  t(s params) {}
  
  public void onConnected(Bundle paramBundle)
  {
    paramBundle = s.a(a).iterator();
    while (paramBundle.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramBundle.next();
      if (localWeakReference.get() != null) {
        a.b.requestLocationUpdates(a.a, s.b(a), (LocationListener)localWeakReference.get());
      }
    }
    s.a(a).clear();
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */