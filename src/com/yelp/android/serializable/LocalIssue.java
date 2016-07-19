package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class LocalIssue
  extends _LocalIssue
{
  public static final JsonParser.DualCreator<LocalIssue> CREATOR = new LocalIssue.1();
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof LocalIssue)) {
          return false;
        }
        paramObject = (LocalIssue)paramObject;
        if (d != null) {
          break;
        }
      } while (d == null);
      return false;
    } while (d.equals(d));
    return false;
  }
  
  public int hashCode()
  {
    if (d == null) {}
    for (int i = 0;; i = d.hashCode()) {
      return i + 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalIssue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */