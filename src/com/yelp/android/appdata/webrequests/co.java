package com.yelp.android.appdata.webrequests;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.support.v4.app.l;
import android.text.TextUtils;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.r;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.debug.Debug;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserLocation;
import com.yelp.android.services.h;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.q;
import java.io.FileNotFoundException;
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

public class co
  implements r, c.a
{
  public static final IntentFilter a = new IntentFilter("com.yelp.android.intent.new_account_config");
  public static final IntentFilter b = new IntentFilter("user_is_fetched");
  public static final IntentFilter c = new IntentFilter("user_failed_to_fetch");
  private String d;
  private com.yelp.android.serializable.j e;
  private User f;
  private boolean g;
  private boolean h;
  private final com.yelp.android.appdata.c i;
  private final Collection<a> j;
  private ApiPreferences k;
  private ApiRequest l;
  private ApiRequest m;
  private ApiRequest n;
  private final ApiRequest.b<com.yelp.android.serializable.j> o = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, com.yelp.android.serializable.j paramAnonymousj)
    {
      ApiException localApiException = null;
      if (!paramAnonymousj.f()) {
        localApiException = ApiException.getExceptionForCode(11, null);
      }
      paramAnonymousApiRequest = (cp)paramAnonymousApiRequest;
      co.a(co.this, paramAnonymousApiRequest.b(), paramAnonymousj);
      a(paramAnonymousj);
      co.b(co.this, localApiException);
      com.yelp.android.appdata.j.a().i();
      AppData.b().m().a(KahunaAttributeIri.FirstName, paramAnonymousj.a());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      co.b(co.this, paramAnonymousYelpException);
    }
  };
  private final ApiRequest.b<User> p = new ApiRequest.b()
  {
    private int b;
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, User paramAnonymousUser)
    {
      b(paramAnonymousUser);
      AppData.b().m().a(KahunaAttributeIri.FriendCount, String.valueOf(paramAnonymousUser.k_()));
      co.a(co.this);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (b < 3) {
        if (b()) {
          co.b(co.this);
        }
      }
      do
      {
        for (;;)
        {
          b += 1;
          return;
          if (b == 0) {
            YelpLog.remoteError("LoginManager", paramAnonymousYelpException);
          }
        }
        b = 0;
      } while ((co.c(co.this) == null) || (co.c(co.this).n()));
      AppData.b().sendBroadcast(new Intent("user_failed_to_fetch"));
    }
  };
  private final ApiRequest.b<Integer> q = new ApiRequest.b()
  {
    private int b;
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Integer paramAnonymousInteger)
    {
      paramAnonymousApiRequest = p();
      if (paramAnonymousApiRequest != null)
      {
        paramAnonymousApiRequest.b(paramAnonymousInteger.intValue());
        AppData.b().sendBroadcast(new Intent("user_is_fetched"));
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (b < 3)
      {
        co.a(co.this);
        b += 1;
        return;
      }
      b = 0;
    }
  };
  
  public co(ApiPreferences paramApiPreferences, com.yelp.android.appdata.c paramc)
  {
    k = paramApiPreferences;
    j = new HashSet();
    i = paramc;
    e = paramc.w();
    if (TextUtils.isEmpty(h())) {
      paramc.a(null);
    }
  }
  
  private final ApiRequest.b<List<UserLocation>> a(final l paraml)
  {
    new ApiRequest.b()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<UserLocation> paramAnonymousList)
      {
        paramAnonymousList = paramAnonymousList.iterator();
        do
        {
          if (!paramAnonymousList.hasNext()) {
            break;
          }
          paramAnonymousApiRequest = (UserLocation)paramAnonymousList.next();
        } while (!paramAnonymousApiRequest.a());
        for (;;)
        {
          if (paramAnonymousApiRequest != null) {
            a(paramAnonymousApiRequest);
          }
          return;
          paramAnonymousApiRequest = null;
        }
      }
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
      {
        paramAnonymousApiRequest = paramAnonymousYelpException.getMessage(AppData.b().getApplicationContext());
        if (paraml != null)
        {
          AlertDialogFragment.a(null, paramAnonymousApiRequest).show(paraml, null);
          return;
        }
        YelpLog.remoteError("LoginManager", paramAnonymousYelpException);
      }
    };
  }
  
  private void a(YelpException paramYelpException)
  {
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(paramYelpException);
    }
    u();
    j.clear();
  }
  
  private void a(k paramk, a parama)
  {
    if (g) {
      return;
    }
    if ((parama != null) && (!j.contains(parama))) {
      j.add(parama);
    }
    paramk.a(new Object[0]);
    g = true;
  }
  
  private void a(String paramString, com.yelp.android.serializable.j paramj)
  {
    i.c(paramString);
    i.a(paramj);
  }
  
  private void a(String paramString1, String paramString2)
  {
    new cp(paramString1, paramString2, o).f(new Void[0]);
  }
  
  private void b(YelpException paramYelpException)
  {
    g = false;
    h = true;
    if (paramYelpException == null)
    {
      AppData.b().l().a(AdjustManager.YelpAdjustEvent.LOG_IN);
      k.a(new ApiPreferences.a()
      {
        public void a(YelpException paramAnonymousYelpException)
        {
          co.a(co.this, paramAnonymousYelpException);
        }
      });
      return;
    }
    a(paramYelpException);
  }
  
  private void c(String paramString)
  {
    Object localObject = null;
    CookieStore localCookieStore = com.yelp.android.services.c.b().getCookieStore();
    Iterator localIterator = localCookieStore.getCookies().iterator();
    if (localIterator.hasNext())
    {
      Cookie localCookie = (Cookie)localIterator.next();
      if (!TextUtils.equals(localCookie.getName(), paramString)) {
        break label83;
      }
      localObject = localCookie;
    }
    label83:
    for (;;)
    {
      break;
      localCookieStore.clear();
      if (localObject != null) {
        localCookieStore.addCookie((Cookie)localObject);
      }
      return;
    }
  }
  
  private void u()
  {
    if ((l == null) || (!l.u())) {
      l = new fn(p, null, null).f(new Void[0]);
    }
    if ((n == null) || (!n.u())) {
      n = new g(a(null)).f(new Void[0]);
    }
  }
  
  private void v()
  {
    if ((m == null) || (!m.u())) {
      m = new fj(q).f(new Void[0]);
    }
  }
  
  public String a()
  {
    if (e != null) {
      return e.e();
    }
    return null;
  }
  
  public void a(Context paramContext)
  {
    if (b())
    {
      b(paramContext);
      b(null);
      PreferenceManager.getDefaultSharedPreferences(AppData.b()).edit().remove("user_json_string").apply();
    }
    i.a(null);
    i.c("");
    e();
    d = null;
    Notifier.a(paramContext);
    com.yelp.android.appdata.j.a().h();
    AppData.b().s().b();
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putBoolean(paramContext.getString(2131166959), false).apply();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if ((paramApiRequest instanceof cq))
    {
      AppData.a(EventIri.UserLogout, "request_id", ((b)paramApiRequest).i_());
      AppData.b().x();
      AppData.b().m().a(KahunaAttributeIri.FirstName, "cleared");
      AppData.b().m().a(KahunaAttributeIri.ReviewDraftBusinessId, "cleared");
    }
  }
  
  public void a(a parama)
  {
    if ((g) && (parama != null) && (!j.contains(parama))) {
      j.add(parama);
    }
  }
  
  protected void a(UserLocation paramUserLocation)
  {
    User localUser = p();
    if (localUser != null)
    {
      localUser.a(paramUserLocation.b());
      b(localUser);
    }
    a(com.yelp.android.serializable.j.a(e, paramUserLocation.b()));
    PreferenceManager.getDefaultSharedPreferences(AppData.b()).edit().putString(AppData.b().getApplicationContext().getString(2131166974), paramUserLocation.b()).commit();
  }
  
  public void a(com.yelp.android.serializable.j paramj)
  {
    if (paramj != null)
    {
      e = new com.yelp.android.serializable.j(paramj);
      return;
    }
    e = null;
  }
  
  public void a(String paramString1, String paramString2, a parama)
  {
    if (!g)
    {
      g = true;
      e();
      a(paramString1, paramString2);
    }
    if ((parama != null) && (!j.contains(parama))) {
      j.add(parama);
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, Locale paramLocale, boolean paramBoolean, a parama, String paramString10, String paramString11)
    throws FileNotFoundException
  {
    a(new d(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8, paramString9, paramBoolean, paramLocale, new b(paramString3, null), paramString10, paramString11), parama);
  }
  
  public void a(boolean paramBoolean)
  {
    if (e != null)
    {
      e.a(paramBoolean);
      a(i(), e);
    }
  }
  
  public boolean a(User paramUser)
  {
    return (paramUser != null) && (a(paramUser.ae()));
  }
  
  public boolean a(String paramString)
  {
    return (paramString != null) && (e != null) && (paramString.equals(e.e()));
  }
  
  public void b(Context paramContext)
  {
    Object localObject1 = AppData.b();
    paramContext = com.yelp.android.services.c.b(paramContext, ((AppData)localObject1).t(), ((AppData)localObject1).h());
    Object localObject2 = com.yelp.android.services.c.b();
    localObject1 = new BasicCookieStore();
    localObject2 = ((DefaultHttpClient)localObject2).getCookieStore();
    Iterator localIterator = ((CookieStore)localObject2).getCookies().iterator();
    while (localIterator.hasNext()) {
      ((BasicCookieStore)localObject1).addCookie((Cookie)localIterator.next());
    }
    paramContext.setCookieStore((CookieStore)localObject1);
    new cq(paramContext, this).f(new Void[0]);
    new q()
    {
      public Void a(CookieStore... paramAnonymousVarArgs)
      {
        int j = paramAnonymousVarArgs.length;
        int i = 0;
        while (i < j)
        {
          paramAnonymousVarArgs[i].clear();
          i += 1;
        }
        return null;
      }
    }.b(new CookieStore[] { localObject2 });
  }
  
  public void b(a parama)
  {
    if (parama != null) {
      j.remove(parama);
    }
  }
  
  public void b(User paramUser)
  {
    f = paramUser;
    AppData.b().sendBroadcast(new Intent("user_is_fetched"));
  }
  
  public void b(String paramString)
  {
    if (e != null)
    {
      e.a(paramString);
      i.c(i());
    }
  }
  
  public boolean b()
  {
    return e != null;
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    if (e != null) {
      return e.f();
    }
    return false;
  }
  
  public void e()
  {
    j.clear();
    a(null);
    k.b();
    k.a();
    c("api_dst");
    AppData.b().i().e().b();
    AppData.b().v();
    AppData.b().f().V();
    AppData.b().f().ag();
  }
  
  public boolean f()
  {
    return g;
  }
  
  public boolean g()
  {
    User localUser = AppData.b().q().p();
    if (localUser != null) {
      return localUser.h();
    }
    return false;
  }
  
  public String h()
  {
    Object localObject = AppData.b().t().c();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    String str;
    do
    {
      return (String)localObject;
      if (e == null) {
        return "";
      }
      str = com.yelp.android.util.g.a(com.yelp.android.services.c.b().getCookieStore().getCookies(), "api_s");
      localObject = str;
    } while (str != null);
    return "";
  }
  
  public String i()
  {
    if (e != null)
    {
      String str2 = e.g();
      String str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = i.v();
      }
      return str1;
    }
    return "";
  }
  
  public boolean j()
  {
    if (e != null) {
      return e.i();
    }
    return true;
  }
  
  public String k()
  {
    if (e != null) {
      return e.h();
    }
    return null;
  }
  
  public String l()
  {
    if (e != null) {
      return e.a();
    }
    return null;
  }
  
  public String m()
  {
    if (e != null) {
      return e.b();
    }
    return null;
  }
  
  public String n()
  {
    if (e != null) {
      return e.c();
    }
    return null;
  }
  
  public String o()
  {
    if (e != null) {
      return e.d();
    }
    return null;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
  
  public User p()
  {
    if (!b()) {
      return null;
    }
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(AppData.b());
    if (localSharedPreferences.getBoolean("fetch_user", true))
    {
      u();
      localSharedPreferences.edit().putBoolean("fetch_user", false).apply();
    }
    User localUser = new User(a(), l(), m(), n(), o(), e.j(), -1, -1, r());
    String str;
    if ((f == null) && (b()))
    {
      str = localSharedPreferences.getString("user_json_string", null);
      if (str == null) {
        break label184;
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
        YelpLog.remoteError("LoginManagerGetCurrentUser", localJSONException);
        f = localUser;
        localSharedPreferences.edit().remove("user_json_string");
        u();
        continue;
      }
      label184:
      f = localUser;
    }
  }
  
  public String q()
  {
    if (e == null) {
      return null;
    }
    return e.c();
  }
  
  public String r()
  {
    if ((d == null) && (e != null))
    {
      h localh = new h("user/profile/photo");
      localh.a("session_token", h());
      localh.a("user_id", a());
      d = localh.a();
    }
    return d;
  }
  
  public void s()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(AppData.b());
    localSharedPreferences.edit().putBoolean("fetch_user", true).apply();
    if ((f != null) && (f.n())) {}
    try
    {
      String str = f.A().toString();
      localSharedPreferences.edit().putString("user_json_string", str).apply();
      return;
    }
    catch (JSONException localJSONException)
    {
      YelpLog.remoteError("LoginManagerAppEnteringBackground", localJSONException);
    }
  }
  
  public boolean t()
  {
    return (l != null) && (l.u());
  }
  
  public static abstract interface a
  {
    public abstract void a(YelpException paramYelpException);
  }
  
  private class b
    extends k.b<com.yelp.android.serializable.j>
  {
    private String b;
    
    private b(String paramString)
    {
      b = paramString;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, com.yelp.android.serializable.j paramj)
    {
      co.a(co.this, b, paramj);
      a(paramj);
      co.b(co.this, null);
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      co.b(co.this, paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */