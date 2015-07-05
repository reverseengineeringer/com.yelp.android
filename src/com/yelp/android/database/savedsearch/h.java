package com.yelp.android.database.savedsearch;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.y;

public class h
  extends y
{
  public aa a()
  {
    return new ab("Attribute_Filter").a(new p("id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new p("api_tag", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("localized_label", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new p("filter_id", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a();
  }
  
  public int b()
  {
    return 14;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */