package com.crashlytics.android.internal;

import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

 enum ad
{
  private static final Map<String, ad> k;
  
  static
  {
    HashMap localHashMap = new HashMap(4);
    k = localHashMap;
    localHashMap.put("armeabi-v7a", g);
    k.put("armeabi", f);
    k.put("x86", a);
  }
  
  private ad() {}
  
  static ad a()
  {
    Object localObject = Build.CPU_ABI;
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      cl.a().b().a("Crashlytics", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
      localObject = h;
    }
    ad localad;
    do
    {
      return (ad)localObject;
      localObject = ((String)localObject).toLowerCase(Locale.US);
      localad = (ad)k.get(localObject);
      localObject = localad;
    } while (localad != null);
    return h;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */