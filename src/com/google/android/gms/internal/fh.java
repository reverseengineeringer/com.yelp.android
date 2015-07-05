package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@ey
public final class fh
  implements SafeParcelable
{
  public static final fi CREATOR = new fi();
  public final ApplicationInfo applicationInfo;
  public final String lL;
  public final gs lO;
  public final ay lS;
  public final List<String> mc;
  public final Bundle tK;
  public final av tL;
  public final PackageInfo tM;
  public final String tN;
  public final String tO;
  public final String tP;
  public final Bundle tQ;
  public final int tR;
  public final Bundle tS;
  public final boolean tT;
  public final int versionCode;
  
  fh(int paramInt1, Bundle paramBundle1, av paramav, ay paramay, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, gs paramgs, Bundle paramBundle2, int paramInt2, List<String> paramList, Bundle paramBundle3, boolean paramBoolean)
  {
    versionCode = paramInt1;
    tK = paramBundle1;
    tL = paramav;
    lS = paramay;
    lL = paramString1;
    applicationInfo = paramApplicationInfo;
    tM = paramPackageInfo;
    tN = paramString2;
    tO = paramString3;
    tP = paramString4;
    lO = paramgs;
    tQ = paramBundle2;
    tR = paramInt2;
    mc = paramList;
    tS = paramBundle3;
    tT = paramBoolean;
  }
  
  public fh(Bundle paramBundle1, av paramav, ay paramay, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, gs paramgs, Bundle paramBundle2, int paramInt, List<String> paramList, Bundle paramBundle3, boolean paramBoolean)
  {
    this(4, paramBundle1, paramav, paramay, paramString1, paramApplicationInfo, paramPackageInfo, paramString2, paramString3, paramString4, paramgs, paramBundle2, paramInt, paramList, paramBundle3, paramBoolean);
  }
  
  public fh(fh.a parama, String paramString)
  {
    this(tK, tL, lS, lL, applicationInfo, tM, paramString, tO, tP, lO, tQ, tR, mc, tS, tT);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fi.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */