package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.b;
import com.google.android.gms.location.e;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public abstract interface ni
  extends IInterface
{
  public abstract void S(boolean paramBoolean);
  
  public abstract void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent, nh paramnh, String paramString);
  
  public abstract void a(Location paramLocation, int paramInt);
  
  public abstract void a(nh paramnh, String paramString);
  
  public abstract void a(nl paramnl, PendingIntent paramPendingIntent);
  
  public abstract void a(nl paramnl, b paramb);
  
  public abstract void a(ns paramns, oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(nu paramnu, oh paramoh, og paramog);
  
  public abstract void a(nw paramnw, oh paramoh);
  
  public abstract void a(ny paramny, oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(oc paramoc, oh paramoh, og paramog);
  
  public abstract void a(oe paramoe, LatLngBounds paramLatLngBounds, List<String> paramList, oh paramoh, og paramog);
  
  public abstract void a(oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, nh paramnh);
  
  public abstract void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  public abstract void a(LocationRequest paramLocationRequest, b paramb);
  
  public abstract void a(LocationRequest paramLocationRequest, b paramb, String paramString);
  
  public abstract void a(b paramb);
  
  public abstract void a(LatLng paramLatLng, nu paramnu, oh paramoh, og paramog);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, nu paramnu, oh paramoh, og paramog);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, String paramString, nu paramnu, oh paramoh, og paramog);
  
  public abstract void a(String paramString, oh paramoh, og paramog);
  
  public abstract void a(String paramString, LatLngBounds paramLatLngBounds, nq paramnq, oh paramoh, og paramog);
  
  public abstract void a(List<nn> paramList, PendingIntent paramPendingIntent, nh paramnh, String paramString);
  
  public abstract void a(List<String> paramList, oh paramoh, og paramog);
  
  public abstract void a(String[] paramArrayOfString, nh paramnh, String paramString);
  
  public abstract void b(PendingIntent paramPendingIntent);
  
  public abstract void b(Location paramLocation);
  
  public abstract void b(oh paramoh, PendingIntent paramPendingIntent);
  
  public abstract void b(String paramString, oh paramoh, og paramog);
  
  public abstract Location bZ(String paramString);
  
  public abstract e ca(String paramString);
  
  public abstract Location ni();
  
  public abstract IBinder nj();
  
  public abstract IBinder nk();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */