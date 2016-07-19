package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import java.util.concurrent.Future;

@fv
public final class hb
{
  public static SharedPreferences a(Context paramContext)
  {
    return paramContext.getSharedPreferences("admob", 0);
  }
  
  public static Future a(Context paramContext, final int paramInt)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences.Editor localEditor = hb.a(a).edit();
        localEditor.putInt("webview_cache_version", paramInt);
        localEditor.apply();
      }
    }.g();
  }
  
  public static Future a(Context paramContext, final b paramb)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences localSharedPreferences = hb.a(a);
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("use_https", localSharedPreferences.getBoolean("use_https", true));
        if (paramb != null) {
          paramb.a(localBundle);
        }
      }
    }.g();
  }
  
  public static Future a(Context paramContext, final String paramString)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences.Editor localEditor = hb.a(a).edit();
        localEditor.putString("content_url_hashes", paramString);
        localEditor.apply();
      }
    }.g();
  }
  
  public static Future a(Context paramContext, final boolean paramBoolean)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences.Editor localEditor = hb.a(a).edit();
        localEditor.putBoolean("use_https", paramBoolean);
        localEditor.apply();
      }
    }.g();
  }
  
  public static Future b(Context paramContext, final b paramb)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences localSharedPreferences = hb.a(a);
        Bundle localBundle = new Bundle();
        localBundle.putInt("webview_cache_version", localSharedPreferences.getInt("webview_cache_version", 0));
        if (paramb != null) {
          paramb.a(localBundle);
        }
      }
    }.g();
  }
  
  public static Future b(Context paramContext, final boolean paramBoolean)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences.Editor localEditor = hb.a(a).edit();
        localEditor.putBoolean("content_url_opted_out", paramBoolean);
        localEditor.apply();
      }
    }.g();
  }
  
  public static Future c(Context paramContext, final b paramb)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences localSharedPreferences = hb.a(a);
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("content_url_opted_out", localSharedPreferences.getBoolean("content_url_opted_out", true));
        if (paramb != null) {
          paramb.a(localBundle);
        }
      }
    }.g();
  }
  
  public static Future d(Context paramContext, final b paramb)
  {
    new a(paramContext)
    {
      public void a()
      {
        SharedPreferences localSharedPreferences = hb.a(a);
        Bundle localBundle = new Bundle();
        localBundle.putString("content_url_hashes", localSharedPreferences.getString("content_url_hashes", ""));
        if (paramb != null) {
          paramb.a(localBundle);
        }
      }
    }.g();
  }
  
  private static abstract class a
    extends gy
  {
    public void b() {}
  }
  
  public static abstract interface b
  {
    public abstract void a(Bundle paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */