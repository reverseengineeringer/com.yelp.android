package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;

public final class s
  extends au<Integer>
{
  public s(ArrayList<Integer> paramArrayList)
  {
    a(paramArrayList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(localContext).inflate(2130903362, paramViewGroup, false);
    }
    ((TextView)localView.findViewById(2131493868)).setText(localContext.getText(((Integer)getItem(paramInt)).intValue()));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */