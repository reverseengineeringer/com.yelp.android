package com.yelp.android.cd;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.f;
import com.yelp.android.database.k;
import com.yelp.android.database.m;
import com.yelp.android.database.n;

@Deprecated
public class b
  extends k
{
  public m a()
  {
    return new n("Filter").a(new f("id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new f("one_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("two_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("three_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("four_dollar", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("open", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("active_deal", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("hot_new", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("open_time", ColumnType.INTEGER, ColumnModifier.NONE)).a(new f("distance_label", ColumnType.TEXT, ColumnModifier.NONE)).a(new f("distance_radius", ColumnType.DOUBLE, ColumnModifier.NONE)).a(new f("sort", ColumnType.TEXT, ColumnModifier.NONE)).a();
  }
  
  public int b()
  {
    return 14;
  }
  
  public int c()
  {
    return 16;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */