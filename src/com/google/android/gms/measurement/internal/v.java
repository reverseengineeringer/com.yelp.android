package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jb;

public final class v
{
  public static a<Long> A = a.a("measurement.service_client.idle_disconnect_millis", 5000L);
  public static a<Boolean> a = a.a("measurement.service_enabled", true);
  public static a<Boolean> b = a.a("measurement.service_client_enabled", true);
  public static a<String> c = a.a("measurement.log_tag", "GMPM", "GMPM-SVC");
  public static a<Long> d = a.a("measurement.ad_id_cache_time", 10000L);
  public static a<Long> e = a.a("measurement.monitoring.sample_period_millis", 86400000L);
  public static a<Long> f = a.a("measurement.config.cache_time", 86400000L);
  public static a<String> g = a.a("measurement.config.url_scheme", "https");
  public static a<String> h = a.a("measurement.config.url_authority", "app-measurement.com");
  public static a<Integer> i = a.a("measurement.upload.max_bundles", 100);
  public static a<Integer> j = a.a("measurement.upload.max_batch_size", 65536);
  public static a<Integer> k = a.a("measurement.upload.max_bundle_size", 65536);
  public static a<Integer> l = a.a("measurement.upload.max_events_per_bundle", 1000);
  public static a<Integer> m = a.a("measurement.upload.max_events_per_day", 100000);
  public static a<Integer> n = a.a("measurement.upload.max_public_events_per_day", 50000);
  public static a<Integer> o = a.a("measurement.upload.max_conversions_per_day", 500);
  public static a<Integer> p = a.a("measurement.store.max_stored_events_per_app", 100000);
  public static a<String> q = a.a("measurement.upload.url", "https://app-measurement.com/a");
  public static a<Long> r = a.a("measurement.upload.backoff_period", 43200000L);
  public static a<Long> s = a.a("measurement.upload.window_interval", 3600000L);
  public static a<Long> t = a.a("measurement.upload.interval", 3600000L);
  public static a<Long> u = a.a("measurement.upload.stale_data_deletion_interval", 86400000L);
  public static a<Long> v = a.a("measurement.upload.initial_upload_delay_time", 15000L);
  public static a<Long> w = a.a("measurement.upload.retry_time", 1800000L);
  public static a<Integer> x = a.a("measurement.upload.retry_count", 6);
  public static a<Long> y = a.a("measurement.upload.max_queue_time", 2419200000L);
  public static a<Integer> z = a.a("measurement.lifetimevalue.max_currency_tracked", 4);
  
  public static final class a<V>
  {
    private final V a;
    private final jb<V> b;
    private V c;
    private final String d;
    
    private a(String paramString, jb<V> paramjb, V paramV)
    {
      zzx.zzz(paramjb);
      b = paramjb;
      a = paramV;
      d = paramString;
    }
    
    static a<Integer> a(String paramString, int paramInt)
    {
      return a(paramString, paramInt, paramInt);
    }
    
    static a<Integer> a(String paramString, int paramInt1, int paramInt2)
    {
      return new a(paramString, jb.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
    }
    
    static a<Long> a(String paramString, long paramLong)
    {
      return a(paramString, paramLong, paramLong);
    }
    
    static a<Long> a(String paramString, long paramLong1, long paramLong2)
    {
      return new a(paramString, jb.a(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
    }
    
    static a<String> a(String paramString1, String paramString2)
    {
      return a(paramString1, paramString2, paramString2);
    }
    
    static a<String> a(String paramString1, String paramString2, String paramString3)
    {
      return new a(paramString1, jb.a(paramString1, paramString3), paramString2);
    }
    
    static a<Boolean> a(String paramString, boolean paramBoolean)
    {
      return a(paramString, paramBoolean, paramBoolean);
    }
    
    static a<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      return new a(paramString, jb.a(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
    }
    
    public V a(V paramV)
    {
      Object localObject;
      if (c != null) {
        localObject = c;
      }
      do
      {
        return (V)localObject;
        localObject = paramV;
      } while (paramV != null);
      if ((zzd.zzakE) && (jb.b())) {
        return (V)b.d();
      }
      return (V)a;
    }
    
    public String a()
    {
      return d;
    }
    
    public V b()
    {
      if (c != null) {
        return (V)c;
      }
      if ((zzd.zzakE) && (jb.b())) {
        return (V)b.d();
      }
      return (V)a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */