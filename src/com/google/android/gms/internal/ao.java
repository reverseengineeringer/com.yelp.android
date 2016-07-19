package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.s;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

@fv
public final class ao
{
  public static final ak<Boolean> A;
  public static final ak<Boolean> B;
  public static final ak<Boolean> C;
  public static final ak<String> D;
  public static final ak<String> E;
  public static final ak<String> F;
  public static final ak<Boolean> G;
  public static final ak<String> H;
  public static final ak<Boolean> I;
  public static final ak<Boolean> J;
  public static final ak<Integer> K;
  public static final ak<Integer> L;
  public static final ak<Integer> M;
  public static final ak<Integer> N;
  public static final ak<Integer> O;
  public static final ak<Boolean> P;
  public static final ak<Boolean> Q;
  public static final ak<Long> R;
  public static final ak<String> S;
  public static final ak<String> T;
  public static final ak<Boolean> U;
  public static final ak<Boolean> V;
  public static final ak<Boolean> W;
  public static final ak<String> X;
  public static final ak<Boolean> Y;
  public static final ak<Boolean> Z;
  public static final ak<String> a = ak.a(0, "gads:sdk_core_experiment_id");
  public static final ak<Boolean> aA = ak.a(0, "gass:enabled", Boolean.valueOf(false));
  public static final ak<Boolean> aB = ak.a(0, "gass:enable_int_signal", Boolean.valueOf(true));
  public static final ak<Boolean> aC = ak.a(0, "gads:adid_notification:first_party_check:enabled", Boolean.valueOf(true));
  public static final ak<Boolean> aD = ak.a(0, "gads:edu_device_helper:enabled", Boolean.valueOf(true));
  public static final ak<Boolean> aE = ak.a(0, "gads:support_screen_shot", Boolean.valueOf(true));
  public static final ak<Long> aF = ak.a(0, "gads:js_flags:update_interval", TimeUnit.HOURS.toMillis(12L));
  public static final ak<Boolean> aG = ak.a(0, "gads:custom_render:ping_on_ad_rendered", Boolean.valueOf(false));
  public static final ak<Integer> aa;
  public static final ak<String> ab;
  public static final ak<String> ac;
  public static final ak<Boolean> ad;
  public static final ak<Boolean> ae;
  public static final ak<String> af;
  public static final ak<Integer> ag;
  public static final ak<Integer> ah;
  public static final ak<Integer> ai;
  public static final ak<String> aj;
  public static final ak<Boolean> ak;
  public static final ak<Boolean> al;
  public static final ak<Long> am;
  public static final ak<Boolean> an;
  public static final ak<Boolean> ao;
  public static final ak<Boolean> ap;
  public static final ak<Boolean> aq;
  public static final ak<Boolean> ar;
  public static final ak<Boolean> as;
  public static final ak<Boolean> at;
  public static final ak<Long> au;
  public static final ak<Boolean> av;
  public static final ak<Boolean> aw;
  public static final ak<Long> ax;
  public static final ak<Long> ay;
  public static final ak<Boolean> az;
  public static final ak<String> b = ak.a(0, "gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
  public static final ak<Boolean> c = ak.a(0, "gads:request_builder:singleton_webview", Boolean.valueOf(false));
  public static final ak<String> d = ak.a(0, "gads:request_builder:singleton_webview_experiment_id");
  public static final ak<Boolean> e = ak.a(0, "gads:sdk_use_dynamic_module", Boolean.valueOf(false));
  public static final ak<String> f = ak.a(0, "gads:sdk_use_dynamic_module_experiment_id");
  public static final ak<Boolean> g = ak.a(0, "gads:sdk_crash_report_enabled", Boolean.valueOf(false));
  public static final ak<Boolean> h = ak.a(0, "gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
  public static final ak<Boolean> i = ak.a(0, "gads:block_autoclicks", Boolean.valueOf(false));
  public static final ak<String> j = ak.a(0, "gads:block_autoclicks_experiment_id");
  public static final ak<String> k = ak.b(0, "gads:prefetch:experiment_id");
  public static final ak<String> l = ak.a(0, "gads:spam_app_context:experiment_id");
  public static final ak<Boolean> m = ak.a(0, "gads:spam_app_context:enabled", Boolean.valueOf(false));
  public static final ak<String> n = ak.a(0, "gads:video_stream_cache:experiment_id");
  public static final ak<Integer> o = ak.a(0, "gads:video_stream_cache:limit_count", 5);
  public static final ak<Integer> p = ak.a(0, "gads:video_stream_cache:limit_space", 8388608);
  public static final ak<Integer> q = ak.a(0, "gads:video_stream_exo_cache:buffer_size", 8388608);
  public static final ak<Long> r = ak.a(0, "gads:video_stream_cache:limit_time_sec", 300L);
  public static final ak<Long> s = ak.a(0, "gads:video_stream_cache:notify_interval_millis", 1000L);
  public static final ak<Integer> t = ak.a(0, "gads:video_stream_cache:connect_timeout_millis", 10000);
  public static final ak<Boolean> u = ak.a(0, "gads:video:metric_reporting_enabled", Boolean.valueOf(false));
  public static final ak<String> v = ak.a(0, "gads:video:metric_frame_hash_times", "");
  public static final ak<Long> w = ak.a(0, "gads:video:metric_frame_hash_time_leniency", 500L);
  public static final ak<String> x = ak.b(0, "gads:spam_ad_id_decorator:experiment_id");
  public static final ak<Boolean> y = ak.a(0, "gads:spam_ad_id_decorator:enabled", Boolean.valueOf(false));
  public static final ak<String> z = ak.b(0, "gads:looper_for_gms_client:experiment_id");
  
  static
  {
    A = ak.a(0, "gads:looper_for_gms_client:enabled", Boolean.valueOf(true));
    B = ak.a(0, "gads:sw_ad_request_service:enabled", Boolean.valueOf(true));
    C = ak.a(0, "gads:sw_dynamite:enabled", Boolean.valueOf(true));
    D = ak.a(0, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
    E = ak.a(0, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
    F = ak.a(0, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
    G = ak.a(0, "gads:enabled_sdk_csi", Boolean.valueOf(false));
    H = ak.a(0, "gads:sdk_csi_server", "https://csi.gstatic.com/csi");
    I = ak.a(0, "gads:sdk_csi_write_to_file", Boolean.valueOf(false));
    J = ak.a(0, "gads:enable_content_fetching", Boolean.valueOf(true));
    K = ak.a(0, "gads:content_length_weight", 1);
    L = ak.a(0, "gads:content_age_weight", 1);
    M = ak.a(0, "gads:min_content_len", 11);
    N = ak.a(0, "gads:fingerprint_number", 10);
    O = ak.a(0, "gads:sleep_sec", 10);
    P = ak.a(0, "gad:app_index_enabled", Boolean.valueOf(true));
    Q = ak.a(0, "gads:app_index:without_content_info_present:enabled", Boolean.valueOf(true));
    R = ak.a(0, "gads:app_index:timeout_ms", 1000L);
    S = ak.a(0, "gads:app_index:experiment_id");
    T = ak.a(0, "gads:kitkat_interstitial_workaround:experiment_id");
    U = ak.a(0, "gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
    V = ak.a(0, "gads:interstitial_follow_url", Boolean.valueOf(true));
    W = ak.a(0, "gads:interstitial_follow_url:register_click", Boolean.valueOf(true));
    X = ak.a(0, "gads:interstitial_follow_url:experiment_id");
    Y = ak.a(0, "gads:analytics_enabled", Boolean.valueOf(true));
    Z = ak.a(0, "gads:ad_key_enabled", Boolean.valueOf(false));
    aa = ak.a(0, "gads:webview_cache_version", 0);
    ab = ak.b(0, "gads:pan:experiment_id");
    ac = ak.a(0, "gads:native:engine_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
    ad = ak.a(0, "gads:ad_manager_creator:enabled", Boolean.valueOf(true));
    ae = ak.a(1, "gads:interstitial_ad_pool:enabled", Boolean.valueOf(false));
    af = ak.a(1, "gads:interstitial_ad_pool:schema", "customTargeting");
    ag = ak.a(1, "gads:interstitial_ad_pool:max_pools", 3);
    ah = ak.a(1, "gads:interstitial_ad_pool:max_pool_depth", 2);
    ai = ak.a(1, "gads:interstitial_ad_pool:time_limit_sec", 1200);
    aj = ak.a(1, "gads:interstitial_ad_pool:experiment_id");
    ak = ak.a(0, "gads:log:verbose_enabled", Boolean.valueOf(false));
    al = ak.a(0, "gads:device_info_caching:enabled", Boolean.valueOf(true));
    am = ak.a(0, "gads:device_info_caching_expiry_ms:expiry", 300000L);
    an = ak.a(0, "gads:gen204_signals:enabled", Boolean.valueOf(false));
    ao = ak.a(0, "gads:webview:error_reporting_enabled", Boolean.valueOf(false));
    ap = ak.a(0, "gads:adid_reporting:enabled", Boolean.valueOf(false));
    aq = ak.a(0, "gads:ad_settings_page_reporting:enabled", Boolean.valueOf(false));
    ar = ak.a(0, "gads:adid_info_gmscore_upgrade_reporting:enabled", Boolean.valueOf(false));
    as = ak.a(0, "gads:request_pkg:enabled", Boolean.valueOf(true));
    at = ak.a(0, "gads:gmsg:disable_back_button:enabled", Boolean.valueOf(false));
    au = ak.a(0, "gads:network:cache_prediction_duration_s", 300L);
    av = ak.a(0, "gads:mediation:dynamite_first:admobadapter", Boolean.valueOf(true));
    aw = ak.a(0, "gads:mediation:dynamite_first:adurladapter", Boolean.valueOf(true));
    ax = ak.a(0, "gads:ad_loader:timeout_ms", 60000L);
    ay = ak.a(0, "gads:rendering:timeout_ms", 60000L);
    az = ak.a(0, "gads:adshield:enable_adshield_instrumentation", Boolean.valueOf(false));
  }
  
  public static List<String> a()
  {
    return s.m().a();
  }
  
  public static void a(Context paramContext)
  {
    hn.a(new Callable()
    {
      public Void a()
      {
        s.n().a(a);
        return null;
      }
    });
  }
  
  public static List<String> b()
  {
    return s.m().b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */