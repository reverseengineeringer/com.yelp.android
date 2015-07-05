package com.yelp.android.serializable;

import com.yelp.android.services.r;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class en
{
  public static eq a(JSONObject paramJSONObject)
  {
    ep localep = new ep(paramJSONObject.getJSONObject("message"));
    String str1 = a("gender", "m", paramJSONObject);
    String str2 = a("first_name", paramJSONObject);
    String str3 = a("last_name", paramJSONObject);
    String str4 = a("user_id", paramJSONObject);
    boolean bool2 = c("is_confirmed", paramJSONObject);
    boolean bool3 = r.a(e("elite_years", paramJSONObject));
    String str5 = a("email", paramJSONObject);
    paramJSONObject = a("location", paramJSONObject);
    if (!str1.equalsIgnoreCase("f")) {}
    for (boolean bool1 = true;; bool1 = false) {
      return new eq(str2, str3, str4, bool2, bool3, str5, paramJSONObject, localep, bool1, eq.a);
    }
  }
  
  public static String a(String paramString1, String paramString2, JSONObject paramJSONObject)
  {
    if ((paramJSONObject != null) && (!paramJSONObject.isNull(paramString1))) {
      return paramJSONObject.optString(paramString1, paramString2);
    }
    return "";
  }
  
  public static String a(String paramString, JSONObject paramJSONObject)
  {
    if ((paramJSONObject != null) && (!paramJSONObject.isNull(paramString))) {
      try
      {
        paramJSONObject = paramJSONObject.getString(paramString);
        if (paramJSONObject != null)
        {
          paramString = paramJSONObject;
          if (!paramJSONObject.equals("null")) {}
        }
        else
        {
          paramString = "";
        }
        return paramString;
      }
      catch (Exception paramString) {}
    }
    return "";
  }
  
  public static List<YelpBookmark> a(JSONArray paramJSONArray)
  {
    return new eo(paramJSONArray, YelpBookmark.LAZY_CREATOR);
  }
  
  public static int b(String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      try
      {
        int i = paramJSONObject.getInt(paramString);
        return i;
      }
      catch (Exception paramString) {}
    }
    return 0;
  }
  
  public static boolean c(String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      try
      {
        boolean bool = paramJSONObject.getBoolean(paramString);
        return bool;
      }
      catch (Exception paramString) {}
    }
    return false;
  }
  
  public static double d(String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      try
      {
        double d = paramJSONObject.getDouble(paramString);
        return d;
      }
      catch (Exception paramString) {}
    }
    return 0.0D;
  }
  
  public static int[] e(String paramString, JSONObject paramJSONObject)
  {
    localObject1 = null;
    Object localObject2 = null;
    if (paramJSONObject != null)
    {
      localObject1 = localObject2;
      try
      {
        paramJSONObject = paramJSONObject.getJSONArray(paramString);
        localObject1 = localObject2;
        int j = paramJSONObject.length();
        localObject1 = localObject2;
        paramString = new int[j];
        int i = 0;
        for (;;)
        {
          localObject1 = paramString;
          if (i >= j) {
            break;
          }
          localObject1 = paramString;
          paramString[i] = paramJSONObject.getInt(i);
          i += 1;
        }
        return (int[])localObject1;
      }
      catch (Exception paramString) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */