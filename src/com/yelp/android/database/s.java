package com.yelp.android.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.yelp.android.ay.e;
import com.yelp.android.ay.i;
import com.yelp.android.database.savedsearch.h;
import com.yelp.android.database.savedsearch.j;

class s
  extends SQLiteOpenHelper
{
  public static final y[] a = { c.a(), l.a(), d.d(), com.yelp.android.ax.a.e(), com.yelp.android.ay.a.a(), e.a(), com.yelp.android.database.savedsearch.c.a(), new j(), new h(), AdapterNearbyFilters.a(), i.a() };
  private int b;
  
  public s(Context paramContext)
  {
    this(paramContext, 15);
  }
  
  public s(Context paramContext, int paramInt)
  {
    super(paramContext, "yelp", null, paramInt);
    b = paramInt;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    y[] arrayOfy = a;
    int j = arrayOfy.length;
    int i = 0;
    while (i < j)
    {
      y localy = arrayOfy[i];
      if (!localy.a(b)) {
        localy.a().a(paramSQLiteDatabase);
      }
      i += 1;
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    y[] arrayOfy = a;
    int j = arrayOfy.length;
    int i = 0;
    if (i < j)
    {
      y localy = arrayOfy[i];
      aa localaa = localy.a();
      if (localy.c(paramInt1)) {
        localaa.b(paramSQLiteDatabase);
      }
      for (;;)
      {
        i += 1;
        break;
        if (localy.b(paramInt1))
        {
          localy.a(paramInt1, paramInt2, paramSQLiteDatabase);
        }
        else if (localy.d(paramInt1))
        {
          paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + localaa.a());
          localaa.a(paramSQLiteDatabase);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */