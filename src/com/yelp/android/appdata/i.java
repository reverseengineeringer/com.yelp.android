package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.PrivacyPolicy;
import com.yelp.android.serializable.UpdatePrompt;
import com.yelp.android.serializable.eq;
import java.util.Date;

public class i
  extends j
{
  private long c = -1L;
  private boolean d = false;
  
  protected i(Context paramContext)
  {
    super(paramContext);
    ae();
  }
  
  private SharedPreferences ac()
  {
    return d("StoreFBManageSettings");
  }
  
  private SharedPreferences ad()
  {
    return d("StoreNotificationsPrefs");
  }
  
  private void ae()
  {
    if (a().getInt("preferences_version", 0) != 1)
    {
      SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(b);
      String str = localSharedPreferences.getString("partnerXref", "");
      if (!TextUtils.isEmpty(str))
      {
        localSharedPreferences.edit().remove("partnerXref").commit();
        Z().putString("partnerXref", str).commit();
      }
      b().putInt("preferences_version", 1).commit();
    }
  }
  
  private SharedPreferences d(String paramString)
  {
    return b.getSharedPreferences(paramString, 4);
  }
  
  private int e(String paramString)
  {
    return a("StoreManageSettings", paramString);
  }
  
  public boolean A()
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
        if (g() % i == 0)
        {
          bool1 = bool2;
          if (!d) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public UpdatePrompt B()
  {
    UpdatePrompt localUpdatePrompt = new UpdatePrompt();
    localUpdatePrompt.setMessage(a().getString("update_prompt_message", null));
    localUpdatePrompt.setAppLaunchesBetweenUpdatePrompts(a().getInt("update_prompt_app_launches_between_update_prompts", 0));
    d = true;
    return localUpdatePrompt;
  }
  
  public boolean C()
  {
    Object localObject = AppData.b().m();
    if (!((dc)localObject).c()) {}
    boolean bool1;
    boolean bool2;
    do
    {
      return false;
      localObject = ((dc)localObject).b();
      bool1 = a().getBoolean("privacy_policy_splash_accepted" + (String)localObject, false);
      bool2 = a().getBoolean("show_privacy_policy_for_user" + (String)localObject, false);
    } while ((bool1) || (!bool2) || (E() == null));
    return true;
  }
  
  public void D()
  {
    String str = AppData.b().m().b();
    b().putBoolean("privacy_policy_splash_accepted" + str, true).commit();
  }
  
  public PrivacyPolicy E()
  {
    String str = a().getString("share_profile_story", null);
    if (str == null) {
      return null;
    }
    PrivacyPolicy localPrivacyPolicy = new PrivacyPolicy();
    localPrivacyPolicy.setShareProfileStory(str);
    localPrivacyPolicy.setShareProfileSource(a().getString("share_profile_source", null));
    localPrivacyPolicy.setShareProfileTime(a().getString("share_profile_time", null));
    localPrivacyPolicy.setShareDemographicsStory(a().getString("share_demo_story", null));
    localPrivacyPolicy.setShareDemographicsSource(a().getString("share_demo_source", null));
    localPrivacyPolicy.setShareDemographicsTime(a().getString("share_demo_time", null));
    localPrivacyPolicy.setShareBasicInfoStory(a().getString("share_basic_story", null));
    localPrivacyPolicy.setShareBasicInfoSource(a().getString("share_basic_source", null));
    localPrivacyPolicy.setShareBasicInfoTime(a().getString("share_basic_time", null));
    return localPrivacyPolicy;
  }
  
  public void F()
  {
    b().putBoolean("cant_buy_reviews_dismissed", true).commit();
  }
  
  public boolean G()
  {
    return a().getBoolean("cant_buy_reviews_dismissed", false);
  }
  
  public void H()
  {
    e("biz_page_views");
  }
  
  public int I()
  {
    return a().getInt("biz_page_views", 0);
  }
  
  public long J()
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
  
  public long K()
  {
    if (c == -1L) {
      c = a().getLong("last_launch_time", System.currentTimeMillis());
    }
    return c;
  }
  
  public int L()
  {
    return ad().getInt("messages_count", 0);
  }
  
  public int M()
  {
    return ad().getInt("alerts_count", 0);
  }
  
  public long N()
  {
    return a().getLong("cached_search_filter_id", -1L);
  }
  
  public int O()
  {
    return a().getInt("cached_search_offset", 0);
  }
  
  public String P()
  {
    return a().getString("cached_search_cache_descriptor", null);
  }
  
  public long Q()
  {
    return a().getLong("cached_search_cache_time", -1L);
  }
  
  public String R()
  {
    return a().getString("cached_search_search_term", null);
  }
  
  public String S()
  {
    return a().getString("cached_search_category_term", null);
  }
  
  public String T()
  {
    return a().getString("cached_search_nearby_term", null);
  }
  
  public int U()
  {
    return a().getInt("cached_search_scroll_position_index", 0);
  }
  
  public int V()
  {
    return a().getInt("cached_search_scroll_position_top", 0);
  }
  
  public void W()
  {
    b().remove("cached_search_filter_id").remove("cached_search_filter_id").remove("cached_search_offset").remove("cached_search_cache_descriptor").remove("cached_search_cache_time").remove("cached_search_search_term").remove("cached_search_category_term").remove("cached_search_nearby_term").remove("cached_search_scroll_position_index").remove("cached_search_scroll_position_top").apply();
  }
  
  public boolean X()
  {
    if (!a().getBoolean("first_translation_prompt_shown", false))
    {
      b().putBoolean("first_translation_prompt_shown", true).commit();
      return true;
    }
    return false;
  }
  
  public void Y()
  {
    d = false;
  }
  
  SharedPreferences a()
  {
    return d("StoreManageSettings");
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
    c = paramLong;
    b().putLong("last_launch_time", paramLong).apply();
  }
  
  public void a(long paramLong1, int paramInt, String paramString1, long paramLong2, String paramString2, String paramString3, String paramString4)
  {
    b().putLong("cached_search_filter_id", paramLong1).putInt("cached_search_offset", paramInt).putString("cached_search_cache_descriptor", paramString1).putLong("cached_search_cache_time", paramLong2).putString("cached_search_search_term", paramString2).putString("cached_search_category_term", paramString3).putString("cached_search_nearby_term", paramString4).apply();
  }
  
  public void a(PrivacyPolicy paramPrivacyPolicy)
  {
    b().putString("share_profile_story", paramPrivacyPolicy.getShareProfileStory()).putString("share_profile_source", paramPrivacyPolicy.getShareProfileSource()).putString("share_profile_time", paramPrivacyPolicy.getShareProfileTime()).putString("share_demo_story", paramPrivacyPolicy.getShareDemographicsStory()).putString("share_demo_source", paramPrivacyPolicy.getShareDemographicsSource()).putString("share_demo_time", paramPrivacyPolicy.getShareDemographicsTime()).putString("share_basic_story", paramPrivacyPolicy.getShareBasicInfoStory()).putString("share_basic_source", paramPrivacyPolicy.getShareBasicInfoSource()).putString("share_basic_time", paramPrivacyPolicy.getShareBasicInfoTime()).commit();
  }
  
  public void a(UpdatePrompt paramUpdatePrompt)
  {
    b().putString("update_prompt_message", paramUpdatePrompt.getMessage()).putInt("update_prompt_app_launches_between_update_prompts", paramUpdatePrompt.getAppLaunchesBetweenUpdatePrompts()).commit();
  }
  
  /* Error */
  public void a(eq parameq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 90	com/yelp/android/appdata/i:b	()Landroid/content/SharedPreferences$Editor;
    //   6: astore_2
    //   7: aload_1
    //   8: ifnull +136 -> 144
    //   11: aload_2
    //   12: ldc_w 347
    //   15: iconst_1
    //   16: invokeinterface 184 3 0
    //   21: pop
    //   22: aload_2
    //   23: ldc_w 349
    //   26: aload_1
    //   27: invokevirtual 353	com/yelp/android/serializable/eq:a	()Ljava/lang/String;
    //   30: invokeinterface 88 3 0
    //   35: pop
    //   36: aload_2
    //   37: ldc_w 355
    //   40: aload_1
    //   41: invokevirtual 356	com/yelp/android/serializable/eq:b	()Ljava/lang/String;
    //   44: invokeinterface 88 3 0
    //   49: pop
    //   50: aload_2
    //   51: ldc_w 358
    //   54: aload_1
    //   55: invokevirtual 360	com/yelp/android/serializable/eq:c	()Ljava/lang/String;
    //   58: invokeinterface 88 3 0
    //   63: pop
    //   64: aload_2
    //   65: ldc_w 362
    //   68: aload_1
    //   69: invokevirtual 365	com/yelp/android/serializable/eq:f	()Ljava/lang/String;
    //   72: invokeinterface 88 3 0
    //   77: pop
    //   78: aload_2
    //   79: ldc_w 367
    //   82: aload_1
    //   83: invokevirtual 369	com/yelp/android/serializable/eq:d	()Z
    //   86: invokeinterface 184 3 0
    //   91: pop
    //   92: aload_2
    //   93: ldc_w 371
    //   96: aload_1
    //   97: invokevirtual 373	com/yelp/android/serializable/eq:g	()Z
    //   100: invokeinterface 184 3 0
    //   105: pop
    //   106: aload_2
    //   107: ldc_w 375
    //   110: aload_1
    //   111: invokevirtual 378	com/yelp/android/serializable/eq:h	()Z
    //   114: invokeinterface 184 3 0
    //   119: pop
    //   120: aload_2
    //   121: ldc_w 380
    //   124: aload_1
    //   125: invokevirtual 383	com/yelp/android/serializable/eq:i	()I
    //   128: invokeinterface 94 3 0
    //   133: pop
    //   134: aload_2
    //   135: invokeinterface 82 1 0
    //   140: pop
    //   141: aload_0
    //   142: monitorexit
    //   143: return
    //   144: aload_2
    //   145: ldc_w 347
    //   148: iconst_0
    //   149: invokeinterface 184 3 0
    //   154: pop
    //   155: aload_2
    //   156: ldc_w 349
    //   159: invokeinterface 78 2 0
    //   164: pop
    //   165: aload_2
    //   166: ldc_w 355
    //   169: invokeinterface 78 2 0
    //   174: pop
    //   175: aload_2
    //   176: ldc_w 358
    //   179: invokeinterface 78 2 0
    //   184: pop
    //   185: aload_2
    //   186: ldc_w 385
    //   189: invokeinterface 78 2 0
    //   194: pop
    //   195: aload_2
    //   196: ldc_w 362
    //   199: invokeinterface 78 2 0
    //   204: pop
    //   205: aload_2
    //   206: ldc_w 367
    //   209: invokeinterface 78 2 0
    //   214: pop
    //   215: aload_2
    //   216: ldc_w 371
    //   219: invokeinterface 78 2 0
    //   224: pop
    //   225: aload_2
    //   226: ldc_w 380
    //   229: invokeinterface 78 2 0
    //   234: pop
    //   235: goto -101 -> 134
    //   238: astore_1
    //   239: aload_0
    //   240: monitorexit
    //   241: aload_1
    //   242: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	this	i
    //   0	243	1	parameq	eq
    //   6	220	2	localEditor	SharedPreferences.Editor
    // Exception table:
    //   from	to	target	type
    //   2	7	238	finally
    //   11	134	238	finally
    //   134	141	238	finally
    //   144	235	238	finally
  }
  
  public void a(String paramString)
  {
    b().putString("gcm_registration_id", paramString).apply();
    b().putString("app_version_for_gcm_id", AppData.c(AppData.b())).apply();
    b().putInt("os_version_for_gcm_id", Build.VERSION.SDK_INT).apply();
  }
  
  public void a(boolean paramBoolean)
  {
    b().putBoolean("gcm_id_registered_with_yelp", paramBoolean).apply();
  }
  
  public boolean a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = ac().edit();
    localEditor.putString("access_token", paramString);
    localEditor.putLong("expires_in", paramLong);
    return localEditor.commit();
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
    ad().edit().putInt("messages_count", paramInt).apply();
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
    ad().edit().putInt("alerts_count", paramInt).apply();
  }
  
  public void d(boolean paramBoolean)
  {
    b().putBoolean("login_screen_was_displayed", paramBoolean).commit();
  }
  
  public int e()
  {
    return a().getInt("os_version_for_gcm_id", 0);
  }
  
  public void e(boolean paramBoolean)
  {
    b().putBoolean("privacy_policy_dialog_displayed", paramBoolean).commit();
  }
  
  public void f(boolean paramBoolean)
  {
    Object localObject = AppData.b().m();
    if (((dc)localObject).c())
    {
      localObject = ((dc)localObject).b();
      b().putBoolean("show_privacy_policy_for_user" + (String)localObject, paramBoolean).commit();
    }
  }
  
  public boolean f()
  {
    return a().getBoolean("gcm_id_registered_with_yelp", false);
  }
  
  public int g()
  {
    return a().getInt("start_count", 1);
  }
  
  public Date h()
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
  
  public int i()
  {
    return a().getInt("days_until_rate_prompt", 8);
  }
  
  public boolean j()
  {
    return a().getBoolean("rate_app_dialog_dismissed", false);
  }
  
  public boolean k()
  {
    return a().getBoolean("updated_privacy_policy_when_installed_app", false);
  }
  
  public boolean l()
  {
    return a().getBoolean("login_screen_was_displayed", false);
  }
  
  public int m()
  {
    dc localdc = AppData.b().m();
    if ((localdc.c()) && (localdc.e())) {
      e("logged_in_start_count");
    }
    return e("start_count");
  }
  
  public int n()
  {
    return a().getInt("logged_in_start_count", 0);
  }
  
  public int o()
  {
    return e("checkin_count");
  }
  
  public int p()
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
  
  public String q()
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
  
  public void r()
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.remove("login_password");
    localEditor.commit();
  }
  
  public eq s()
  {
    eq localeq = null;
    try
    {
      SharedPreferences localSharedPreferences = a();
      if (localSharedPreferences.getBoolean("login_valid", false)) {
        localeq = new eq(localSharedPreferences.getString("login_first_name", ""), localSharedPreferences.getString("login_last_name", ""), localSharedPreferences.getString("login_user_id", ""), localSharedPreferences.getBoolean("login_confirmed", false), localSharedPreferences.getBoolean("login_elite", false), null, localSharedPreferences.getString("login_location", ""), null, localSharedPreferences.getBoolean("login_ismale", true), localSharedPreferences.getInt("login_version", 0));
      }
      return localeq;
    }
    finally {}
  }
  
  public Pair<String, Long> t()
  {
    SharedPreferences localSharedPreferences = ac();
    return new Pair(localSharedPreferences.getString("access_token", null), Long.valueOf(localSharedPreferences.getLong("expires_in", 0L)));
  }
  
  public int u()
  {
    return a().getInt("update_privacy_policy_request_count", 0);
  }
  
  public void v()
  {
    int i = u();
    b().putInt("update_privacy_policy_request_count", i + 1).commit();
  }
  
  public boolean w()
  {
    return a().getBoolean("privacy_policy_dialog_displayed", false);
  }
  
  public void x()
  {
    SharedPreferences.Editor localEditor = ac().edit();
    localEditor.clear();
    localEditor.commit();
  }
  
  public boolean y()
  {
    if (a().getBoolean("elite_prompt_shown", true))
    {
      b().putBoolean("elite_prompt_shown", false).commit();
      return true;
    }
    return false;
  }
  
  public boolean z()
  {
    if (a().getBoolean("photo_prompt_shown", true))
    {
      b().putBoolean("photo_prompt_shown", false).commit();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */