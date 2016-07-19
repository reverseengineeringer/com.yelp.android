package com.crashlytics.android.core;

import android.util.Log;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;

class a
{
  private final String a;
  private final boolean b;
  
  public a(String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = paramBoolean;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((CommonUtils.c(a)) && (b))
    {
      paramString1 = b(paramString1, paramString2);
      Log.e("Fabric", ".");
      Log.e("Fabric", ".     |  | ");
      Log.e("Fabric", ".     |  |");
      Log.e("Fabric", ".     |  |");
      Log.e("Fabric", ".   \\ |  | /");
      Log.e("Fabric", ".    \\    /");
      Log.e("Fabric", ".     \\  /");
      Log.e("Fabric", ".      \\/");
      Log.e("Fabric", ".");
      Log.e("Fabric", paramString1);
      Log.e("Fabric", ".");
      Log.e("Fabric", ".      /\\");
      Log.e("Fabric", ".     /  \\");
      Log.e("Fabric", ".    /    \\");
      Log.e("Fabric", ".   / |  | \\");
      Log.e("Fabric", ".     |  |");
      Log.e("Fabric", ".     |  |");
      Log.e("Fabric", ".     |  |");
      Log.e("Fabric", ".");
      throw new CrashlyticsMissingDependencyException(paramString1);
    }
    if (!b) {
      c.h().a("Fabric", "Configured not to require a build ID.");
    }
  }
  
  protected String b(String paramString1, String paramString2)
  {
    return "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */