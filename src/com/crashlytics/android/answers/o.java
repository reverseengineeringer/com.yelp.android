package com.crashlytics.android.answers;

final class o
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;
  public final String k;
  private String l;
  
  public o(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
    h = paramString8;
    i = paramString9;
    j = paramString10;
    k = paramString11;
  }
  
  public String toString()
  {
    if (l == null) {
      l = ("appBundleId=" + a + ", executionId=" + b + ", installationId=" + c + ", androidId=" + d + ", advertisingId=" + e + ", betaDeviceToken=" + f + ", buildId=" + g + ", osVersion=" + h + ", deviceModel=" + i + ", appVersionCode=" + j + ", appVersionName=" + k);
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */