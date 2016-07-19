package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.gz;

public class h$a
  extends SQLiteOpenHelper
{
  public h$a(h paramh, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 4);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(h.d());
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    gz.c("Database updated from version " + paramInt1 + " to version " + paramInt2);
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */