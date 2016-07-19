package com.yelp.android.appdata;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.location.e;
import com.google.android.gms.location.j;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

class h$1
  implements GoogleApiClient.ConnectionCallbacks
{
  h$1(h paramh) {}
  
  public void onConnected(Bundle paramBundle)
  {
    paramBundle = h.a(a).iterator();
    while (paramBundle.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramBundle.next();
      if (localWeakReference.get() != null) {
        a.b.a(a.a, h.b(a), (j)localWeakReference.get());
      }
    }
    h.a(a).clear();
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.h.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */