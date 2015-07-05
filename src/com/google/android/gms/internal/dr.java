package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.dynamic.e;

@ey
public final class dr
  implements SafeParcelable
{
  public static final dq CREATOR = new dq();
  public final gs lO;
  public final int orientation;
  public final String rH;
  public final do sb;
  public final t sc;
  public final ds sd;
  public final gu se;
  public final cb sf;
  public final String sg;
  public final boolean sh;
  public final String si;
  public final dv sj;
  public final int sk;
  public final ce sl;
  public final String sm;
  public final y sn;
  public final int versionCode;
  
  dr(int paramInt1, do paramdo, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4, String paramString1, boolean paramBoolean, String paramString2, IBinder paramIBinder5, int paramInt2, int paramInt3, String paramString3, gs paramgs, IBinder paramIBinder6, String paramString4, y paramy)
  {
    versionCode = paramInt1;
    sb = paramdo;
    sc = ((t)e.f(d.a.ap(paramIBinder1)));
    sd = ((ds)e.f(d.a.ap(paramIBinder2)));
    se = ((gu)e.f(d.a.ap(paramIBinder3)));
    sf = ((cb)e.f(d.a.ap(paramIBinder4)));
    sg = paramString1;
    sh = paramBoolean;
    si = paramString2;
    sj = ((dv)e.f(d.a.ap(paramIBinder5)));
    orientation = paramInt2;
    sk = paramInt3;
    rH = paramString3;
    lO = paramgs;
    sl = ((ce)e.f(d.a.ap(paramIBinder6)));
    sm = paramString4;
    sn = paramy;
  }
  
  public dr(do paramdo, t paramt, ds paramds, dv paramdv, gs paramgs)
  {
    versionCode = 4;
    sb = paramdo;
    sc = paramt;
    sd = paramds;
    se = null;
    sf = null;
    sg = null;
    sh = false;
    si = null;
    sj = paramdv;
    orientation = -1;
    sk = 4;
    rH = null;
    lO = paramgs;
    sl = null;
    sm = null;
    sn = null;
  }
  
  public dr(t paramt, ds paramds, cb paramcb, dv paramdv, gu paramgu, boolean paramBoolean, int paramInt, String paramString, gs paramgs, ce paramce)
  {
    versionCode = 4;
    sb = null;
    sc = paramt;
    sd = paramds;
    se = paramgu;
    sf = paramcb;
    sg = null;
    sh = paramBoolean;
    si = null;
    sj = paramdv;
    orientation = paramInt;
    sk = 3;
    rH = paramString;
    lO = paramgs;
    sl = paramce;
    sm = null;
    sn = null;
  }
  
  public dr(t paramt, ds paramds, cb paramcb, dv paramdv, gu paramgu, boolean paramBoolean, int paramInt, String paramString1, String paramString2, gs paramgs, ce paramce)
  {
    versionCode = 4;
    sb = null;
    sc = paramt;
    sd = paramds;
    se = paramgu;
    sf = paramcb;
    sg = paramString2;
    sh = paramBoolean;
    si = paramString1;
    sj = paramdv;
    orientation = paramInt;
    sk = 3;
    rH = null;
    lO = paramgs;
    sl = paramce;
    sm = null;
    sn = null;
  }
  
  public dr(t paramt, ds paramds, dv paramdv, gu paramgu, int paramInt, gs paramgs, String paramString, y paramy)
  {
    versionCode = 4;
    sb = null;
    sc = paramt;
    sd = paramds;
    se = paramgu;
    sf = null;
    sg = null;
    sh = false;
    si = null;
    sj = paramdv;
    orientation = paramInt;
    sk = 1;
    rH = null;
    lO = paramgs;
    sl = null;
    sm = paramString;
    sn = paramy;
  }
  
  public dr(t paramt, ds paramds, dv paramdv, gu paramgu, boolean paramBoolean, int paramInt, gs paramgs)
  {
    versionCode = 4;
    sb = null;
    sc = paramt;
    sd = paramds;
    se = paramgu;
    sf = null;
    sg = null;
    sh = paramBoolean;
    si = null;
    sj = paramdv;
    orientation = paramInt;
    sk = 2;
    rH = null;
    lO = paramgs;
    sl = null;
    sm = null;
    sn = null;
  }
  
  public static void a(Intent paramIntent, dr paramdr)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", paramdr);
    paramIntent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", localBundle);
  }
  
  public static dr b(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      paramIntent.setClassLoader(dr.class.getClassLoader());
      paramIntent = (dr)paramIntent.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  IBinder ck()
  {
    return e.k(sc).asBinder();
  }
  
  IBinder cl()
  {
    return e.k(sd).asBinder();
  }
  
  IBinder cm()
  {
    return e.k(se).asBinder();
  }
  
  IBinder cn()
  {
    return e.k(sf).asBinder();
  }
  
  IBinder co()
  {
    return e.k(sl).asBinder();
  }
  
  IBinder cp()
  {
    return e.k(sj).asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */