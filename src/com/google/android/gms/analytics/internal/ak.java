package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jb;

public final class ak
{
  public static a<Integer> A = a.a("analytics.max_batch_post_length", 8192);
  public static a<String> B = a.a("analytics.fallback_responses.k", "404,502");
  public static a<Integer> C = a.a("analytics.batch_retry_interval.seconds.k", 3600);
  public static a<Long> D = a.a("analytics.service_monitor_interval", 86400000L);
  public static a<Integer> E = a.a("analytics.http_connection.connect_timeout_millis", 60000);
  public static a<Integer> F = a.a("analytics.http_connection.read_timeout_millis", 61000);
  public static a<Long> G = a.a("analytics.campaigns.time_limit", 86400000L);
  public static a<String> H = a.a("analytics.first_party_experiment_id", "");
  public static a<Integer> I = a.a("analytics.first_party_experiment_variant", 0);
  public static a<Boolean> J = a.a("analytics.test.disable_receiver", false);
  public static a<Long> K = a.a("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
  public static a<Long> L = a.a("analytics.service_client.connect_timeout_millis", 5000L);
  public static a<Long> M = a.a("analytics.service_client.second_connect_delay_millis", 5000L);
  public static a<Long> N = a.a("analytics.service_client.unexpected_reconnect_millis", 60000L);
  public static a<Long> O = a.a("analytics.service_client.reconnect_throttle_millis", 1800000L);
  public static a<Long> P = a.a("analytics.monitoring.sample_period_millis", 86400000L);
  public static a<Long> Q = a.a("analytics.initialization_warning_threshold", 5000L);
  public static a<Boolean> a = a.a("analytics.service_enabled", false);
  public static a<Boolean> b = a.a("analytics.service_client_enabled", true);
  public static a<String> c = a.a("analytics.log_tag", "GAv4", "GAv4-SVC");
  public static a<Long> d = a.a("analytics.max_tokens", 60L);
  public static a<Float> e = a.a("analytics.tokens_per_sec", 0.5F);
  public static a<Integer> f = a.a("analytics.max_stored_hits", 2000, 20000);
  public static a<Integer> g = a.a("analytics.max_stored_hits_per_app", 2000);
  public static a<Integer> h = a.a("analytics.max_stored_properties_per_app", 100);
  public static a<Long> i = a.a("analytics.local_dispatch_millis", 1800000L, 120000L);
  public static a<Long> j = a.a("analytics.initial_local_dispatch_millis", 5000L, 5000L);
  public static a<Long> k = a.a("analytics.min_local_dispatch_millis", 120000L);
  public static a<Long> l = a.a("analytics.max_local_dispatch_millis", 7200000L);
  public static a<Long> m = a.a("analytics.dispatch_alarm_millis", 7200000L);
  public static a<Long> n = a.a("analytics.max_dispatch_alarm_millis", 32400000L);
  public static a<Integer> o = a.a("analytics.max_hits_per_dispatch", 20);
  public static a<Integer> p = a.a("analytics.max_hits_per_batch", 20);
  public static a<String> q = a.a("analytics.insecure_host", "http://www.google-analytics.com");
  public static a<String> r = a.a("analytics.secure_host", "https://ssl.google-analytics.com");
  public static a<String> s = a.a("analytics.simple_endpoint", "/collect");
  public static a<String> t = a.a("analytics.batching_endpoint", "/batch");
  public static a<Integer> u = a.a("analytics.max_get_length", 2036);
  public static a<String> v = a.a("analytics.batching_strategy.k", zzm.zzRo.name(), zzm.zzRo.name());
  public static a<String> w = a.a("analytics.compression_strategy.k", zzo.zzRv.name());
  public static a<Integer> x = a.a("analytics.max_hits_per_request.k", 20);
  public static a<Integer> y = a.a("analytics.max_hit_length.k", 8192);
  public static a<Integer> z = a.a("analytics.max_post_length.k", 8192);
  
  public static final class a<V>
  {
    private final V a;
    private final jb<V> b;
    private V c;
    
    private a(jb<V> paramjb, V paramV)
    {
      zzx.zzz(paramjb);
      b = paramjb;
      a = paramV;
    }
    
    static a<Float> a(String paramString, float paramFloat)
    {
      return a(paramString, paramFloat, paramFloat);
    }
    
    static a<Float> a(String paramString, float paramFloat1, float paramFloat2)
    {
      return new a(jb.a(paramString, Float.valueOf(paramFloat2)), Float.valueOf(paramFloat1));
    }
    
    static a<Integer> a(String paramString, int paramInt)
    {
      return a(paramString, paramInt, paramInt);
    }
    
    static a<Integer> a(String paramString, int paramInt1, int paramInt2)
    {
      return new a(jb.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
    }
    
    static a<Long> a(String paramString, long paramLong)
    {
      return a(paramString, paramLong, paramLong);
    }
    
    static a<Long> a(String paramString, long paramLong1, long paramLong2)
    {
      return new a(jb.a(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
    }
    
    static a<String> a(String paramString1, String paramString2)
    {
      return a(paramString1, paramString2, paramString2);
    }
    
    static a<String> a(String paramString1, String paramString2, String paramString3)
    {
      return new a(jb.a(paramString1, paramString3), paramString2);
    }
    
    static a<Boolean> a(String paramString, boolean paramBoolean)
    {
      return a(paramString, paramBoolean, paramBoolean);
    }
    
    static a<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      return new a(jb.a(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
    }
    
    public V a()
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
 * Qualified Name:     com.google.android.gms.analytics.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */