package com.yelp.android.ui.activities.support;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.yelp.android.util.YelpLog;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

public class JavaScriptEventInterface
{
  private static final String METHOD_PREFIX = "on";
  private final b mCallback;
  private final Handler mHandler;
  
  public JavaScriptEventInterface(Handler paramHandler, b paramb)
  {
    mHandler = paramHandler;
    mCallback = paramb;
  }
  
  private String getMethodName(String paramString)
  {
    int i = 0;
    paramString = new StringBuilder(paramString);
    paramString.replace(0, 1, String.valueOf(Character.toUpperCase(paramString.charAt(0))));
    while (i < paramString.length())
    {
      if (paramString.charAt(i) == '.')
      {
        paramString.deleteCharAt(i);
        if ((i < paramString.length()) && (Character.isLetter(paramString.charAt(i)))) {
          paramString.replace(i, i + 1, String.valueOf(Character.toUpperCase(paramString.charAt(i))));
        }
      }
      i += 1;
    }
    return "on" + String.valueOf(paramString);
  }
  
  @JavascriptInterface
  public void triggerEvent(String paramString1, String paramString2)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString2))
      {
        paramString2 = new JSONObject(paramString2);
        localObject = paramString2;
        if (paramString2 == null) {
          localObject = new JSONObject();
        }
        paramString1 = getMethodName(paramString1);
      }
    }
    catch (JSONException paramString2)
    {
      for (;;)
      {
        try
        {
          Object localObject;
          paramString2 = mCallback.getClass().getMethod(paramString1, new Class[] { JSONObject.class });
          mHandler.post(new a(mCallback, paramString2, (JSONObject)localObject));
          return;
        }
        catch (NoSuchMethodException paramString2)
        {
          YelpLog.e(this, "No such method " + paramString1 + " - probably not used in this version", paramString2);
        }
        paramString2 = paramString2;
        YelpLog.e(this, "JSONException", paramString2);
        paramString2 = null;
      }
    }
  }
  
  private static class a
    implements Runnable
  {
    private final JavaScriptEventInterface.b a;
    private final Method b;
    private final JSONObject c;
    
    public a(JavaScriptEventInterface.b paramb, Method paramMethod, JSONObject paramJSONObject)
    {
      a = paramb;
      b = paramMethod;
      c = paramJSONObject;
    }
    
    public void run()
    {
      try
      {
        b.invoke(a, new Object[] { c });
        return;
      }
      catch (Exception localException)
      {
        YelpLog.e(this, "callback failed", localException);
      }
    }
  }
  
  public static abstract interface b {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.JavaScriptEventInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */