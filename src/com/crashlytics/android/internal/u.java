package com.crashlytics.android.internal;

import java.util.Map;

final class u
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final long i;
  public final W j;
  public final Map<String, String> k;
  private String l;
  
  private u(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, long paramLong, W paramW, Map<String, String> paramMap)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
    h = paramString8;
    i = paramLong;
    j = paramW;
    k = paramMap;
  }
  
  public static final u a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, W paramW, Map<String, String> paramMap)
  {
    return new u(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8, System.currentTimeMillis(), paramW, paramMap);
  }
  
  public final String toString()
  {
    if (l == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append(getClass().getSimpleName());
      localStringBuilder.append(": appBundleId=");
      localStringBuilder.append(a);
      localStringBuilder.append(", executionId=");
      localStringBuilder.append(b);
      localStringBuilder.append(", installationId=");
      localStringBuilder.append(c);
      localStringBuilder.append(", androidId=");
      localStringBuilder.append(d);
      localStringBuilder.append(", osVersion=");
      localStringBuilder.append(e);
      localStringBuilder.append(", deviceModel=");
      localStringBuilder.append(f);
      localStringBuilder.append(", appVersionCode=");
      localStringBuilder.append(g);
      localStringBuilder.append(", appVersionName=");
      localStringBuilder.append(h);
      localStringBuilder.append(", timestamp=");
      localStringBuilder.append(i);
      localStringBuilder.append(", type=");
      localStringBuilder.append(j);
      localStringBuilder.append(", details=");
      localStringBuilder.append(k.toString());
      localStringBuilder.append("]");
      l = localStringBuilder.toString();
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */