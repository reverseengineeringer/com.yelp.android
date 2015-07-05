package com.ooyala.android;

import android.os.Build.VERSION;
import android.text.format.DateUtils;
import android.util.Log;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class Utils
{
  public static <T extends Comparable<? super T>> List<T> asSortedList(Collection<T> paramCollection)
  {
    paramCollection = new ArrayList(paramCollection);
    Collections.sort(paramCollection);
    return paramCollection;
  }
  
  public static String device()
  {
    if (OoyalaPlayer.enableHighResHLS) {
      return "ipad";
    }
    if ((OoyalaPlayer.enableHLS) || (Build.VERSION.SDK_INT >= 14)) {
      return "android_3plus_sdk";
    }
    return "android_sdk";
  }
  
  public static String getParamsString(Map<String, String> paramMap, String paramString, boolean paramBoolean)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = asSortedList(paramMap.keySet()).iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0)
      {
        i = 0;
        localStringBuffer.append(str);
        localStringBuffer.append("=");
        if (!paramBoolean) {
          break label161;
        }
      }
      for (;;)
      {
        try
        {
          localStringBuffer.append(URLEncoder.encode((String)paramMap.get(str), "UTF-8"));
          break;
          localStringBuffer.append(paramString);
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          Log.e(Utils.class.getName(), "ERROR while trying to encode parameter", localUnsupportedEncodingException);
          localStringBuffer.append((String)paramMap.get(str));
          continue;
        }
        label161:
        localStringBuffer.append((String)paramMap.get(str));
      }
    }
    return localStringBuffer.toString();
  }
  
  public static <T> Set<T> getSubset(Map<String, T> paramMap, int paramInt1, int paramInt2)
  {
    int j = 0;
    if ((paramInt1 < 0) || (paramInt1 + paramInt2 > paramMap.size()))
    {
      paramMap = null;
      return paramMap;
    }
    Iterator localIterator = paramMap.values().iterator();
    int i = 0;
    while ((i < paramInt1) && (localIterator.hasNext()))
    {
      localIterator.next();
      i += 1;
    }
    HashSet localHashSet = new HashSet();
    paramInt1 = j;
    for (;;)
    {
      paramMap = localHashSet;
      if (paramInt1 >= paramInt2) {
        break;
      }
      paramMap = localHashSet;
      if (!localIterator.hasNext()) {
        break;
      }
      localHashSet.add(localIterator.next());
      paramInt1 += 1;
    }
  }
  
  public static boolean isNullOrEmpty(String paramString)
  {
    return (paramString == null) || (paramString.equals(""));
  }
  
  public static String join(Collection<? extends Object> paramCollection, String paramString)
  {
    if (paramCollection == null) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localStringBuffer.append(paramCollection.next().toString());
      localStringBuffer.append(paramString);
    }
    paramCollection = localStringBuffer;
    if (localStringBuffer.length() > 0) {
      paramCollection = localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
    }
    return paramCollection.toString();
  }
  
  public static URL makeURL(String paramString1, String paramString2, String paramString3)
  {
    label77:
    for (;;)
    {
      try
      {
        paramString2 = new StringBuilder().append(paramString1).append(paramString2);
        if (paramString3 != null) {
          if (paramString3.length() < 1)
          {
            break label77;
            return new URL(paramString1);
          }
          else
          {
            paramString1 = "?" + paramString3;
            continue;
          }
        }
        paramString1 = "";
      }
      catch (MalformedURLException paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
    }
  }
  
  public static URL makeURL(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    return makeURL(paramString1, paramString2, getParamsString(paramMap, "&", true));
  }
  
  public static Map<String, String> mapFromJSONObject(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    if (paramJSONObject == null) {
      return localHashMap;
    }
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        localHashMap.put(str, paramJSONObject.getString(str));
      }
      catch (JSONException localJSONException) {}
    }
    return localHashMap;
  }
  
  public static JSONObject objectFromJSON(String paramString)
  {
    try
    {
      paramString = (JSONObject)new JSONTokener(paramString).nextValue();
      return paramString;
    }
    catch (JSONException paramString)
    {
      System.out.println("JSONException: " + paramString);
      return null;
    }
    catch (ClassCastException paramString)
    {
      System.out.println("ClassCastException: " + paramString);
    }
    return null;
  }
  
  public static double secondsFromTimeString(String paramString)
  {
    paramString = paramString.split(":");
    double d1 = 1.0D;
    double d2 = 0.0D;
    int i = paramString.length - 1;
    while (i >= 0)
    {
      d2 += Double.parseDouble(paramString[i]) * d1;
      d1 *= 60.0D;
      i -= 1;
    }
    return d2;
  }
  
  public static String timeStringFromMillis(int paramInt, boolean paramBoolean)
  {
    return DateUtils.formatElapsedTime(paramInt / 1000);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */