package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.CachedSearch;
import com.yelp.android.serializable.PrivacyPolicy;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.UpdatePrompt;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.j;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  extends d
{
  private String b;
  private boolean c;
  private ApiPreferences d;
  private long e = -1L;
  private boolean f = false;
  
  protected c(Context paramContext, ApiPreferences paramApiPreferences)
  {
    super(paramContext);
    al();
    c = false;
    d = paramApiPreferences;
  }
  
  private static String a(b paramb)
  {
    return "should_show_whats_new_prompt" + paramb.a() + "." + paramb.b();
  }
  
  private SharedPreferences ak()
  {
    return f("StoreNotificationsPrefs");
  }
  
  private void al()
  {
    if (a().getInt("preferences_version", 0) != 1)
    {
      SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
      String str = localSharedPreferences.getString("partnerXref", "");
      if (!TextUtils.isEmpty(str))
      {
        localSharedPreferences.edit().remove("partnerXref").commit();
        ah().putString("partnerXref", str).commit();
      }
      b().putInt("preferences_version", 1).commit();
    }
  }
  
  private SharedPreferences f(String paramString)
  {
    return a.getSharedPreferences(paramString, 4);
  }
  
  private int g(String paramString)
  {
    return a("StoreManageSettings", paramString);
  }
  
  public boolean A()
  {
    if (a().getBoolean("elite_prompt_shown", true))
    {
      b().putBoolean("elite_prompt_shown", false).commit();
      return true;
    }
    return false;
  }
  
  public boolean B()
  {
    if (a().getBoolean("photo_prompt_shown", true))
    {
      b().putBoolean("photo_prompt_shown", false).commit();
      return true;
    }
    return false;
  }
  
  public boolean C()
  {
    boolean bool2 = false;
    int i = a().getInt("update_prompt_app_launches_between_update_prompts", 0);
    boolean bool1 = bool2;
    if (Features.update_prompt.isEnabled(AppData.b()))
    {
      bool1 = bool2;
      if (i != 0)
      {
        bool1 = bool2;
        if (i() % i == 0)
        {
          bool1 = bool2;
          if (!f) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public UpdatePrompt D()
  {
    UpdatePrompt localUpdatePrompt = new UpdatePrompt();
    localUpdatePrompt.a(a().getString("update_prompt_message", null));
    localUpdatePrompt.a(a().getInt("update_prompt_app_launches_between_update_prompts", 0));
    f = true;
    return localUpdatePrompt;
  }
  
  public boolean E()
  {
    Object localObject = AppData.b().q();
    if (!((co)localObject).b()) {}
    boolean bool1;
    boolean bool2;
    do
    {
      return false;
      localObject = ((co)localObject).a();
      bool1 = a().getBoolean("privacy_policy_splash_accepted" + (String)localObject, false);
      bool2 = a().getBoolean("show_privacy_policy_for_user" + (String)localObject, false);
    } while ((bool1) || (!bool2) || (G() == null));
    return true;
  }
  
  public void F()
  {
    String str = AppData.b().q().a();
    b().putBoolean("privacy_policy_splash_accepted" + str, true).commit();
  }
  
  public PrivacyPolicy G()
  {
    String str = a().getString("share_profile_story", null);
    if (str == null) {
      return null;
    }
    PrivacyPolicy localPrivacyPolicy = new PrivacyPolicy();
    localPrivacyPolicy.a(str);
    localPrivacyPolicy.b(a().getString("share_profile_source", null));
    localPrivacyPolicy.c(a().getString("share_profile_time", null));
    localPrivacyPolicy.d(a().getString("share_demo_story", null));
    localPrivacyPolicy.e(a().getString("share_demo_source", null));
    localPrivacyPolicy.f(a().getString("share_demo_time", null));
    localPrivacyPolicy.g(a().getString("share_basic_story", null));
    localPrivacyPolicy.h(a().getString("share_basic_source", null));
    localPrivacyPolicy.i(a().getString("share_basic_time", null));
    return localPrivacyPolicy;
  }
  
  public void H()
  {
    b().putBoolean("cant_buy_reviews_dismissed", true).commit();
  }
  
  public boolean I()
  {
    return a().getBoolean("cant_buy_reviews_dismissed", false);
  }
  
  public void J()
  {
    g("biz_page_views");
  }
  
  public int K()
  {
    return a().getInt("biz_page_views", 0);
  }
  
  public long L()
  {
    long l2 = a().getLong("cant_buy_reviews_first_launch_time", 0L);
    long l1 = l2;
    if (l2 == 0L)
    {
      l1 = System.currentTimeMillis();
      b().putLong("cant_buy_reviews_first_launch_time", l1).commit();
    }
    return l1;
  }
  
  public long M()
  {
    if (e == -1L) {
      e = a().getLong("last_launch_time", System.currentTimeMillis());
    }
    return e;
  }
  
  public boolean N()
  {
    return a().getBoolean("appwidget_is_enabled", false);
  }
  
  public int O()
  {
    return ak().getInt("messages_count", 0);
  }
  
  public int P()
  {
    return ak().getInt("alerts_count", 0);
  }
  
  public ReservationFilter Q()
  {
    Object localObject = a().getString("saved_reservation_info", null);
    if (localObject != null) {
      try
      {
        localObject = (ReservationFilter)ReservationFilter.CREATOR.parse(new JSONObject((String)localObject));
        return (ReservationFilter)localObject;
      }
      catch (JSONException localJSONException)
      {
        return null;
      }
    }
    return null;
  }
  
  public long R()
  {
    return a().getLong("cached_search_cache_time", -1L);
  }
  
  public int S()
  {
    return a().getInt("cached_search_scroll_position_index", 0);
  }
  
  public int T()
  {
    return a().getInt("cached_search_scroll_position_top", 0);
  }
  
  public CachedSearch U()
  {
    long l1 = System.currentTimeMillis() / 1000L;
    long l2 = R();
    if ((l2 >= 0L) && (l1 - l2 > 86400L)) {}
    for (int i = 1; i != 0; i = 0)
    {
      V();
      return null;
    }
    Object localObject1 = a().getString("cached_search_json", "");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {}
    for (;;)
    {
      try
      {
        localObject1 = (CachedSearch)CachedSearch.CREATOR.parse(new JSONObject((String)localObject1));
        return (CachedSearch)localObject1;
      }
      catch (JSONException localJSONException)
      {
        YelpLog.e("ApplicationSettings", "Could not deserialize CachedSearch. Exception: " + localJSONException.toString());
      }
      Object localObject2 = null;
    }
  }
  
  public void V()
  {
    b().remove("cached_search_offset").remove("cached_search_cache_descriptor").remove("cached_search_cache_time").remove("cached_search_search_term").remove("cached_search_category_term").remove("cached_search_nearby_term").remove("cached_search_scroll_position_index").remove("cached_search_scroll_position_top").remove("cached_search_json").apply();
  }
  
  public boolean W()
  {
    if (!a().getBoolean("first_translation_prompt_shown", false))
    {
      b().putBoolean("first_translation_prompt_shown", true).commit();
      return true;
    }
    return false;
  }
  
  public Locale X()
  {
    return (Locale)com.yelp.android.util.d.a(Locale.class, a().getString("locale_for_gcm_id", null));
  }
  
  public void Y()
  {
    f = false;
  }
  
  public String Z()
  {
    if (!c)
    {
      b = ai().getString("preinstalled_cohort", null);
      c = true;
    }
    return b;
  }
  
  SharedPreferences a()
  {
    return f("StoreManageSettings");
  }
  
  public void a(int paramInt)
  {
    a().edit().putInt("days_until_rate_prompt", paramInt).commit();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b().putInt("cached_search_scroll_position_index", paramInt1).putInt("cached_search_scroll_position_top", paramInt2).apply();
  }
  
  public void a(long paramLong)
  {
    e = paramLong;
    b().putLong("last_launch_time", paramLong).apply();
  }
  
  public void a(b paramb, boolean paramBoolean)
  {
    b().putBoolean(a(paramb), paramBoolean).apply();
  }
  
  public void a(CachedSearch paramCachedSearch, long paramLong)
  {
    Object localObject = null;
    try
    {
      paramCachedSearch = paramCachedSearch.a().toString();
      b().putString("cached_search_json", paramCachedSearch).putLong("cached_search_cache_time", paramLong).apply();
      return;
    }
    catch (JSONException paramCachedSearch)
    {
      for (;;)
      {
        YelpLog.e("ApplicationSettings", "Could not serialize CachedSearch. Exception: " + paramCachedSearch.toString());
        paramCachedSearch = (CachedSearch)localObject;
      }
    }
  }
  
  public void a(PrivacyPolicy paramPrivacyPolicy)
  {
    b().putString("share_profile_story", paramPrivacyPolicy.i()).putString("share_profile_source", paramPrivacyPolicy.h()).putString("share_profile_time", paramPrivacyPolicy.g()).putString("share_demo_story", paramPrivacyPolicy.f()).putString("share_demo_source", paramPrivacyPolicy.e()).putString("share_demo_time", paramPrivacyPolicy.d()).putString("share_basic_story", paramPrivacyPolicy.c()).putString("share_basic_source", paramPrivacyPolicy.b()).putString("share_basic_time", paramPrivacyPolicy.a()).commit();
  }
  
  public void a(ReservationFilter paramReservationFilter)
  {
    try
    {
      paramReservationFilter = paramReservationFilter.a().toString();
      b().putString("saved_reservation_info", paramReservationFilter).apply();
      return;
    }
    catch (JSONException paramReservationFilter)
    {
      YelpLog.e("ApplicationSettings", "Could not serialize reservationfilter");
    }
  }
  
  public void a(UpdatePrompt paramUpdatePrompt)
  {
    b().putString("update_prompt_message", paramUpdatePrompt.b()).putInt("update_prompt_app_launches_between_update_prompts", paramUpdatePrompt.a()).commit();
  }
  
  /* Error */
  public void a(j paramj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 124	com/yelp/android/appdata/c:b	()Landroid/content/SharedPreferences$Editor;
    //   6: astore_2
    //   7: aload_1
    //   8: ifnull +164 -> 172
    //   11: aload_2
    //   12: ldc_w 422
    //   15: iconst_1
    //   16: invokeinterface 152 3 0
    //   21: pop
    //   22: aload_2
    //   23: ldc_w 424
    //   26: aload_1
    //   27: invokevirtual 427	com/yelp/android/serializable/j:a	()Ljava/lang/String;
    //   30: invokeinterface 122 3 0
    //   35: pop
    //   36: aload_2
    //   37: ldc_w 429
    //   40: aload_1
    //   41: invokevirtual 430	com/yelp/android/serializable/j:b	()Ljava/lang/String;
    //   44: invokeinterface 122 3 0
    //   49: pop
    //   50: aload_2
    //   51: ldc_w 432
    //   54: aload_1
    //   55: invokevirtual 433	com/yelp/android/serializable/j:c	()Ljava/lang/String;
    //   58: invokeinterface 122 3 0
    //   63: pop
    //   64: aload_2
    //   65: ldc_w 435
    //   68: aload_1
    //   69: invokevirtual 436	com/yelp/android/serializable/j:d	()Ljava/lang/String;
    //   72: invokeinterface 122 3 0
    //   77: pop
    //   78: aload_2
    //   79: ldc_w 438
    //   82: aload_1
    //   83: invokevirtual 439	com/yelp/android/serializable/j:e	()Ljava/lang/String;
    //   86: invokeinterface 122 3 0
    //   91: pop
    //   92: aload_2
    //   93: ldc_w 441
    //   96: aload_1
    //   97: invokevirtual 442	com/yelp/android/serializable/j:h	()Ljava/lang/String;
    //   100: invokeinterface 122 3 0
    //   105: pop
    //   106: aload_2
    //   107: ldc_w 444
    //   110: aload_1
    //   111: invokevirtual 446	com/yelp/android/serializable/j:f	()Z
    //   114: invokeinterface 152 3 0
    //   119: pop
    //   120: aload_2
    //   121: ldc_w 448
    //   124: aload_1
    //   125: invokevirtual 450	com/yelp/android/serializable/j:i	()Z
    //   128: invokeinterface 152 3 0
    //   133: pop
    //   134: aload_2
    //   135: ldc_w 452
    //   138: aload_1
    //   139: invokevirtual 455	com/yelp/android/serializable/j:j	()Z
    //   142: invokeinterface 152 3 0
    //   147: pop
    //   148: aload_2
    //   149: ldc_w 457
    //   152: aload_1
    //   153: invokevirtual 460	com/yelp/android/serializable/j:l	()I
    //   156: invokeinterface 128 3 0
    //   161: pop
    //   162: aload_2
    //   163: invokeinterface 115 1 0
    //   168: pop
    //   169: aload_0
    //   170: monitorexit
    //   171: return
    //   172: aload_2
    //   173: ldc_w 422
    //   176: iconst_0
    //   177: invokeinterface 152 3 0
    //   182: pop
    //   183: aload_2
    //   184: ldc_w 424
    //   187: invokeinterface 111 2 0
    //   192: pop
    //   193: aload_2
    //   194: ldc_w 429
    //   197: invokeinterface 111 2 0
    //   202: pop
    //   203: aload_2
    //   204: ldc_w 432
    //   207: invokeinterface 111 2 0
    //   212: pop
    //   213: aload_2
    //   214: ldc_w 435
    //   217: invokeinterface 111 2 0
    //   222: pop
    //   223: aload_2
    //   224: ldc_w 438
    //   227: invokeinterface 111 2 0
    //   232: pop
    //   233: aload_2
    //   234: ldc_w 462
    //   237: invokeinterface 111 2 0
    //   242: pop
    //   243: aload_2
    //   244: ldc_w 441
    //   247: invokeinterface 111 2 0
    //   252: pop
    //   253: aload_2
    //   254: ldc_w 444
    //   257: invokeinterface 111 2 0
    //   262: pop
    //   263: aload_2
    //   264: ldc_w 448
    //   267: invokeinterface 111 2 0
    //   272: pop
    //   273: aload_2
    //   274: ldc_w 457
    //   277: invokeinterface 111 2 0
    //   282: pop
    //   283: goto -121 -> 162
    //   286: astore_1
    //   287: aload_0
    //   288: monitorexit
    //   289: aload_1
    //   290: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	c
    //   0	291	1	paramj	j
    //   6	268	2	localEditor	SharedPreferences.Editor
    // Exception table:
    //   from	to	target	type
    //   2	7	286	finally
    //   11	162	286	finally
    //   162	169	286	finally
    //   172	283	286	finally
  }
  
  public void a(String paramString)
  {
    b().putString("gcm_registration_id", paramString).apply();
    b().putString("app_version_for_gcm_id", AppData.c(AppData.b())).apply();
    b().putInt("os_version_for_gcm_id", Build.VERSION.SDK_INT).apply();
  }
  
  public void a(List<RichSearchSuggestion> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      RichSearchSuggestion localRichSearchSuggestion = (RichSearchSuggestion)paramList.next();
      try
      {
        localJSONArray.put(localRichSearchSuggestion.e());
      }
      catch (JSONException localJSONException)
      {
        YelpLog.remoteError("ApplicationSettings", "Could not serialize RichSearchSuggestions. Exception: " + localJSONException.toString());
      }
    }
    b().putString("rich_search_suggestion_cache_for_nearby_header", localJSONArray.toString()).putLong("rich_search_suggestion_cache_for_nearby_header_time", Calendar.getInstance().getTimeInMillis()).commit();
  }
  
  public void a(Locale paramLocale)
  {
    b().putString("locale_for_gcm_id", com.yelp.android.util.d.a(paramLocale)).apply();
  }
  
  public void a(boolean paramBoolean)
  {
    b().putBoolean("gcm_id_registered_with_yelp", paramBoolean).apply();
  }
  
  public int aa()
  {
    return a().getInt("media_selected", 1);
  }
  
  public int ab()
  {
    return a().getInt("current_elite_year", 0);
  }
  
  public boolean ac()
  {
    return a().getBoolean("should_update_app_start_count", false);
  }
  
  public boolean ad()
  {
    return a().getBoolean("is_onboarding_flow_complete", false);
  }
  
  public String ae()
  {
    return a().getString("dfp_account", null);
  }
  
  public ArrayList<RichSearchSuggestion> af()
  {
    localArrayList = new ArrayList();
    long l = a().getLong("rich_search_suggestion_cache_for_nearby_header_time", -1L);
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).add(2, 1);
    if ((l == -1L) || (((Calendar)localObject).getTime().before(new Date(l)))) {
      ag();
    }
    for (;;)
    {
      return localArrayList;
      localObject = a().getString("rich_search_suggestion_cache_for_nearby_header", "");
      if (StringUtils.d((String)localObject)) {
        continue;
      }
      try
      {
        localObject = new JSONArray((String)localObject);
        int i = 0;
        while (i < ((JSONArray)localObject).length())
        {
          localArrayList.add(RichSearchSuggestion.CREATOR.parse(((JSONArray)localObject).getJSONObject(i)));
          i += 1;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException)
      {
        YelpLog.remoteError("ApplicationSettings", "Could not serialize RichSearchSuggestions. Exception: " + localJSONException.toString());
      }
    }
  }
  
  public void ag()
  {
    b().remove("rich_search_suggestion_cache_for_nearby_header").remove("rich_search_suggestion_cache_for_nearby_header_time").commit();
  }
  
  public long b(long paramLong)
  {
    return a().getLong("background_location_watchdog_timeout", paramLong);
  }
  
  SharedPreferences.Editor b()
  {
    return a().edit();
  }
  
  public void b(int paramInt)
  {
    try
    {
      SharedPreferences.Editor localEditor = b();
      localEditor.putInt("bookmark_sort_method", paramInt);
      localEditor.commit();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(String paramString)
  {
    b().putString("last_app_version_name", paramString).apply();
  }
  
  public void b(boolean paramBoolean)
  {
    a().edit().putBoolean("rate_app_dialog_dismissed", paramBoolean).commit();
  }
  
  public String c()
  {
    return a().getString("gcm_registration_id", null);
  }
  
  public void c(int paramInt)
  {
    ak().edit().putInt("messages_count", paramInt).apply();
  }
  
  public void c(long paramLong)
  {
    b().putLong("background_location_watchdog_timeout", paramLong).commit();
  }
  
  public void c(String paramString)
  {
    try
    {
      SharedPreferences.Editor localEditor = b();
      localEditor.putString("login_emailaddress", paramString);
      localEditor.commit();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    b().putBoolean("updated_privacy_policy_when_installed_app", paramBoolean).commit();
  }
  
  public String d()
  {
    return a().getString("app_version_for_gcm_id", null);
  }
  
  public void d(int paramInt)
  {
    ak().edit().putInt("alerts_count", paramInt).apply();
  }
  
  public void d(String paramString)
  {
    b().putString("dfp_account", paramString).apply();
  }
  
  public void d(boolean paramBoolean)
  {
    b().putBoolean("login_screen_was_displayed", paramBoolean).commit();
  }
  
  public int e()
  {
    return a().getInt("os_version_for_gcm_id", 0);
  }
  
  public void e(int paramInt)
  {
    b().putInt("media_selected", paramInt).apply();
  }
  
  public void e(boolean paramBoolean)
  {
    a().edit().putBoolean("share_achievements_facebook", paramBoolean).commit();
  }
  
  public void f(int paramInt)
  {
    b().putInt("current_elite_year", paramInt).apply();
  }
  
  public void f(boolean paramBoolean)
  {
    a().edit().putBoolean("share_achievements_twitter", paramBoolean).commit();
  }
  
  public boolean f()
  {
    return a().getBoolean("gcm_id_registered_with_yelp", false);
  }
  
  public String g()
  {
    return a().getString("last_app_version_name", null);
  }
  
  public void g(boolean paramBoolean)
  {
    b().putBoolean("privacy_policy_dialog_displayed", paramBoolean).commit();
  }
  
  public void h(boolean paramBoolean)
  {
    Object localObject = AppData.b().q();
    if (((co)localObject).b())
    {
      localObject = ((co)localObject).a();
      b().putBoolean("show_privacy_policy_for_user" + (String)localObject, paramBoolean).commit();
    }
  }
  
  public boolean h()
  {
    b localb = new b(AppData.c(AppData.b()));
    return a().getBoolean(a(localb), false);
  }
  
  public int i()
  {
    return a().getInt("start_count", 1);
  }
  
  public void i(boolean paramBoolean)
  {
    b().putBoolean("appwidget_is_enabled", paramBoolean).apply();
  }
  
  public Date j()
  {
    long l = a().getLong("millis_installed", 0L);
    if (l == 0L)
    {
      Date localDate = new Date();
      a().edit().putLong("millis_installed", localDate.getTime()).commit();
      return localDate;
    }
    return new Date(l);
  }
  
  public void j(boolean paramBoolean)
  {
    b().putBoolean("should_update_app_start_count", paramBoolean).commit();
  }
  
  public int k()
  {
    return a().getInt("days_until_rate_prompt", 8);
  }
  
  public void k(boolean paramBoolean)
  {
    b().putBoolean("is_onboarding_flow_complete", paramBoolean).commit();
  }
  
  public boolean l()
  {
    return a().getBoolean("rate_app_dialog_dismissed", false);
  }
  
  public boolean m()
  {
    return a().getBoolean("updated_privacy_policy_when_installed_app", false);
  }
  
  public boolean n()
  {
    return a().getBoolean("login_screen_was_displayed", false);
  }
  
  public boolean o()
  {
    return a().getBoolean("background_location_opt_in_was_displayed_v2", false);
  }
  
  public void p()
  {
    a().edit().putBoolean("background_location_opt_in_was_displayed_v2", true).commit();
  }
  
  public boolean q()
  {
    boolean bool = true;
    Boolean localBoolean;
    if (AppData.b().q().p() == null) {
      localBoolean = Boolean.valueOf(false);
    }
    while (a().contains("share_achievements_facebook")) {
      if ((a().getBoolean("share_achievements_facebook", false)) && (localBoolean.booleanValue()))
      {
        return true;
        localBoolean = Boolean.valueOf(AppData.b().q().p().o());
      }
      else
      {
        return false;
      }
    }
    if ((d.a(ApiPreferences.DeviceAwarePreference.SHARE_AWARDS)) && (localBoolean.booleanValue())) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public boolean r()
  {
    boolean bool = true;
    Boolean localBoolean;
    if (AppData.b().q().p() == null) {
      localBoolean = Boolean.valueOf(false);
    }
    while (a().contains("share_achievements_twitter")) {
      if ((a().getBoolean("share_achievements_twitter", false)) && (localBoolean.booleanValue()))
      {
        return true;
        localBoolean = Boolean.valueOf(AppData.b().q().p().p());
      }
      else
      {
        return false;
      }
    }
    if ((d.a(ApiPreferences.DeviceAwarePreference.SHARE_AWARDS)) && (localBoolean.booleanValue())) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public int s()
  {
    co localco = AppData.b().q();
    if ((localco.b()) && (localco.d())) {
      g("logged_in_start_count");
    }
    return g("start_count");
  }
  
  public int t()
  {
    return a().getInt("logged_in_start_count", 0);
  }
  
  public int u()
  {
    try
    {
      int i = a().getInt("bookmark_sort_method", ListBookmarksRequest.SortType.DISTANCE.ordinal());
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String v()
  {
    try
    {
      String str = a().getString("login_emailaddress", "");
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public j w()
  {
    j localj = null;
    try
    {
      SharedPreferences localSharedPreferences = a();
      if (localSharedPreferences.getBoolean("login_valid", false)) {
        localj = new j(localSharedPreferences.getString("login_first_name", ""), localSharedPreferences.getString("login_last_name", ""), localSharedPreferences.getString("login_name", ""), localSharedPreferences.getString("login_name_without_period", ""), localSharedPreferences.getString("login_user_id", ""), localSharedPreferences.getBoolean("login_confirmed", false), localSharedPreferences.getBoolean("login_elite", false), null, localSharedPreferences.getString("login_location", ""), null, localSharedPreferences.getBoolean("login_ismale", true), localSharedPreferences.getInt("login_version", 0));
      }
      return localj;
    }
    finally {}
  }
  
  public int x()
  {
    return a().getInt("update_privacy_policy_request_count", 0);
  }
  
  public void y()
  {
    int i = x();
    b().putInt("update_privacy_policy_request_count", i + 1).commit();
  }
  
  public boolean z()
  {
    return a().getBoolean("privacy_policy_dialog_displayed", false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */