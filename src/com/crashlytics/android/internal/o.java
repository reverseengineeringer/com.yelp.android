package com.crashlytics.android.internal;

import java.util.Collections;
import java.util.Map;

final class o
  implements Runnable
{
  o(n paramn, String paramString) {}
  
  public final void run()
  {
    try
    {
      t localt = b.a;
      String str1 = n.a(b);
      String str2 = n.b(b);
      String str3 = n.c(b);
      String str4 = n.d(b);
      String str5 = n.e(b);
      String str6 = n.f(b);
      String str7 = n.g(b);
      String str8 = n.h(b);
      Map localMap = Collections.singletonMap("sessionId", a);
      localt.a(u.a(str1, str2, str3, str4, str5, str6, str7, str8, W.i, localMap));
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to record crash event");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */