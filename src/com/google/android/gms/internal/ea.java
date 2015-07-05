package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.dynamic.e;

@ey
public final class ea
  implements SafeParcelable
{
  public static final dz CREATOR = new dz();
  public final ek md;
  public final Context sA;
  public final ej sB;
  public final em sz;
  public final int versionCode;
  
  ea(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4)
  {
    versionCode = paramInt;
    md = ((ek)e.f(d.a.ap(paramIBinder1)));
    sz = ((em)e.f(d.a.ap(paramIBinder2)));
    sA = ((Context)e.f(d.a.ap(paramIBinder3)));
    sB = ((ej)e.f(d.a.ap(paramIBinder4)));
  }
  
  public ea(Context paramContext, ek paramek, em paramem, ej paramej)
  {
    versionCode = 2;
    sA = paramContext;
    md = paramek;
    sz = paramem;
    sB = paramej;
  }
  
  public static void a(Intent paramIntent, ea paramea)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", paramea);
    paramIntent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", localBundle);
  }
  
  public static ea c(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      paramIntent.setClassLoader(ea.class.getClassLoader());
      paramIntent = (ea)paramIntent.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  IBinder ct()
  {
    return e.k(sB).asBinder();
  }
  
  IBinder cu()
  {
    return e.k(md).asBinder();
  }
  
  IBinder cv()
  {
    return e.k(sz).asBinder();
  }
  
  IBinder cw()
  {
    return e.k(sA).asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dz.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */