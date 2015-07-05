package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;

@ey
public final class fh$a
{
  public final ApplicationInfo applicationInfo;
  public final String lL;
  public final gs lO;
  public final ay lS;
  public final List<String> mc;
  public final Bundle tK;
  public final av tL;
  public final PackageInfo tM;
  public final String tO;
  public final String tP;
  public final Bundle tQ;
  public final int tR;
  public final Bundle tS;
  public final boolean tT;
  
  public fh$a(Bundle paramBundle1, av paramav, ay paramay, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, gs paramgs, Bundle paramBundle2, List<String> paramList, Bundle paramBundle3, boolean paramBoolean)
  {
    tK = paramBundle1;
    tL = paramav;
    lS = paramay;
    lL = paramString1;
    applicationInfo = paramApplicationInfo;
    tM = paramPackageInfo;
    tO = paramString2;
    tP = paramString3;
    lO = paramgs;
    tQ = paramBundle2;
    tT = paramBoolean;
    if ((paramList != null) && (paramList.size() > 0)) {
      tR = 2;
    }
    for (mc = paramList;; mc = null)
    {
      tS = paramBundle3;
      return;
      tR = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */