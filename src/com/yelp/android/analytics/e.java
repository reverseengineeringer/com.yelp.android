package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.AnalyticCategory;
import com.yelp.android.appdata.BaseYelpApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  extends b
{
  private final String a;
  private final String b;
  private final List<String> c;
  private final Map<String, String> d;
  private final boolean e;
  
  public e(String paramString1, String paramString2, List<String> paramList, Map<String, String> paramMap, boolean paramBoolean)
  {
    a(AnalyticCategory.ERROR);
    a = paramString1;
    b = paramString2;
    c = paramList;
    e = paramBoolean;
    d = paramMap;
  }
  
  public static e a(Throwable paramThrowable)
  {
    return a(paramThrowable, Collections.emptyMap());
  }
  
  public static e a(Throwable paramThrowable, Map<String, String> paramMap)
  {
    BaseYelpApplication localBaseYelpApplication = BaseYelpApplication.K();
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    ArrayList localArrayList = new ArrayList(arrayOfStackTraceElement.length);
    int j = arrayOfStackTraceElement.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(String.valueOf(arrayOfStackTraceElement[i]));
      i += 1;
    }
    return new e(paramThrowable.getMessage(), BaseYelpApplication.c(localBaseYelpApplication), localArrayList, paramMap, false);
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("type", a);
    localJSONObject.put("app_version", b);
    localJSONObject.put("trace", new JSONArray(c));
    if (!d.isEmpty()) {
      localJSONObject.put("details", new JSONObject(d));
    }
    localJSONObject.put("is_crash", e);
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */