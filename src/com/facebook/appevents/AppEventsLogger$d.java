package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.internal.AppEventsLoggerUtility;
import com.facebook.internal.AppEventsLoggerUtility.GraphAPIActivityType;
import com.facebook.internal.b;
import com.facebook.internal.u;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class AppEventsLogger$d
{
  private List<AppEventsLogger.AppEvent> a = new ArrayList();
  private List<AppEventsLogger.AppEvent> b = new ArrayList();
  private int c;
  private b d;
  private String e;
  private String f;
  private final int g = 1000;
  
  public AppEventsLogger$d(b paramb, String paramString1, String paramString2)
  {
    d = paramb;
    e = paramString1;
    f = paramString2;
  }
  
  private void a(GraphRequest paramGraphRequest, int paramInt, JSONArray paramJSONArray, boolean paramBoolean)
  {
    try
    {
      localObject2 = AppEventsLoggerUtility.a(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, d, f, paramBoolean, AppEventsLogger.e());
      localObject1 = localObject2;
      if (c > 0)
      {
        ((JSONObject)localObject2).put("num_skipped_events", paramInt);
        localObject1 = localObject2;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Object localObject2;
        Object localObject1;
        JSONObject localJSONObject = new JSONObject();
      }
    }
    paramGraphRequest.a((JSONObject)localObject1);
    localObject2 = paramGraphRequest.c();
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new Bundle();
    }
    paramJSONArray = paramJSONArray.toString();
    if (paramJSONArray != null)
    {
      ((Bundle)localObject1).putByteArray("custom_events_file", a(paramJSONArray));
      paramGraphRequest.a(paramJSONArray);
    }
    paramGraphRequest.a((Bundle)localObject1);
  }
  
  private byte[] a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      u.a("Encoding exception: ", paramString);
    }
    return null;
  }
  
  public int a()
  {
    try
    {
      int i = a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int a(GraphRequest paramGraphRequest, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i;
    JSONArray localJSONArray;
    try
    {
      i = c;
      b.addAll(a);
      a.clear();
      localJSONArray = new JSONArray();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        AppEventsLogger.AppEvent localAppEvent = (AppEventsLogger.AppEvent)localIterator.next();
        if ((paramBoolean1) || (!localAppEvent.getIsImplicit())) {
          localJSONArray.put(localAppEvent.getJSONObject());
        }
      }
      if (localJSONArray.length() != 0) {
        break label116;
      }
    }
    finally {}
    return 0;
    label116:
    a(paramGraphRequest, i, localJSONArray, paramBoolean2);
    return localJSONArray.length();
  }
  
  /* Error */
  public void a(AppEventsLogger.AppEvent paramAppEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/facebook/appevents/AppEventsLogger$d:a	Ljava/util/List;
    //   6: invokeinterface 121 1 0
    //   11: aload_0
    //   12: getfield 30	com/facebook/appevents/AppEventsLogger$d:b	Ljava/util/List;
    //   15: invokeinterface 121 1 0
    //   20: iadd
    //   21: sipush 1000
    //   24: if_icmplt +16 -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 58	com/facebook/appevents/AppEventsLogger$d:c	I
    //   32: iconst_1
    //   33: iadd
    //   34: putfield 58	com/facebook/appevents/AppEventsLogger$d:c	I
    //   37: aload_0
    //   38: monitorexit
    //   39: return
    //   40: aload_0
    //   41: getfield 28	com/facebook/appevents/AppEventsLogger$d:a	Ljava/util/List;
    //   44: aload_1
    //   45: invokeinterface 166 2 0
    //   50: pop
    //   51: goto -14 -> 37
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	d
    //   0	59	1	paramAppEvent	AppEventsLogger.AppEvent
    // Exception table:
    //   from	to	target	type
    //   2	37	54	finally
    //   40	51	54	finally
  }
  
  public void a(List<AppEventsLogger.AppEvent> paramList)
  {
    try
    {
      a.addAll(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    try
    {
      a.addAll(b);
      b.clear();
      c = 0;
      return;
    }
    finally {}
  }
  
  public List<AppEventsLogger.AppEvent> b()
  {
    try
    {
      List localList = a;
      a = new ArrayList();
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */