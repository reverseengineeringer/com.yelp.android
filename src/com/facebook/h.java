package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.concurrent.Executor;

public class h
  extends AsyncTask<Void, Void, List<GraphResponse>>
{
  private static final String a = h.class.getCanonicalName();
  private static Method b;
  private final HttpURLConnection c;
  private final i d;
  private Exception e;
  
  static
  {
    Method[] arrayOfMethod = AsyncTask.class.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Method localMethod = arrayOfMethod[i];
        if ("executeOnExecutor".equals(localMethod.getName()))
        {
          Class[] arrayOfClass = localMethod.getParameterTypes();
          if ((arrayOfClass.length == 2) && (arrayOfClass[0] == Executor.class) && (arrayOfClass[1].isArray())) {
            b = localMethod;
          }
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public h(i parami)
  {
    this(null, parami);
  }
  
  public h(HttpURLConnection paramHttpURLConnection, i parami)
  {
    d = parami;
    c = paramHttpURLConnection;
  }
  
  h a()
  {
    if (b != null) {}
    try
    {
      b.invoke(this, new Object[] { g.d(), null });
      return this;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return this;
    }
    catch (InvocationTargetException localInvocationTargetException) {}
    execute(new Void[0]);
    return this;
    return this;
  }
  
  protected List<GraphResponse> a(Void... paramVarArgs)
  {
    try
    {
      if (c == null) {
        return d.g();
      }
      paramVarArgs = GraphRequest.a(c, d);
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      e = paramVarArgs;
    }
    return null;
  }
  
  protected void a(List<GraphResponse> paramList)
  {
    super.onPostExecute(paramList);
    if (e != null) {
      Log.d(a, String.format("onPostExecute: exception encountered during request: %s", new Object[] { e.getMessage() }));
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (d.c() == null) {
      d.a(new Handler());
    }
  }
  
  public String toString()
  {
    return "{RequestAsyncTask: " + " connection: " + c + ", requests: " + d + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */