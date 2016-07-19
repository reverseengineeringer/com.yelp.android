package com.yelp.android.bl;

import java.util.Collection;
import java.util.Iterator;

class a$a$a
{
  Long a;
  boolean b;
  Collection<String> c;
  
  private a$a$a(boolean paramBoolean, Long paramLong, Collection<String> paramCollection)
  {
    a = paramLong;
    b = paramBoolean;
    c = paramCollection;
  }
  
  private boolean a(Collection<String> paramCollection)
  {
    if (c == paramCollection) {
      return true;
    }
    if ((c == null) || (paramCollection == null)) {
      return false;
    }
    if (c.size() != paramCollection.size()) {
      return false;
    }
    Iterator localIterator = c.iterator();
    paramCollection = paramCollection.iterator();
    while (localIterator.hasNext()) {
      if (!((String)localIterator.next()).equals(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  private boolean a(boolean paramBoolean, Collection<String> paramCollection)
  {
    return (b == paramBoolean) && (a(paramCollection));
  }
  
  public void a(boolean paramBoolean, Long paramLong, Collection<String> paramCollection)
  {
    a = paramLong;
    b = paramBoolean;
    c = paramCollection;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bl.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */