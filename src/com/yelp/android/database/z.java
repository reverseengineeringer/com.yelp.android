package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

public class z
{
  protected final String a;
  protected final SQLiteDatabase b;
  
  public z(aa paramaa, SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramaa, paramSQLiteDatabase);
    a = paramaa.a();
    b = paramSQLiteDatabase;
  }
  
  private void a(aa paramaa, SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramaa == null) {
      throw new IllegalArgumentException("You tried to create a new Table instance with a null tableDescriptor parameter.");
    }
    if (TextUtils.isEmpty(paramaa.a())) {
      throw new IllegalArgumentException("You tried to create a new Table instance with a tableDescriptor without a name.");
    }
    if (paramSQLiteDatabase == null) {
      throw new IllegalArgumentException("You attempted to create a new Table instance with a null database parameter.");
    }
    if (!paramSQLiteDatabase.isOpen()) {
      throw new IllegalArgumentException("You attempted to create a new Table instance with a closed database parameter.");
    }
  }
  
  private Cursor d(String paramString1, String paramString2)
  {
    return b.rawQuery("SELECT * FROM " + a + " WHERE " + paramString1 + " = ?", new String[] { paramString2 });
  }
  
  public long a(ContentValues paramContentValues)
  {
    return b.insert(a, null, paramContentValues);
  }
  
  public Cursor a(String paramString1, String paramString2)
  {
    paramString1 = d(paramString1, paramString2);
    paramString1.moveToFirst();
    paramString1.getCount();
    return paramString1;
  }
  
  public String a(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (c(paramString1, paramString2))
    {
      b.update(a, paramContentValues, paramString1 + " = ?", new String[] { paramString2 });
      return paramString2;
    }
    return String.valueOf(a(paramContentValues));
  }
  
  public void a()
  {
    b.delete(a, null, null);
  }
  
  public void b()
  {
    b.execSQL("DROP TABLE IF EXISTS " + a);
  }
  
  public void b(String paramString1, String paramString2)
  {
    b.delete(a, paramString1 + " = ?", new String[] { paramString2 });
  }
  
  public boolean c(String paramString1, String paramString2)
  {
    boolean bool = true;
    paramString1 = d(paramString1, paramString2);
    if (paramString1.getCount() == 1) {}
    for (;;)
    {
      paramString1.close();
      return bool;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */