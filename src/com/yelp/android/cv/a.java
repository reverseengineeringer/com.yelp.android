package com.yelp.android.cv;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.da.b;
import jp.line.android.sdk.c;

public final class a
{
  private static a a;
  private com.yelp.android.db.a b;
  
  public static final a a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new a();
      }
      return a;
    }
    finally {}
  }
  
  private static SharedPreferences d()
  {
    return c.a().a().getSharedPreferences("linesdk-2", 0);
  }
  
  public final boolean a(com.yelp.android.db.a parama)
  {
    if (parama == null) {}
    try
    {
      c();
      return false;
    }
    catch (Throwable parama) {}
    try
    {
      Object localObject = d();
      com.yelp.android.da.a locala = b.a();
      Context localContext = c.a().a();
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putString("1", locala.a(localContext, 3455546, a));
      ((SharedPreferences.Editor)localObject).putString("2", locala.a(localContext, 3455546, b));
      ((SharedPreferences.Editor)localObject).putLong("3", c);
      ((SharedPreferences.Editor)localObject).putString("4", locala.a(localContext, 3455546, d));
      ((SharedPreferences.Editor)localObject).commit();
      b = parama;
      return true;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
    return false;
  }
  
  public final com.yelp.android.db.a b()
  {
    Object localObject3 = null;
    if (b == null) {}
    try
    {
      if (b == null)
      {
        Object localObject4 = d();
        com.yelp.android.da.a locala = b.a();
        Context localContext = c.a().a();
        String str1 = locala.b(localContext, 3455546, ((SharedPreferences)localObject4).getString("1", null));
        Object localObject1 = localObject3;
        if (str1 != null)
        {
          String str2 = locala.b(localContext, 3455546, ((SharedPreferences)localObject4).getString("2", null));
          long l = ((SharedPreferences)localObject4).getLong("3", -1L);
          localObject4 = locala.b(localContext, 3455546, ((SharedPreferences)localObject4).getString("4", null));
          localObject1 = localObject3;
          if (str1 != null)
          {
            localObject1 = localObject3;
            if (str2 != null) {
              localObject1 = new com.yelp.android.db.a(str1, str2, l, (String)localObject4);
            }
          }
        }
        b = ((com.yelp.android.db.a)localObject1);
      }
      return b;
    }
    finally {}
  }
  
  public final boolean c()
  {
    try
    {
      d().edit().clear().commit();
      b = null;
      return true;
    }
    catch (Throwable localThrowable)
    {
      return false;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */