package com.yelp.android.database;

public class p
{
  private final String a;
  private final ColumnType b;
  private final ColumnModifier c;
  
  public p(String paramString, ColumnType paramColumnType)
  {
    this(paramString, paramColumnType, ColumnModifier.NONE);
  }
  
  public p(String paramString, ColumnType paramColumnType, ColumnModifier paramColumnModifier)
  {
    a = paramString;
    b = paramColumnType;
    c = paramColumnModifier;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a);
    localStringBuilder.append(" ");
    localStringBuilder.append(b.getSQLRepresentation());
    if (c != ColumnModifier.NONE)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(c.getSQLRepresentation());
    }
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    return b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */