package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;

public class d
  extends c
{
  public static final m a = a("searchterms").a(new f("searchterm", ColumnType.TEXT)).a("searchterms_term_idx", new String[] { "searchterm" }).a();
  
  public d(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    super("searchterms", "searchterm", paramAsyncTask);
  }
  
  public static i a()
  {
    return a(a, "searchterm");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */