package com.yelp.android.ui.activities.support;

import com.yelp.android.util.YelpLog;
import java.lang.reflect.Method;
import org.json.JSONObject;

class JavaScriptEventInterface$a
  implements Runnable
{
  private final JavaScriptEventInterface.b a;
  private final Method b;
  private final JSONObject c;
  
  public JavaScriptEventInterface$a(JavaScriptEventInterface.b paramb, Method paramMethod, JSONObject paramJSONObject)
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

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.JavaScriptEventInterface.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */