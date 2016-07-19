package com.yelp.android.cd;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.f;
import com.yelp.android.database.k;
import com.yelp.android.database.m;
import com.yelp.android.database.n;

@Deprecated
public class a
  extends k
{
  public m a()
  {
    return new n("Attribute_Filter").a(new f("id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new f("api_tag", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("localized_label", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("filter_id", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a();
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
 * Qualified Name:     com.yelp.android.cd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */