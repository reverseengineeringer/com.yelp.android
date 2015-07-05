package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.savedsearch.c;
import com.yelp.android.database.savedsearch.h;
import com.yelp.android.database.savedsearch.j;
import com.yelp.android.database.savedsearch.k;
import java.util.Iterator;
import java.util.List;

final class a
  extends y
{
  public aa a()
  {
    return AdapterNearbyFilters.a;
  }
  
  public void a(int paramInt1, int paramInt2, SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject3 = new AdapterNearbyFilters(paramSQLiteDatabase);
    z localz = new z(AdapterNearbyFilters.a, paramSQLiteDatabase);
    Object localObject1 = c.a().a();
    Object localObject4 = new j().a();
    Object localObject2 = new h().a();
    ((aa)localObject1).a(paramSQLiteDatabase);
    ((aa)localObject4).a(paramSQLiteDatabase);
    ((aa)localObject2).a(paramSQLiteDatabase);
    localObject3 = ((AdapterNearbyFilters)localObject3).a(AppData.b().getApplicationContext());
    localObject1 = new z((aa)localObject1, paramSQLiteDatabase);
    localObject4 = new z((aa)localObject4, paramSQLiteDatabase);
    paramSQLiteDatabase = new z((aa)localObject2, paramSQLiteDatabase);
    localObject2 = ((List)localObject3).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (b)((Iterator)localObject2).next();
      new k(b, a, c).a((z)localObject1, (z)localObject4, paramSQLiteDatabase);
    }
    localz.b();
  }
  
  public boolean a(int paramInt)
  {
    return paramInt >= c.a().b();
  }
  
  public int b()
  {
    return 11;
  }
  
  public boolean b(int paramInt)
  {
    return (paramInt >= b()) && (paramInt < c.a().b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */