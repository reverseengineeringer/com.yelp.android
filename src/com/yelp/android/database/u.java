package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import java.util.concurrent.ExecutionException;

public class u
  extends AsyncTask<Void, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final w b;
  private final v c;
  private boolean d;
  private Object e;
  
  public u(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask, w paramw, v paramv)
  {
    a = paramAsyncTask;
    b = paramw;
    c = paramv;
    d = false;
    e = null;
  }
  
  private static void a(Exception paramException)
  {
    YelpLog.e(AppData.b(), paramException.getMessage(), paramException);
  }
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = (SQLiteDatabase)a.get();
      e = c.a(paramVarArgs);
      return null;
    }
    catch (InterruptedException paramVarArgs)
    {
      for (;;)
      {
        d = true;
        a(paramVarArgs);
      }
    }
    catch (ExecutionException paramVarArgs)
    {
      for (;;)
      {
        d = true;
        a(paramVarArgs);
      }
    }
  }
  
  public void a(Void paramVoid)
  {
    if (b != null)
    {
      if (d) {
        b.b();
      }
    }
    else {
      return;
    }
    b.a(e);
  }
  
  public void onPreExecute()
  {
    if (b != null) {
      b.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */