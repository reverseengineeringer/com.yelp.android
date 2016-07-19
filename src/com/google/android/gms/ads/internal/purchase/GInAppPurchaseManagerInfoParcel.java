package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.c.a;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ey;
import com.google.android.gms.internal.fv;

@fv
public final class GInAppPurchaseManagerInfoParcel
  implements SafeParcelable
{
  public static final a CREATOR = new a();
  public final int a;
  public final k b;
  public final ey c;
  public final Context d;
  public final j e;
  
  GInAppPurchaseManagerInfoParcel(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4)
  {
    a = paramInt;
    b = ((k)d.a(c.a.a(paramIBinder1)));
    c = ((ey)d.a(c.a.a(paramIBinder2)));
    d = ((Context)d.a(c.a.a(paramIBinder3)));
    e = ((j)d.a(c.a.a(paramIBinder4)));
  }
  
  public GInAppPurchaseManagerInfoParcel(Context paramContext, k paramk, ey paramey, j paramj)
  {
    a = 2;
    d = paramContext;
    b = paramk;
    c = paramey;
    e = paramj;
  }
  
  public static GInAppPurchaseManagerInfoParcel a(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      paramIntent.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
      paramIntent = (GInAppPurchaseManagerInfoParcel)paramIntent.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public static void a(Intent paramIntent, GInAppPurchaseManagerInfoParcel paramGInAppPurchaseManagerInfoParcel)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", paramGInAppPurchaseManagerInfoParcel);
    paramIntent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", localBundle);
  }
  
  IBinder a()
  {
    return d.a(e).asBinder();
  }
  
  IBinder b()
  {
    return d.a(b).asBinder();
  }
  
  IBinder c()
  {
    return d.a(c).asBinder();
  }
  
  IBinder d()
  {
    return d.a(d).asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */