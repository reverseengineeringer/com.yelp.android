package com.yelp.android.ui.activities.notifications;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.yelp.android.serializable.Alert;
import com.yelp.android.ui.util.au;

public class a
  extends au<Alert>
{
  private final e a;
  
  public a(e parame)
  {
    a = parame;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903239, paramViewGroup, false);
      localView.setTag(new f(localView));
    }
    paramView = (f)localView.getTag();
    paramViewGroup = (Alert)getItem(paramInt);
    paramView.a(paramViewGroup);
    if (a.getVisibility() == 0) {
      a.setOnClickListener(new b(this, paramViewGroup, paramInt));
    }
    if (paramViewGroup.getVideo() != null) {
      c.setOnClickListener(new c(this, paramViewGroup));
    }
    while (paramViewGroup.getPhoto() == null) {
      return localView;
    }
    c.setOnClickListener(new d(this, paramViewGroup));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */