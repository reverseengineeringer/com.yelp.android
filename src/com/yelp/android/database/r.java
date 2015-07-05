package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.aa;

public final class r
  extends aa<SQLiteOpenHelper, Void, SQLiteDatabase>
{
  private t[] a;
  private long b;
  
  protected SQLiteDatabase a(SQLiteOpenHelper... paramVarArgs)
  {
    int i = 0;
    paramVarArgs = paramVarArgs[0].getWritableDatabase();
    YelpLog.i(this, String.format("Took %s ms to load the databases", new Object[] { Long.valueOf(SystemClock.elapsedRealtime() - b) }));
    t[] arrayOft = a;
    int j = arrayOft.length;
    while (i < j)
    {
      arrayOft[i].a(paramVarArgs);
      i += 1;
    }
    paramVarArgs.execSQL("vacuum;");
    return paramVarArgs;
  }
  
  public void a(t[] paramArrayOft)
  {
    a = paramArrayOft;
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    b = SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */