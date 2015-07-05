package com.crashlytics.android;

import android.content.Context;
import com.crashlytics.android.internal.ar;
import com.crashlytics.android.internal.bd;

final class ab
{
  private final Context a;
  private final ar b;
  
  public ab(Context paramContext, ar paramar)
  {
    a = paramContext;
    b = paramar;
  }
  
  private String a(String paramString1, String paramString2)
  {
    paramString1 = bd.a(a, paramString1);
    if ((paramString1 == null) || (paramString1.length() == 0)) {}
    for (int i = 1; i != 0; i = 0) {
      return paramString2;
    }
    return paramString1;
  }
  
  public final String a()
  {
    return a("com.crashlytics.CrashSubmissionPromptTitle", b.a);
  }
  
  public final String b()
  {
    return a("com.crashlytics.CrashSubmissionPromptMessage", b.b);
  }
  
  public final String c()
  {
    return a("com.crashlytics.CrashSubmissionSendTitle", b.c);
  }
  
  public final String d()
  {
    return a("com.crashlytics.CrashSubmissionAlwaysSendTitle", b.g);
  }
  
  public final String e()
  {
    return a("com.crashlytics.CrashSubmissionCancelTitle", b.e);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */