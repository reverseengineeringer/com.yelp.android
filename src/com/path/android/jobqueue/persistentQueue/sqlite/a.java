package com.path.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class a
  extends SQLiteOpenHelper
{
  static final SqlHelper.b a = new SqlHelper.b("_id", "integer", 0);
  static final SqlHelper.b b = new SqlHelper.b("priority", "integer", 1);
  static final SqlHelper.b c = new SqlHelper.b("group_id", "text", 2);
  static final SqlHelper.b d = new SqlHelper.b("run_count", "integer", 3);
  static final SqlHelper.b e = new SqlHelper.b("base_job", "byte", 4);
  static final SqlHelper.b f = new SqlHelper.b("created_ns", "long", 5);
  static final SqlHelper.b g = new SqlHelper.b("delay_until_ns", "long", 6);
  static final SqlHelper.b h = new SqlHelper.b("running_session_id", "long", 7);
  static final SqlHelper.b i = new SqlHelper.b("requires_network", "integer", 8);
  static final SqlHelper.b j = new SqlHelper.b("_id", "integer", 0);
  static final SqlHelper.b k = new SqlHelper.b("job_id", "integer", 1, new SqlHelper.a("job_holder", aa));
  static final SqlHelper.b l = new SqlHelper.b("tag_name", "text", 2);
  
  public a(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 4);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder", a, new SqlHelper.b[] { b, c, d, e, f, g, h, i }));
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder_tags", j, new SqlHelper.b[] { k, l }));
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags(" + la + ")");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder"));
    paramSQLiteDatabase.execSQL(SqlHelper.a("job_holder_tags"));
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS TAG_NAME_INDEX");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */