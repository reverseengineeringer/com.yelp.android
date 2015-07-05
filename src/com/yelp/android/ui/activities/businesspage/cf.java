package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.graphics.Color;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.YelpBusiness;

public abstract class cf
  implements o
{
  private final SearchAction a;
  
  public cf(SearchAction paramSearchAction)
  {
    a = paramSearchAction;
  }
  
  public SearchAction a()
  {
    return a;
  }
  
  public int getIcon(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return 0;
  }
  
  public String getIconUrl(YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public int getTintColor()
  {
    int[] arrayOfInt = a.getTextColor();
    return Color.rgb(arrayOfInt[0], arrayOfInt[1], arrayOfInt[2]);
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public int getTitleColor()
  {
    return 0;
  }
  
  public boolean isSubtitleExpanded()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */