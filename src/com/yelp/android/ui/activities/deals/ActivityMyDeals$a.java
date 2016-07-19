package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;

public final class ActivityMyDeals$a
  extends w<Integer>
{
  public ActivityMyDeals$a(ArrayList<Integer> paramArrayList)
  {
    a(paramArrayList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(localContext).inflate(2130903461, paramViewGroup, false);
    }
    ((TextView)localView.findViewById(2131690705)).setText(localContext.getText(((Integer)getItem(paramInt)).intValue()));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */