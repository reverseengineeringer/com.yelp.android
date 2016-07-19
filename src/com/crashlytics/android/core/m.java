package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.o;

class m
{
  private final Context a;
  private final o b;
  
  public m(Context paramContext, o paramo)
  {
    a = paramContext;
    b = paramo;
  }
  
  private String a(String paramString1, String paramString2)
  {
    return b(CommonUtils.b(a, paramString1), paramString2);
  }
  
  private boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  private String b(String paramString1, String paramString2)
  {
    if (a(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  public String a()
  {
    return a("com.crashlytics.CrashSubmissionPromptTitle", b.a);
  }
  
  public String b()
  {
    return a("com.crashlytics.CrashSubmissionPromptMessage", b.b);
  }
  
  public String c()
  {
    return a("com.crashlytics.CrashSubmissionSendTitle", b.c);
  }
  
  public String d()
  {
    return a("com.crashlytics.CrashSubmissionAlwaysSendTitle", b.g);
  }
  
  public String e()
  {
    return a("com.crashlytics.CrashSubmissionCancelTitle", b.e);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */