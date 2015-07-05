package com.yelp.android.ui.activities.reviews;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;

public class x
  extends au<YelpBusiness>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    YelpBusiness localYelpBusiness = (YelpBusiness)getItem(paramInt);
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903250, paramViewGroup, false);
      paramViewGroup = new y(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      y.a(paramViewGroup).setImageUrl(localYelpBusiness.getPhotoUrl(), 2130837648);
      y.b(paramViewGroup).setText(localYelpBusiness.getDisplayName());
      y.c(paramViewGroup).setText(localYelpBusiness.getAddressForBusinessSearchResult());
      return paramView;
      paramViewGroup = (y)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */