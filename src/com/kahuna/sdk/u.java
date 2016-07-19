package com.kahuna.sdk;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class u
{
  private static long a = -1L;
  
  private static long a(String paramString)
  {
    try
    {
      if (paramString.contains("."))
      {
        List localList = Arrays.asList(paramString.split("\\."));
        if (localList.size() > 2)
        {
          long l1 = Long.parseLong((String)localList.get(0));
          long l2 = Long.parseLong((String)localList.get(1));
          long l3 = Long.parseLong((String)localList.get(2));
          return l3 + (l1 * 100000L + l2 * 1000L);
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      if (l.a) {
        Log.w("Kahuna", "Version code was not a well formated versioning string + " + localNumberFormatException);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramString.length();
      int i = 0;
      while (i < j)
      {
        char c = paramString.charAt(i);
        if (Character.isDigit(c)) {
          localStringBuilder.append(c);
        }
        i += 1;
      }
      return Long.parseLong(localStringBuilder.toString());
    }
  }
  
  protected static void a(l paraml, Context paramContext)
  {
    try
    {
      String str = s.k(paramContext);
      if (!str.equalsIgnoreCase(paraml.s()))
      {
        a(paraml, paramContext, str, paraml.s());
        s.d(paraml.s(), paramContext);
      }
      return;
    }
    catch (Exception paraml)
    {
      while (!l.a) {}
      Log.d("Kahuna", "Exception checking SDK upgrade: " + paraml);
    }
  }
  
  private static void a(l paraml, Context paramContext, String paramString1, String paramString2)
  {
    long l3;
    Object localObject1;
    try
    {
      l3 = a(paramString1);
      if (l3 < 459L)
      {
        if (l.a) {
          Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " deleting old SDK Config.");
        }
        t.a(paramContext, new t());
      }
      if (l3 < 514L)
      {
        if (l.a) {
          Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " Setting old config version to 0.");
        }
        paramString2 = t.a(paramContext);
        paramString2.a(0L);
        t.a(paramContext, paramString2);
      }
      if ((l3 != 0L) && (l3 < 516L) && (!s.a(paraml, paramContext).isEmpty()))
      {
        if (l.a) {
          Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " with actively monitored regions. Wiping out regions, and setting delay to ignore first enter geofence.");
        }
        s.a(paraml, null, paramContext);
        a = System.currentTimeMillis() / 1000L + 86400L;
      }
      if (l3 < 550L)
      {
        if (l.a) {
          Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " Migrating user credentials and attributes to new storage format.");
        }
        paraml = s.a(paramContext, "user_credentials", String.class);
        paramString2 = s.a(paramContext, "user_attributes", String.class);
        s.a(paraml, paramContext);
        s.c(paramString2, paramContext);
      }
      if (l3 < 556L)
      {
        if (l.a) {
          Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " re-calculating the event object checksums.");
        }
        s.a(s.a(paramContext, true).a(), paramContext);
      }
      if (l3 >= a("2.0.0")) {
        break label836;
      }
      if (l.a) {
        Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " migrating credentials to new storage.");
      }
      paramString2 = s.e(paramContext);
      if (paramString2.isEmpty()) {
        break label548;
      }
      paraml = s.f(paramContext);
      paramString2 = paramString2.entrySet().iterator();
      while (paramString2.hasNext())
      {
        localObject1 = (Map.Entry)paramString2.next();
        if (!paraml.containsKey(((Map.Entry)localObject1).getKey())) {
          paraml.put(((Map.Entry)localObject1).getKey(), new HashSet());
        }
        ((Set)paraml.get(((Map.Entry)localObject1).getKey())).add(((Map.Entry)localObject1).getValue());
        continue;
        return;
      }
    }
    catch (Exception paraml)
    {
      if (l.a) {
        Log.d("Kahuna", "Exception performing upgrade script: " + paraml);
      }
    }
    s.a(null, paramContext);
    s.b(paraml, paramContext);
    label548:
    paraml = s.a(paramContext, true).a();
    label584:
    int i;
    Object localObject2;
    Object localObject3;
    int j;
    label719:
    label836:
    label1050:
    label1074:
    long l1;
    if (!paraml.isEmpty())
    {
      if (l.a)
      {
        Log.d("Kahuna", "Adding event numbers to all previous events.");
        break label1428;
        if (i < paraml.size())
        {
          paramString2 = (Event)paraml.get(i);
          paramString2.a(i + 1);
          boolean bool = w.a(paramString2.d());
          if (!bool) {
            try
            {
              localObject1 = new HashMap();
              localObject2 = new JSONObject(paramString2.d());
              localObject3 = ((JSONObject)localObject2).keys();
              while (((Iterator)localObject3).hasNext())
              {
                HashSet localHashSet = new HashSet();
                String str1 = (String)((Iterator)localObject3).next();
                if (((JSONObject)localObject2).optJSONArray(str1) != null)
                {
                  JSONArray localJSONArray = ((JSONObject)localObject2).optJSONArray(str1);
                  int k = localJSONArray.length();
                  j = 0;
                  if (j < k)
                  {
                    String str2 = localJSONArray.optString(j);
                    if (w.a(str2)) {
                      break label1434;
                    }
                    localHashSet.add(str2);
                    break label1434;
                  }
                }
                else
                {
                  localHashSet.add(((JSONObject)localObject2).optString(str1));
                }
                ((Map)localObject1).put(str1, localHashSet);
                continue;
                i += 1;
              }
            }
            catch (Exception paramString2)
            {
              Log.e("Kahuna", "Caught exception migrating old event credentials from Archive: " + paramString2);
            }
          }
          for (;;)
          {
            break;
            paramString2.a((Map)localObject1);
          }
        }
        s.a(paraml, paramContext);
      }
    }
    else if (l3 < a("2.0.2"))
    {
      if (l.a) {
        Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " k_user_attributes event reording.");
      }
      localObject1 = s.h(paramContext);
      if (!w.a((Set)localObject1))
      {
        paramString2 = s.g(paramContext);
        if (!w.a(paramString2.keySet()))
        {
          paraml = new HashMap();
          localObject1 = ((Set)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            localObject3 = (String)paramString2.get(localObject2);
            if (localObject3 != null) {
              paraml.put(localObject2, localObject3);
            }
          }
          if (paraml.size() > 0)
          {
            paramString2 = s.a(paramContext, true).a();
            localObject1 = new Event("k_user_attributes");
            ((Event)localObject1).b(paraml);
            if (paramString2.isEmpty()) {
              break label1452;
            }
            paraml = (Event)paramString2.get(paramString2.size() - 1);
            if ((paraml == null) || (paraml.k() <= 0L)) {
              break label1299;
            }
            ((Event)localObject1).a(paraml.k() + 1L);
            paramString2.add(localObject1);
            s.a(paramString2, paramContext);
          }
        }
      }
      s.a(null, paramContext);
    }
    else
    {
      if (l3 >= a("2.0.3")) {
        break label1357;
      }
      if (l.a) {
        Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " remove k_auto_logout.");
      }
      paramString2 = s.a(paramContext, true).a();
      if (w.a(paramString2)) {
        break label1357;
      }
      if (l.a) {
        Log.d("Kahuna", "Migrating k_auto_logout events and re-adding event numbers.");
      }
      long l2 = ((Event)paramString2.get(0)).k();
      l1 = l2;
      if (l2 < 1L) {
        l1 = 1L;
      }
      localObject1 = new ArrayList();
      i = 0;
      label1214:
      if (i >= paramString2.size()) {
        break label1345;
      }
      localObject2 = (Event)paramString2.get(i);
      if (!"k_auto_logout".equals(((Event)localObject2).a())) {
        break label1319;
      }
      if (i + 1 >= paramString2.size()) {
        break label1457;
      }
    }
    label1299:
    label1319:
    label1345:
    label1357:
    label1428:
    label1434:
    label1443:
    label1452:
    label1457:
    for (paraml = (Event)paramString2.get(i + 1);; paraml = null)
    {
      if ((paraml != null) && ("k_user_login".equals(paraml.a())))
      {
        break label1443;
        ((Event)localObject1).a(s.n(paramContext));
        break label1074;
      }
      ((Event)localObject2).a("k_user_login");
      ((Event)localObject2).a(l1);
      ((List)localObject1).add(localObject2);
      l1 = 1L + l1;
      break label1443;
      s.a((List)localObject1, paramContext);
      s.b(l1, paramContext);
      if (l3 >= a("2.2.0")) {
        break;
      }
      if (l.a) {
        Log.d("Kahuna", "Upgrading from SDK version " + paramString1 + " Setting old config version to 0 and" + "updating event object checksums.");
      }
      paraml = t.a(paramContext);
      paraml.a(0L);
      t.a(paramContext, paraml);
      return;
      i = 0;
      break label584;
      j += 1;
      break label719;
      i += 1;
      break label1214;
      paraml = null;
      break label1050;
    }
  }
  
  protected static boolean a(boolean paramBoolean)
  {
    long l = System.currentTimeMillis() / 1000L;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a > 0L)
    {
      bool1 = bool2;
      if (a > l) {
        bool1 = true;
      }
    }
    if (paramBoolean) {
      a = -1L;
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */