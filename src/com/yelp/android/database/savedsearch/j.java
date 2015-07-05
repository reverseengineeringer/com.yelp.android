package com.yelp.android.database.savedsearch;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.y;

public class j
  extends y
{
  public aa a()
  {
    return new ab("Filter").a(new p("id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("one_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("two_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("three_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("four_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("open", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("active_deal", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("hot_new", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new p("open_time", ColumnType.INTEGER, ColumnModifier.NONE)).a(new p("distance_label", ColumnType.TEXT, ColumnModifier.NONE)).a(new p("distance_radius", ColumnType.DOUBLE, ColumnModifier.NONE)).a(new p("sort", ColumnType.TEXT, ColumnModifier.NONE)).a();
  }
  
  public int b()
  {
    return 14;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */