package com.yelp.android.bb;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

public class a
  extends au<User>
  implements Filterable
{
  private ArrayList<User> a;
  private LayoutInflater b;
  
  public a(ArrayList<User> paramArrayList)
  {
    a = paramArrayList;
    a(a);
  }
  
  private void a(User paramUser, c paramc)
  {
    a.setImageUrl(paramUser.getUserPhotoUrl(), 2130837659);
    b.setText(paramUser.getUserName());
  }
  
  public Filter getFilter()
  {
    return new b(this);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (b == null) {
      b = LayoutInflater.from(paramViewGroup.getContext());
    }
    User localUser = (User)getItem(paramInt);
    if (paramView == null)
    {
      paramView = b.inflate(2130903287, paramViewGroup, false);
      paramViewGroup = new c(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      a(localUser, paramViewGroup);
      return paramView;
      paramViewGroup = (c)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */