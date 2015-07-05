package com.yelp.parcelgen;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtil
{
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
  
  public static <E> ArrayList<E> parseJsonList(JSONArray paramJSONArray, JsonParser<E> paramJsonParser)
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
      return (ArrayList<E>)localObject;
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
}

/* Location:
 * Qualified Name:     com.yelp.parcelgen.JsonUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */