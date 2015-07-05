package com.yelp.android.ui.activities.deals;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.util.au;

class l
  extends au<String>
{
  l(ActivityDealRedemption paramActivityDealRedemption) {}
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(a).inflate(2130903292, paramViewGroup, false);
    }
    ((TextView)localView.findViewById(2131493145)).setText((CharSequence)getItem(paramInt));
    localView.setClickable(false);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */