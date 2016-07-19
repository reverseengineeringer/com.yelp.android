package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.List;

public class FavoritesList
  extends _FavoritesList
{
  public static final JsonParser.DualCreator<FavoritesList> CREATOR = new FavoritesList.1();
  
  public void a(List<YelpBusiness> paramList)
  {
    a.addAll(paramList);
  }
  
  public void b(List<YelpBusinessReview> paramList)
  {
    b.addAll(paramList);
  }
  
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
        if (!(paramObject instanceof FavoritesList)) {
          return false;
        }
        paramObject = (FavoritesList)paramObject;
        if (f != null) {
          break;
        }
      } while (f == null);
      return false;
    } while (f.equals(f));
    return false;
  }
  
  public int hashCode()
  {
    if (f == null) {}
    for (int i = 0;; i = f.hashCode()) {
      return i + 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.FavoritesList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */