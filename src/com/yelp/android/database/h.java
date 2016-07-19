package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import java.util.concurrent.ExecutionException;

public class h
  extends AsyncTask<Void, Void, Void>
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final b b;
  private final a c;
  private boolean d;
  private Object e;
  
  public h(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask, b paramb, a parama)
  {
    a = paramAsyncTask;
    b = paramb;
    c = parama;
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
  
  public static abstract interface a
  {
    public abstract Object a(SQLiteDatabase paramSQLiteDatabase);
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(Object paramObject);
    
    public abstract void b();
  }
  
  public static abstract class c
    implements h.b
  {
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */