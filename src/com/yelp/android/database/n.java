package com.yelp.android.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.util.Pair;
import com.yelp.android.util.aa;
import java.io.IOException;
import java.util.Collection;
import java.util.Set;

final class n
  extends aa<Pair<Context, String>, String, SQLiteDatabase>
{
  o a;
  private final Set<String> b;
  private final Collection<String> d;
  
  public n(Set<String> paramSet, Collection<String> paramCollection)
  {
    b = paramSet;
    d = paramCollection;
  }
  
  protected SQLiteDatabase a(Pair<Context, String>... paramVarArgs)
  {
    SystemClock.elapsedRealtime();
    Object localObject1 = paramVarArgs[0];
    paramVarArgs = (String)second;
    Object localObject4 = (Context)first;
    localObject1 = new o((Context)localObject4, paramVarArgs, d);
    try
    {
      ((o)localObject1).a((Context)localObject4);
      localObject4 = ((o)localObject1).a();
      ((SQLiteDatabase)localObject4).execSQL(m.d());
      boolean bool;
      m.b(paramVarArgs);
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        try
        {
          paramVarArgs = ((SQLiteDatabase)localObject4).query("categories", new String[] { "title" }, null, null, null, null, "title");
        }
        finally {}
        try
        {
          if (paramVarArgs.moveToFirst())
          {
            publishProgress(new String[] { paramVarArgs.getString(0) });
            bool = paramVarArgs.moveToNext();
            if (bool) {
              continue;
            }
          }
          m.b(paramVarArgs);
          a = ((o)localObject1);
          return (SQLiteDatabase)localObject4;
        }
        finally
        {
          for (;;) {}
        }
      }
      paramVarArgs = paramVarArgs;
      throw new IllegalStateException("Unable to load database", paramVarArgs);
    }
    throw ((Throwable)localObject2);
  }
  
  protected void a(String... paramVarArgs)
  {
    super.onProgressUpdate(paramVarArgs);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      b.add(str);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */