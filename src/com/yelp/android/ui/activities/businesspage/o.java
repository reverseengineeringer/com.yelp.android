package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.YelpBusiness;

public abstract interface o
{
  public abstract int getIcon(Context paramContext, YelpBusiness paramYelpBusiness);
  
  public abstract String getIconUrl(YelpBusiness paramYelpBusiness);
  
  public abstract String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness);
  
  public abstract int getTintColor();
  
  public abstract CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness);
  
  public abstract int getTitleColor();
  
  public abstract boolean isSubtitleExpanded();
  
  public abstract boolean shouldShow(YelpBusiness paramYelpBusiness);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */