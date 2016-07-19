package com.yelp.android.database;

@Deprecated
public class j
  extends k
{
  public static final m a = new n("saved_nearby").a(new f("_id", ColumnType.INTEGER, ColumnModifier.PRIMARY_KEY_AUTOINCREMENT)).a(new f("term", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a(new f("filter_exists", ColumnType.INTEGER, ColumnModifier.NOT_NULL)).a(new f("prices", ColumnType.INTEGER)).a(new f("open", ColumnType.INTEGER)).a(new f("radius", ColumnType.TEXT)).a(new f("radius_label", ColumnType.TEXT)).a(new f("sort_ordinal", ColumnType.INTEGER)).a(new f("attributes", ColumnType.TEXT)).a();
  
  public m a()
  {
    return a;
  }
  
  public int b()
  {
    return 11;
  }
  
  public int c()
  {
    return 16;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */