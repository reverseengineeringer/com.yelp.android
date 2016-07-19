package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private static final Map<Class<?>, a> a = new HashMap();
  
  static
  {
    a.put(Boolean.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousBundle.putBoolean(paramAnonymousString, ((Boolean)paramAnonymousObject).booleanValue());
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    a.put(Integer.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousBundle.putInt(paramAnonymousString, ((Integer)paramAnonymousObject).intValue());
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    a.put(Long.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousBundle.putLong(paramAnonymousString, ((Long)paramAnonymousObject).longValue());
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    a.put(Double.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousBundle.putDouble(paramAnonymousString, ((Double)paramAnonymousObject).doubleValue());
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    a.put(String.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousBundle.putString(paramAnonymousString, (String)paramAnonymousObject);
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    a.put(String[].class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        throw new IllegalArgumentException("Unexpected type from JSON");
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        JSONArray localJSONArray = new JSONArray();
        paramAnonymousObject = (String[])paramAnonymousObject;
        int j = paramAnonymousObject.length;
        int i = 0;
        while (i < j)
        {
          localJSONArray.put(paramAnonymousObject[i]);
          i += 1;
        }
        paramAnonymousJSONObject.put(paramAnonymousString, localJSONArray);
      }
    });
    a.put(JSONArray.class, new a()
    {
      public void a(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        paramAnonymousObject = (JSONArray)paramAnonymousObject;
        ArrayList localArrayList = new ArrayList();
        if (((JSONArray)paramAnonymousObject).length() == 0)
        {
          paramAnonymousBundle.putStringArrayList(paramAnonymousString, localArrayList);
          return;
        }
        int i = 0;
        while (i < ((JSONArray)paramAnonymousObject).length())
        {
          Object localObject = ((JSONArray)paramAnonymousObject).get(i);
          if ((localObject instanceof String))
          {
            localArrayList.add((String)localObject);
            i += 1;
          }
          else
          {
            throw new IllegalArgumentException("Unexpected type in an array: " + localObject.getClass());
          }
        }
        paramAnonymousBundle.putStringArrayList(paramAnonymousString, localArrayList);
      }
      
      public void a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
        throws JSONException
      {
        throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
      }
    });
  }
  
  public static Bundle a(JSONObject paramJSONObject)
    throws JSONException
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if ((localObject != null) && (localObject != JSONObject.NULL)) {
        if ((localObject instanceof JSONObject))
        {
          localBundle.putBundle(str, a((JSONObject)localObject));
        }
        else
        {
          a locala = (a)a.get(localObject.getClass());
          if (locala == null) {
            throw new IllegalArgumentException("Unsupported type: " + localObject.getClass());
          }
          locala.a(localBundle, str, localObject);
        }
      }
    }
    return localBundle;
  }
  
  public static JSONObject a(Bundle paramBundle)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject1 = paramBundle.get(str);
      if (localObject1 != null)
      {
        Object localObject2;
        if ((localObject1 instanceof List))
        {
          localObject2 = new JSONArray();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((JSONArray)localObject2).put((String)((Iterator)localObject1).next());
          }
          localJSONObject.put(str, localObject2);
        }
        else if ((localObject1 instanceof Bundle))
        {
          localJSONObject.put(str, a((Bundle)localObject1));
        }
        else
        {
          localObject2 = (a)a.get(localObject1.getClass());
          if (localObject2 == null) {
            throw new IllegalArgumentException("Unsupported type: " + localObject1.getClass());
          }
          ((a)localObject2).a(localJSONObject, str, localObject1);
        }
      }
    }
    return localJSONObject;
  }
  
  public static abstract interface a
  {
    public abstract void a(Bundle paramBundle, String paramString, Object paramObject)
      throws JSONException;
    
    public abstract void a(JSONObject paramJSONObject, String paramString, Object paramObject)
      throws JSONException;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */