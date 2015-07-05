package com.google.android.gms.internal;

import android.os.Bundle;

@ey
public final class bn
{
  public static iy<String> ph;
  public static iy<String> pi;
  public static iy<Boolean> pj;
  public static iy<Boolean> pk;
  public static iy<Boolean> pl;
  public static iy<String> pm;
  public static iy<Boolean> pn = c("gads:spam_app_context:enabled", false);
  public static iy<String> po = a("gads:spam_app_context:experiment_id", (String)null);
  public static iy<Boolean> pp;
  public static iy<Integer> pq;
  public static iy<Integer> pr;
  public static iy<Integer> ps;
  public static iy<Integer> pt;
  public static iy<Integer> pu;
  private static final Bundle pv = new Bundle();
  private static boolean pw = false;
  
  static
  {
    ph = a("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
    pi = a("gads:sdk_core_experiment_id", (String)null);
    pj = c("gads:sdk_crash_report_enabled", false);
    pk = c("gads:sdk_crash_report_full_stacktrace", false);
    pl = c("gads:block_autoclicks", false);
    pm = a("gads:block_autoclicks_experiment_id", (String)null);
    pw = true;
    pp = c("gads:enable_content_fetching", false);
    pq = a("gads:content_length_weight", 1);
    pr = a("gads:content_age_weight", 1);
    ps = a("gads:min_content_len", 11);
    pt = a("gads:fingerprint_number", 10);
    pu = a("gads:sleep_sec", 10);
  }
  
  private static iy<Integer> a(String paramString, int paramInt)
  {
    pv.putInt(paramString, paramInt);
    return iy.a(paramString, Integer.valueOf(paramInt));
  }
  
  private static iy<String> a(String paramString1, String paramString2)
  {
    pv.putString(paramString1, paramString2);
    return iy.l(paramString1, paramString2);
  }
  
  public static Bundle by()
  {
    return pv;
  }
  
  private static iy<Boolean> c(String paramString, boolean paramBoolean)
  {
    pv.putBoolean(paramString, paramBoolean);
    return iy.h(paramString, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */