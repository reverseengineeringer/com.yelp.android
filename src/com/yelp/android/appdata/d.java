package com.yelp.android.appdata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.services.a;
import java.util.Collection;
import java.util.Collections;

public class d
{
  protected final Context a;
  
  public d(Context paramContext)
  {
    a = paramContext;
  }
  
  protected int a(String paramString1, String paramString2)
  {
    paramString1 = a.getSharedPreferences(paramString1, 4);
    int i = paramString1.getInt(paramString2, 0) + 1;
    paramString1.edit().putInt(paramString2, i).commit();
    return i;
  }
  
  public Collection<String> a(Context paramContext)
  {
    return Collections.emptySet();
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("cred", 0);
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = new String(a.a(paramArrayOfByte));
      localSharedPreferences.edit().putString(paramString, paramArrayOfByte).commit();
      return;
    }
    localSharedPreferences.edit().remove(paramString).commit();
  }
  
  protected SharedPreferences.Editor ah()
  {
    return ai().edit();
  }
  
  protected SharedPreferences ai()
  {
    return a.getSharedPreferences("HowdyPartna", 4);
  }
  
  public String aj()
  {
    return ai().getString("partnerXref", "");
  }
  
  public byte[] e(String paramString)
  {
    paramString = a.getSharedPreferences("cred", 0).getString(paramString, null);
    if (paramString == null) {
      return null;
    }
    return a.b(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */