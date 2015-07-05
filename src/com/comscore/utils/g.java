package com.comscore.utils;

import com.comscore.analytics.a;
import com.comscore.applications.EventType;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

public class g
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
  private a b;
  
  public g(a parama)
  {
    b = parama;
  }
  
  private void a(Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    Object localObject1 = "";
    int i = 0;
    if ((i < arrayOfStackTraceElement.length) && (i < 5))
    {
      localObject2 = arrayOfStackTraceElement[i];
      localObject2 = ((StackTraceElement)localObject2).getFileName() + "@" + ((StackTraceElement)localObject2).getLineNumber() + "|" + ((StackTraceElement)localObject2).getClassName() + "." + ((StackTraceElement)localObject2).getMethodName();
      if (((String)localObject1).equals("")) {}
      for (localObject1 = localObject2;; localObject1 = (String)localObject1 + ";" + (String)localObject2)
      {
        i += 1;
        break;
      }
    }
    Object localObject2 = new HashMap();
    if (!((String)localObject1).equals("")) {}
    try
    {
      ((HashMap)localObject2).put("ns_ap_uxc", URLEncoder.encode((String)localObject1, "UTF-8"));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      try
      {
        for (;;)
        {
          ((HashMap)localObject2).put("ns_ap_uxs", URLEncoder.encode(paramThrowable.toString(), "UTF-8"));
          b.p().a(EventType.HIDDEN, (HashMap)localObject2, true);
          return;
          localUnsupportedEncodingException = localUnsupportedEncodingException;
          c.b(this, "Error encoding the URL (ns_ap_uxc)");
          c.a(localUnsupportedEncodingException);
        }
      }
      catch (UnsupportedEncodingException paramThrowable)
      {
        for (;;)
        {
          c.b(this, "Error encoding the URL (ns_ap_uxs)");
          c.a(paramThrowable);
        }
      }
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThrowable);
    a.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */