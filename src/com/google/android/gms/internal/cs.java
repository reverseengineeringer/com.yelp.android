package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Base64;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.s;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@fv
public class cs
{
  private final Map<ct, cv> a = new HashMap();
  private final LinkedList<ct> b = new LinkedList();
  private cp c;
  
  private static void a(String paramString, ct paramct)
  {
    if (gz.a(2)) {
      gz.e(String.format(paramString, new Object[] { paramct }));
    }
  }
  
  private String[] a(String paramString)
  {
    try
    {
      String[] arrayOfString = paramString.split("\000");
      int i = 0;
      for (;;)
      {
        paramString = arrayOfString;
        if (i >= arrayOfString.length) {
          break;
        }
        arrayOfString[i] = new String(Base64.decode(arrayOfString[i], 0), "UTF-8");
        i += 1;
      }
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString = new String[0];
    }
  }
  
  private String e()
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        localStringBuilder.append(Base64.encodeToString(((ct)localIterator.next()).toString().getBytes("UTF-8"), 0));
        if (localIterator.hasNext()) {
          localStringBuilder.append("\000");
        }
      }
      str = localUnsupportedEncodingException.toString();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      return "";
    }
    String str;
    return str;
  }
  
  cv.a a(AdRequestParcel paramAdRequestParcel, String paramString)
  {
    int i = gd.ac.b()).a().m;
    ct localct = new ct(paramAdRequestParcel, paramString, i);
    cv localcv = (cv)a.get(localct);
    if (localcv == null)
    {
      a("Interstitial pool created at %s.", localct);
      paramAdRequestParcel = new cv(paramAdRequestParcel, paramString, i);
      a.put(localct, paramAdRequestParcel);
    }
    for (;;)
    {
      b.remove(localct);
      b.add(localct);
      localct.a();
      while (b.size() > ((Integer)ao.ag.c()).intValue())
      {
        paramString = (ct)b.remove();
        localcv = (cv)a.get(paramString);
        a("Evicting interstitial queue for %s.", paramString);
        while (localcv.e() > 0) {
          da.D();
        }
        a.remove(paramString);
      }
      while (paramAdRequestParcel.e() > 0)
      {
        paramString = paramAdRequestParcel.d();
        if ((e) && (s.i().a() - d > 1000L * ((Integer)ao.ai.c()).intValue()))
        {
          a("Expired interstitial at %s.", localct);
        }
        else
        {
          a("Pooled interstitial returned at %s.", localct);
          return paramString;
        }
      }
      return null;
      paramAdRequestParcel = localcv;
    }
  }
  
  void a()
  {
    if (c == null) {
      return;
    }
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      ct localct = (ct)((Map.Entry)localObject).getKey();
      localObject = (cv)((Map.Entry)localObject).getValue();
      while (((cv)localObject).e() < ((Integer)ao.ah.c()).intValue())
      {
        a("Pooling one interstitial for %s.", localct);
        ((cv)localObject).a(c);
      }
    }
    b();
  }
  
  void a(cp paramcp)
  {
    if (c == null)
    {
      c = paramcp;
      c();
    }
  }
  
  void b()
  {
    if (c == null) {
      return;
    }
    SharedPreferences.Editor localEditor = c.b().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
    localEditor.clear();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      ct localct = (ct)((Map.Entry)localObject).getKey();
      if (localct.b())
      {
        localObject = new cx((cv)((Map.Entry)localObject).getValue()).a();
        localEditor.putString(localct.toString(), (String)localObject);
        a("Saved interstitial queue for %s.", localct);
      }
    }
    localEditor.putString("PoolKeys", e());
    localEditor.commit();
  }
  
  void c()
  {
    if (c == null) {}
    for (;;)
    {
      return;
      Object localObject2 = c.b().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
      d();
      HashMap localHashMap = new HashMap();
      Iterator localIterator = ((SharedPreferences)localObject2).getAll().entrySet().iterator();
      label55:
      Object localObject1;
      if (localIterator.hasNext()) {
        localObject1 = (Map.Entry)localIterator.next();
      }
      try
      {
        if (((String)((Map.Entry)localObject1).getKey()).equals("PoolKeys")) {
          break label55;
        }
        Object localObject3 = new cx((String)((Map.Entry)localObject1).getValue());
        localObject1 = new ct(a, b, c);
        if (a.containsKey(localObject1)) {
          break label55;
        }
        localObject3 = new cv(a, b, c);
        a.put(localObject1, localObject3);
        localHashMap.put(((ct)localObject1).toString(), localObject1);
        a("Restored interstitial queue for %s.", (ct)localObject1);
      }
      catch (IOException localIOException)
      {
        gz.d("Malformed preferences value for InterstitialAdPool.", localIOException);
        break label55;
        String[] arrayOfString = a(((SharedPreferences)localObject2).getString("PoolKeys", ""));
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          localObject2 = (ct)localHashMap.get(arrayOfString[i]);
          if (a.containsKey(localObject2)) {
            b.add(localObject2);
          }
          i += 1;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        for (;;) {}
      }
    }
  }
  
  void d()
  {
    while (b.size() > 0)
    {
      ct localct = (ct)b.remove();
      cv localcv = (cv)a.get(localct);
      a("Flushing interstitial queue for %s.", localct);
      while (localcv.e() > 0) {
        da.D();
      }
      a.remove(localct);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */