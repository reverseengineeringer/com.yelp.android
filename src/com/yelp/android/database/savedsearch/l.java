package com.yelp.android.database.savedsearch;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.y;

public class l
  extends y
{
  public aa a()
  {
    return new ab("Saved_Search").a(new p("id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("term", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("last_accessed_time", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("filter_id", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a();
  }
  
  public int b()
  {
    return 14;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */