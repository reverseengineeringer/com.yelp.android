package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.yelp.android.services.a;
import com.yelp.android.util.PlatformQualifier;
import com.yelp.android.util.c;
import java.util.Collection;
import java.util.Collections;

public class j
{
  protected final SharedPreferences.OnSharedPreferenceChangeListener a;
  protected final Context b;
  private String c;
  private boolean d;
  
  public j(Context paramContext)
  {
    b = paramContext;
    a = new c(paramContext);
    d = false;
  }
  
  private SharedPreferences a()
  {
    return b.getSharedPreferences("HowdyPartna", 4);
  }
  
  protected SharedPreferences.Editor Z()
  {
    return a().edit();
  }
  
  protected int a(String paramString1, String paramString2)
  {
    paramString1 = b.getSharedPreferences(paramString1, 4);
    int i = paramString1.getInt(paramString2, 0) + 1;
    paramString1.edit().putInt(paramString2, i).commit();
    return i;
  }
  
  public Collection<String> a(Context paramContext)
  {
    return Collections.emptySet();
  }
  
  public void a(Context paramContext, Collection<PlatformQualifier> paramCollection) {}
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    SharedPreferences localSharedPreferences = b.getSharedPreferences("cred", 0);
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = new String(a.a(paramArrayOfByte));
      localSharedPreferences.edit().putString(paramString, paramArrayOfByte).commit();
      return;
    }
    localSharedPreferences.edit().remove(paramString).commit();
  }
  
  public String aa()
  {
    return a().getString("partnerXref", "");
  }
  
  public String ab()
  {
    if (!d)
    {
      c = a().getString("preinstalled_cohort", null);
      d = true;
    }
    return c;
  }
  
  public byte[] c(String paramString)
  {
    paramString = b.getSharedPreferences("cred", 0).getString(paramString, null);
    if (paramString == null) {
      return null;
    }
    return a.c(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */