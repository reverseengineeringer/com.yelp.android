package com.path.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class a
  extends SQLiteOpenHelper
{
  static final c a = new c("_id", "integer", 0);
  static final c b = new c("priority", "integer", 1);
  static final c c = new c("group_id", "text", 2);
  static final c d = new c("run_count", "integer", 3);
  static final c e = new c("base_job", "byte", 4);
  static final c f = new c("created_ns", "long", 5);
  static final c g = new c("delay_until_ns", "long", 6);
  static final c h = new c("running_session_id", "long", 7);
  static final c i = new c("requires_network", "integer", 8);
  
  public a(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 3);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder", a, new c[] { b, c, d, e, f, g, h, i }));
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder"));
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */