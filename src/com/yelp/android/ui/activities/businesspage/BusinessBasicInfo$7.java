package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.Movie;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.List;

 enum BusinessBasicInfo$7
{
  BusinessBasicInfo$7(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = paramYelpBusiness.getMovies();
    switch (paramYelpBusiness.size())
    {
    default: 
      return paramContext.getString(2131166131, new Object[] { ((Movie)paramYelpBusiness.get(0)).getTitle(), ((Movie)paramYelpBusiness.get(1)).getTitle(), ((Movie)paramYelpBusiness.get(2)).getTitle(), Integer.valueOf(paramYelpBusiness.size() - 3) });
    case 1: 
      return ((Movie)paramYelpBusiness.get(0)).getTitle();
    case 2: 
      return paramContext.getString(2131166854, new Object[] { ((Movie)paramYelpBusiness.get(0)).getTitle(), ((Movie)paramYelpBusiness.get(1)).getTitle() });
    }
    return paramContext.getString(2131166858, new Object[] { ((Movie)paramYelpBusiness.get(0)).getTitle(), ((Movie)paramYelpBusiness.get(1)).getTitle(), ((Movie)paramYelpBusiness.get(2)).getTitle() });
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramContext.getString(2131166734);
  }
  
  public boolean isSubtitleExpanded()
  {
    return true;
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return (paramYelpBusiness.getMovies() != null) && (paramYelpBusiness.getMovies().size() > 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */