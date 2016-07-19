package com.yelp.android.services.backgroundlocation;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Parcelable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import com.google.android.gms.location.l;
import com.yelp.android.util.YelpLog;

public class b
{
  private GoogleApiClient a;
  private e b = l.b;
  private Context c;
  private long d;
  private GoogleApiClient.ConnectionCallbacks e = new b.1(this);
  private GoogleApiClient.OnConnectionFailedListener f = new b.2(this);
  
  public b(Context paramContext)
  {
    c = paramContext;
  }
  
  public static Location a(Intent paramIntent)
  {
    return (Location)paramIntent.getParcelableExtra("location");
  }
  
  @SuppressLint({"MissingPermission"})
  private void a()
  {
    Object localObject1 = new Intent(c, FusedLocationProviderService.class);
    Object localObject2 = b.a(a);
    if (localObject2 != null)
    {
      YelpLog.v("BackgroundLocation", "Using already available location.");
      ((Intent)localObject1).putExtra("location", (Parcelable)localObject2);
      c.startService((Intent)localObject1);
      return;
    }
    YelpLog.v("BackgroundLocation", "Location not available, registering for location updates.");
    localObject2 = LocationRequest.a();
    ((LocationRequest)localObject2).a(102);
    ((LocationRequest)localObject2).b(1);
    ((LocationRequest)localObject2).b(d);
    localObject1 = PendingIntent.getService(c, 0, (Intent)localObject1, 134217728);
    b.a(a, (LocationRequest)localObject2, (PendingIntent)localObject1);
  }
  
  public void a(long paramLong)
  {
    if ((a != null) && (a.isConnecting())) {
      return;
    }
    if ((a != null) && (a.isConnected()))
    {
      a();
      return;
    }
    d = paramLong;
    a = new GoogleApiClient.Builder(c).addConnectionCallbacks(e).addOnConnectionFailedListener(f).addApi(l.a).build();
    a.connect();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */