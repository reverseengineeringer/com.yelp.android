package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.ui.util.au;
import java.util.List;

class ae
  extends au<PhotoChrome.OptionsMenuItem>
{
  LayoutInflater a;
  
  public ae(List<PhotoChrome.OptionsMenuItem> paramList, Context paramContext)
  {
    a(paramList);
    a = LayoutInflater.from(paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a.inflate(2130903054, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(2131492996);
    paramView.setText(PhotoChrome.OptionsMenuItem.a((PhotoChrome.OptionsMenuItem)getItem(paramInt)));
    paramViewGroup = (RelativeLayout.LayoutParams)paramView.getLayoutParams();
    paramViewGroup.addRule(10, 0);
    paramViewGroup.addRule(15);
    paramView.setLayoutParams(paramViewGroup);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */