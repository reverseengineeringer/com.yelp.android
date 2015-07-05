package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;

public class c
  extends j
{
  public static final aa a = a("nearterms").a(new p("nearterm", ColumnType.TEXT)).a("nearterms_term_idx", new String[] { "nearterm" }).a();
  
  public c(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    super("nearterms", "nearterm", paramAsyncTask);
  }
  
  public static final y a()
  {
    return a(a, "nearterm");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */