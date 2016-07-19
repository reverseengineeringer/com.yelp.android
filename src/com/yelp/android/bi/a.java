package com.yelp.android.bi;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public class a
{
  private static final Lock a = new ReentrantLock();
  private static a b;
  private final Lock c = new ReentrantLock();
  private final SharedPreferences d;
  
  a(Context paramContext)
  {
    d = paramContext.getSharedPreferences("com.google.android.gms.signin", 0);
  }
  
  public static a a(Context paramContext)
  {
    zzx.zzz(paramContext);
    a.lock();
    try
    {
      if (b == null) {
        b = new a(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
    finally
    {
      a.unlock();
    }
  }
  
  private String a(String paramString1, String paramString2)
  {
    return paramString1 + ":" + paramString2;
  }
  
  public GoogleSignInAccount a()
  {
    return a(b("defaultGoogleSignInAccount"));
  }
  
  GoogleSignInAccount a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      paramString = b(a("googleSignInAccount", paramString));
    } while (paramString == null);
    try
    {
      paramString = GoogleSignInAccount.a(paramString);
      return paramString;
    }
    catch (JSONException paramString) {}
    return null;
  }
  
  protected String b(String paramString)
  {
    c.lock();
    try
    {
      paramString = d.getString(paramString, null);
      return paramString;
    }
    finally
    {
      c.unlock();
    }
  }
  
  public void b()
  {
    String str = b("defaultGoogleSignInAccount");
    d("defaultGoogleSignInAccount");
    c(str);
  }
  
  void c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    d(a("googleSignInAccount", paramString));
    d(a("googleSignInOptions", paramString));
  }
  
  protected void d(String paramString)
  {
    c.lock();
    try
    {
      d.edit().remove(paramString).apply();
      return;
    }
    finally
    {
      c.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */