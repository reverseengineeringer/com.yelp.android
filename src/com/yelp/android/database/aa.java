package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class aa
  implements Cloneable
{
  private final String a;
  private final Map<String, p> b;
  private final Map<String, Collection<String>> c;
  
  public aa(String paramString, Map<String, p> paramMap, Map<String, Collection<String>> paramMap1)
  {
    a = paramString;
    b = Collections.unmodifiableMap(paramMap);
    c = Collections.unmodifiableMap(paramMap1);
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    String str = TextUtils.join(",", b.values());
    str = String.format("CREATE TABLE IF NOT EXISTS %s (%s)", new Object[] { a, str });
    Log.d(aa.class + "-" + a, str);
    paramSQLiteDatabase.beginTransaction();
    paramSQLiteDatabase.execSQL(str);
    b(paramSQLiteDatabase);
    paramSQLiteDatabase.setTransactionSuccessful();
    paramSQLiteDatabase.endTransaction();
  }
  
  public void b(SQLiteDatabase paramSQLiteDatabase)
  {
    if (c.isEmpty()) {
      return;
    }
    paramSQLiteDatabase.beginTransaction();
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramSQLiteDatabase.execSQL(String.format("CREATE INDEX IF NOT EXISTS %s ON %s (%s)", new Object[] { localEntry.getKey(), a, TextUtils.join(",", (Iterable)localEntry.getValue()) }));
    }
    paramSQLiteDatabase.setTransactionSuccessful();
    paramSQLiteDatabase.endTransaction();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */