package com.yelp.parcelgen;

import android.os.Bundle;
import android.os.Parcelable;
import com.yelp.android.g.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtil
{
  public static <T> Map<String, T> fromBundle(Bundle paramBundle, Class<T> paramClass)
  {
    paramBundle.setClassLoader(paramClass.getClassLoader());
    paramClass = new a();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramClass.put(str, paramBundle.get(str));
    }
    return paramClass;
  }
  
  public static String[] getStringArray(JSONArray paramJSONArray)
  {
    int i = 0;
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = new String[0];
      return (String[])localObject;
    }
    int j = paramJSONArray.length();
    String[] arrayOfString = new String[j];
    for (;;)
    {
      localObject = arrayOfString;
      if (i >= j) {
        break;
      }
      localObject = paramJSONArray.optString(i, null);
      if (localObject != null) {
        arrayOfString[i] = localObject;
      }
      i += 1;
    }
  }
  
  public static List<String> getStringList(JSONArray paramJSONArray)
  {
    paramJSONArray = getStringArray(paramJSONArray);
    if (paramJSONArray == null) {
      return Collections.emptyList();
    }
    return Arrays.asList(paramJSONArray);
  }
  
  public static List<Boolean> parseBooleanJsonList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = new ArrayList();
      return (List<Boolean>)localObject;
    }
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(Boolean.valueOf(paramJSONArray.getBoolean(i)));
      i += 1;
    }
  }
  
  public static Map<String, Boolean> parseBooleanJsonMap(JSONObject paramJSONObject)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, Boolean.valueOf(paramJSONObject.getBoolean(str)));
    }
    return locala;
  }
  
  public static List<Double> parseDoubleJsonList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = new ArrayList();
      return (List<Double>)localObject;
    }
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(Double.valueOf(paramJSONArray.getDouble(i)));
      i += 1;
    }
  }
  
  public static Map<String, Double> parseDoubleJsonMap(JSONObject paramJSONObject)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, Double.valueOf(paramJSONObject.getDouble(str)));
    }
    return locala;
  }
  
  public static List<Integer> parseIntegerJsonList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = new ArrayList();
      return (List<Integer>)localObject;
    }
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(Integer.valueOf(paramJSONArray.getInt(i)));
      i += 1;
    }
  }
  
  public static Map<String, Integer> parseIntegerJsonMap(JSONObject paramJSONObject)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, Integer.valueOf(paramJSONObject.getInt(str)));
    }
    return locala;
  }
  
  public static <T extends Parcelable> ArrayList<T> parseJsonList(JSONArray paramJSONArray, JsonParser<T> paramJsonParser)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null) {
      localObject = new ArrayList();
    }
    int j;
    ArrayList localArrayList;
    int i;
    do
    {
      return (ArrayList<T>)localObject;
      j = paramJSONArray.length();
      localArrayList = new ArrayList(j);
      i = 0;
      localObject = localArrayList;
    } while (i >= j);
    if (paramJsonParser.getElementType() == 2) {
      localArrayList.add(paramJsonParser.parse(paramJSONArray.getJSONArray(i)));
    }
    for (;;)
    {
      i += 1;
      break;
      if (paramJSONArray.isNull(i)) {
        localArrayList.add(null);
      } else {
        localArrayList.add(paramJsonParser.parse(paramJSONArray.getJSONObject(i)));
      }
    }
  }
  
  public static <T extends Parcelable> Map<String, T> parseJsonMap(JSONObject paramJSONObject, JsonParser<T> paramJsonParser)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, paramJsonParser.parse((JSONObject)paramJSONObject.get(str)));
    }
    return locala;
  }
  
  public static List<Long> parseLongJsonList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = new ArrayList();
      return (List<Long>)localObject;
    }
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(Long.valueOf(paramJSONArray.getLong(i)));
      i += 1;
    }
  }
  
  public static Map<String, Long> parseLongJsonMap(JSONObject paramJSONObject)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, Long.valueOf(paramJSONObject.getLong(str)));
    }
    return locala;
  }
  
  public static Map<String, String> parseStringJsonMap(JSONObject paramJSONObject)
    throws JSONException
  {
    a locala = new a();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      locala.put(str, paramJSONObject.getString(str));
    }
    return locala;
  }
  
  public static Date parseTimestamp(JSONObject paramJSONObject, String paramString)
  {
    if ((paramJSONObject != null) && (!paramJSONObject.isNull(paramString))) {
      try
      {
        paramJSONObject = new Date(paramJSONObject.getLong(paramString) * 1000L);
        return paramJSONObject;
      }
      catch (JSONException paramJSONObject)
      {
        return null;
      }
    }
    return null;
  }
  
  public static Bundle toBundle(Map<String, ? extends Parcelable> paramMap)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localBundle.putParcelable(str, (Parcelable)paramMap.get(str));
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.yelp.parcelgen.JsonUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */