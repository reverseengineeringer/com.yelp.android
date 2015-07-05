package com.yelp.android.ui.panels;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.feed.au;
import com.yelp.android.ui.activities.feed.c;
import com.yelp.android.ui.util.i;
import com.yelp.android.ui.util.j;

public abstract class a
  extends BaseAdapter
  implements i, j
{
  private final LayoutInflater a;
  
  public a(Context paramContext)
  {
    a = LayoutInflater.from(paramContext);
  }
  
  public LayoutInflater a()
  {
    return a;
  }
  
  public void a(int paramInt, c paramc)
  {
    YelpBusiness localYelpBusiness = a(paramInt);
    paramc.a(0, null, localYelpBusiness.getDisplayName(), null);
    paramc.a(localYelpBusiness.getPhotoUrl(), localYelpBusiness.getAvgRating(), -1, localYelpBusiness.getReviewCount(), localYelpBusiness.getCategoryForBusinessSearchResult());
  }
  
  public Object getItem(int paramInt)
  {
    return a(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof au)) {}
    }
    else
    {
      localView = a.inflate(2130903313, paramViewGroup, false);
      localView.setTag(new au(FeedType.USER, localView));
    }
    a(paramInt, (au)localView.getTag());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */