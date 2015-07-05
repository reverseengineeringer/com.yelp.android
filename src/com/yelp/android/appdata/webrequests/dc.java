package com.yelp.android.appdata.webrequests;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.adjust.sdk.e;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.ab;
import com.yelp.android.appdata.bc;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.p;
import com.yelp.android.av.g;
import com.yelp.android.debug.Debug;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.ah;
import com.yelp.android.serializable.eq;
import com.yelp.android.services.d;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.w;
import com.yelp.android.util.YelpLog;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

public class dc
  implements bc, p, com.yelp.android.av.i
{
  public static final IntentFilter a = new IntentFilter("com.yelp.android.intent.new_account_config");
  public static final IntentFilter b = new IntentFilter("user_is_fetched");
  public static final IntentFilter c = new IntentFilter("user_failed_to_fetch");
  private String d;
  private eq e;
  private User f;
  private boolean g;
  private boolean h;
  private final com.yelp.android.appdata.i i;
  private final n j;
  private final Collection<di> k = new HashSet();
  private int l;
  private RemoteConfigPreferences m;
  private m<RemoteConfigPreferences> n;
  private ApiRequest o;
  private final m<RemoteConfigPreferences> p = new dd(this);
  private final m<eq> q = new df(this);
  private final m<User> r = new dh(this);
  
  public dc(com.yelp.android.appdata.i parami, n paramn)
  {
    i = parami;
    j = paramn;
    e = parami.s();
    if (TextUtils.isEmpty(l())) {
      parami.a(null);
    }
  }
  
  private void a(String paramString, eq parameq)
  {
    i.b(paramString);
    i.a(parameq);
  }
  
  private void a(String paramString1, String paramString2)
  {
    new dj(paramString1, paramString2, j.c(), q).execute(new Void[0]);
  }
  
  private void a(boolean paramBoolean, YelpException paramYelpException)
  {
    g = false;
    h = true;
    if (paramBoolean)
    {
      e.a("dyael4");
      f();
    }
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((di)localIterator.next()).a(paramBoolean, paramYelpException);
    }
    y();
    k.clear();
  }
  
  protected static boolean a(long paramLong)
  {
    long l1 = 20L;
    if (paramLong == 1L) {
      return true;
    }
    long l2 = 20L;
    for (;;)
    {
      if (l2 > paramLong) {
        break label46;
      }
      if (l2 == paramLong) {
        break;
      }
      l2 += l1;
      l1 += 30L;
    }
    label46:
    return false;
  }
  
  private void y()
  {
    if ((o == null) || (!o.isFetching())) {
      o = new gx(r, null, null).execute(new Void[0]);
    }
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append("Logged In: ");
    if (e != null) {}
    for (boolean bool = true;; bool = false)
    {
      localStringBuilder.append(bool);
      if (e != null)
      {
        localStringBuilder.append("\nLoginName: ");
        localStringBuilder.append(e.a());
        localStringBuilder.append(")");
        localStringBuilder.append("\nConfirmed: ");
        localStringBuilder.append(e.d());
      }
      return localStringBuilder.toString();
    }
  }
  
  public void a(Context paramContext)
  {
    if (c())
    {
      b(paramContext);
      b(null);
      PreferenceManager.getDefaultSharedPreferences(AppData.b()).edit().remove("user_json_string").apply();
    }
    i.a(null);
    i.b("");
    i.x();
    g();
    d = null;
    Notifier.a(paramContext);
    ab.a().h();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if ((paramApiRequest instanceof dk))
    {
      AppData.a(EventIri.UserLogout, "request_id", ((g)paramApiRequest).getRequestId());
      AppData.b().s();
      j.a(KahunaAttributeIri.FirstName, "cleared");
      j.a(KahunaAttributeIri.ReviewDraftBusinessId, "cleared");
    }
  }
  
  public void a(di paramdi)
  {
    if ((g) && (paramdi != null) && (!k.contains(paramdi))) {
      k.add(paramdi);
    }
  }
  
  public void a(m<RemoteConfigPreferences> paramm)
  {
    if (e == null) {
      return;
    }
    n = paramm;
    paramm = new a(p);
    AppData.b().s();
    paramm.execute(new Void[0]);
  }
  
  public void a(eq parameq)
  {
    if (parameq != null)
    {
      e = new eq(parameq);
      return;
    }
    e = null;
  }
  
  public void a(String paramString1, String paramString2, di paramdi)
  {
    if (!g)
    {
      g = true;
      g();
      a(paramString1, paramString2);
    }
    if ((paramdi != null) && (!k.contains(paramdi))) {
      k.add(paramdi);
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, Locale paramLocale, boolean paramBoolean, di paramdi)
  {
    if (g) {
      return;
    }
    if ((paramdi != null) && (!k.contains(paramdi))) {
      k.add(paramdi);
    }
    new c(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8, paramString9, paramBoolean, paramLocale, new dg(this, paramString3)).executeWithLocation(new Void[0]);
    g = true;
  }
  
  public void a(boolean paramBoolean)
  {
    if (e != null) {
      e.a(paramBoolean);
    }
  }
  
  public boolean a(User paramUser)
  {
    return (paramUser != null) && (a(paramUser.getId()));
  }
  
  public boolean a(String paramString)
  {
    return (paramString != null) && (e != null) && (paramString.equals(e.c()));
  }
  
  public String b()
  {
    if (e != null) {
      return e.c();
    }
    return null;
  }
  
  public void b(Context paramContext)
  {
    Object localObject1 = AppData.b();
    paramContext = d.b(paramContext, ((AppData)localObject1).o(), ((AppData)localObject1).h());
    Object localObject2 = d.b();
    localObject1 = new BasicCookieStore();
    localObject2 = ((DefaultHttpClient)localObject2).getCookieStore();
    Iterator localIterator = ((CookieStore)localObject2).getCookies().iterator();
    while (localIterator.hasNext()) {
      ((BasicCookieStore)localObject1).addCookie((Cookie)localIterator.next());
    }
    paramContext.setCookieStore((CookieStore)localObject1);
    new dk(paramContext, this).execute(new Void[0]);
    new de(this).b(new CookieStore[] { localObject2 });
  }
  
  public void b(di paramdi)
  {
    if (paramdi != null) {
      k.remove(paramdi);
    }
  }
  
  public void b(User paramUser)
  {
    f = paramUser;
    AppData.b().sendBroadcast(new Intent("user_is_fetched"));
  }
  
  public boolean c()
  {
    return e != null;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean e()
  {
    if (e != null) {
      return e.d();
    }
    return false;
  }
  
  public void f()
  {
    a(null);
  }
  
  public void g()
  {
    k.clear();
    m = null;
    a(null);
    d.b().getCookieStore().clear();
    AppData.b().q();
  }
  
  public RemoteConfigPreferences h()
  {
    return m;
  }
  
  public RemoteConfigPreferences.NotificationSchedule i()
  {
    if (m != null) {
      return m.a();
    }
    return RemoteConfigPreferences.NotificationSchedule.DEFAULT_SCHEDULE;
  }
  
  public boolean j()
  {
    return g;
  }
  
  public boolean k()
  {
    User localUser = AppData.b().m().s();
    if (localUser != null) {
      return localUser.isEliteUser();
    }
    return false;
  }
  
  public String l()
  {
    Object localObject = AppData.b().o().f();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      return (String)localObject;
    }
    if (e != null)
    {
      localObject = d.b().getCookieStore().getCookies().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Cookie localCookie = (Cookie)((Iterator)localObject).next();
        if (TextUtils.equals("api_s", localCookie.getName())) {
          return localCookie.getValue();
        }
      }
    }
    return "";
  }
  
  public String m()
  {
    if (e != null)
    {
      String str2 = e.e();
      String str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = i.q();
      }
      return str1;
    }
    return "";
  }
  
  public boolean n()
  {
    if (e != null) {
      return e.g();
    }
    return true;
  }
  
  public boolean o()
  {
    return (a(AppData.b().f().g())) && (!c());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
  
  public String p()
  {
    if (e != null) {
      return e.f();
    }
    return null;
  }
  
  public String q()
  {
    if (e != null) {
      return e.a();
    }
    return null;
  }
  
  public String r()
  {
    if (e != null) {
      return e.b();
    }
    return null;
  }
  
  public User s()
  {
    if (!c()) {
      return null;
    }
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(AppData.b());
    if (localSharedPreferences.getBoolean("fetch_user", true))
    {
      y();
      localSharedPreferences.edit().putBoolean("fetch_user", false).apply();
    }
    User localUser = new User(b(), q(), u(), e.h(), -1, -1, v());
    String str;
    if ((f == null) && (c()))
    {
      str = localSharedPreferences.getString("user_json_string", null);
      if (str == null) {
        break label176;
      }
    }
    for (;;)
    {
      try
      {
        f = ((User)User.CREATOR.parse(new JSONObject(str)));
        return f;
      }
      catch (JSONException localJSONException)
      {
        YelpLog.error("LoginManagerGetCurrentUser", localJSONException);
        f = localUser;
        localSharedPreferences.edit().remove("user_json_string");
        y();
        continue;
      }
      label176:
      f = localUser;
    }
  }
  
  public String t()
  {
    if (e == null) {
      return null;
    }
    return AppData.b().getApplicationContext().getString(2131166155, new Object[] { e.a(), u() });
  }
  
  public String u()
  {
    if (e != null) {}
    for (String str1 = e.b();; str1 = null)
    {
      String str2 = str1;
      if (!TextUtils.isEmpty(str1)) {
        str2 = String.valueOf(str1.charAt(0));
      }
      return str2;
    }
  }
  
  public String v()
  {
    if ((d == null) && (e != null))
    {
      w localw = new w("user/profile/photo");
      localw.a("session_token", l());
      localw.a("user_id", b());
      d = localw.a();
    }
    return d;
  }
  
  public void w()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(AppData.b());
    localSharedPreferences.edit().putBoolean("fetch_user", true).apply();
    if ((f != null) && (f.isFullUser())) {}
    try
    {
      String str = f.writeJSON().toString();
      localSharedPreferences.edit().putString("user_json_string", str).apply();
      return;
    }
    catch (JSONException localJSONException)
    {
      YelpLog.error("LoginManagerAppEnteringBackground", localJSONException);
    }
  }
  
  public boolean x()
  {
    return (o != null) && (o.isFetching());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */