package com.yelp.android.db;

import java.util.Iterator;
import java.util.List;

public class k
{
  public final int a;
  public final int b;
  public final int c;
  public final int d;
  public final List<j> e;
  
  public k(int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<j> paramList)
  {
    a = paramInt1;
    b = paramInt4;
    c = paramInt2;
    d = paramInt3;
    e = paramList;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Users [count=").append(a).append(", total=").append(b).append(", start=").append(c).append(", display=").append(d);
    localStringBuilder.append(", userList=");
    if ((e != null) && (e.size() > 0))
    {
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append((j)localIterator.next()).append(",").append(System.getProperty("line.separator"));
      }
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("null or empty");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.db.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */