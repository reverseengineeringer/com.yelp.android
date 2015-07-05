package com.yelp.android.database;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;

public class l
  extends j
{
  public static final aa a = a("searchterms").a(new p("searchterm", ColumnType.TEXT)).a("searchterms_term_idx", new String[] { "searchterm" }).a();
  
  public l(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    super("searchterms", "searchterm", paramAsyncTask);
  }
  
  public static y a()
  {
    return a(a, "searchterm");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */