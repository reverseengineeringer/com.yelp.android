package com.crashlytics.android;

import android.util.Log;
import com.crashlytics.android.internal.bd;
import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;

final class al
{
  private String a;
  private boolean b;
  
  public al(String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = paramBoolean;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if ((bd.e(a)) && (b))
    {
      Log.e("Crashlytics", ".");
      Log.e("Crashlytics", ".     |  | ");
      Log.e("Crashlytics", ".     |  |");
      Log.e("Crashlytics", ".     |  |");
      Log.e("Crashlytics", ".   \\ |  | /");
      Log.e("Crashlytics", ".    \\    /");
      Log.e("Crashlytics", ".     \\  /");
      Log.e("Crashlytics", ".      \\/");
      Log.e("Crashlytics", ".");
      Log.e("Crashlytics", "This app relies on Crashlytics. Configure your build environment here: ");
      Log.e("Crashlytics", String.format("https://crashlytics.com/register/%s/android/%s", new Object[] { paramString1, paramString2 }));
      Log.e("Crashlytics", ".");
      Log.e("Crashlytics", ".      /\\");
      Log.e("Crashlytics", ".     /  \\");
      Log.e("Crashlytics", ".    /    \\");
      Log.e("Crashlytics", ".   / |  | \\");
      Log.e("Crashlytics", ".     |  |");
      Log.e("Crashlytics", ".     |  |");
      Log.e("Crashlytics", ".     |  |");
      Log.e("Crashlytics", ".");
      throw new CrashlyticsMissingDependencyException(paramString1, paramString2);
    }
    if (!b) {
      cl.a().b().a("Crashlytics", "Configured not to require a build ID.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */