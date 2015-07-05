package com.crashlytics.android;

import com.crashlytics.android.internal.ax;
import com.crashlytics.android.internal.bu;
import com.crashlytics.android.internal.bw;
import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cj;
import com.crashlytics.android.internal.cl;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class aa
  extends com.crashlytics.android.internal.y
  implements z
{
  public aa(String paramString1, String paramString2, bu parambu)
  {
    super(paramString1, paramString2, parambu, ax.b);
  }
  
  public final boolean a(y paramy)
  {
    bw localbw = b().a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", d.a().f());
    Iterator localIterator = b.e().entrySet().iterator();
    while (localIterator.hasNext()) {
      localbw = localbw.a((Map.Entry)localIterator.next());
    }
    paramy = b;
    paramy = localbw.a("report[file]", paramy.b(), "application/octet-stream", paramy.d()).b("report[identifier]", paramy.c());
    cl.a().b().a("Crashlytics", "Sending report to: " + a());
    int i = paramy.b();
    cl.a().b().a("Crashlytics", "Create report request ID: " + paramy.a("X-REQUEST-ID"));
    cl.a().b().a("Crashlytics", "Result was: " + i);
    return cj.a(i) == 0;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */