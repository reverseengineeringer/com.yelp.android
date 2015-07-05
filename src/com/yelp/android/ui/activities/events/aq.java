package com.yelp.android.ui.activities.events;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cn;
import java.util.ArrayList;

public class aq
  extends au<User>
{
  public static final User a = new User(null, null, null, false, -1, -1, null);
  private String b;
  
  private View a(int paramInt, ViewGroup paramViewGroup)
  {
    if (paramInt == b()) {
      return LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903254, paramViewGroup, false);
    }
    paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903364, paramViewGroup, false);
    paramViewGroup.setTag(new cn(paramViewGroup, false));
    return paramViewGroup;
  }
  
  private int b()
  {
    return super.getCount();
  }
  
  public User a(int paramInt)
  {
    if (paramInt < b()) {
      return (User)super.getItem(paramInt);
    }
    return a;
  }
  
  public void a(ArrayList<User> paramArrayList, String paramString)
  {
    a(paramArrayList);
    b = paramString;
  }
  
  public void clear()
  {
    super.clear();
    b = null;
  }
  
  public int getCount()
  {
    if (!TextUtils.isEmpty(b)) {}
    for (int i = 1; i != 0; i = 0) {
      return super.getCount() + 1;
    }
    return super.getCount();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == b()) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup);
    }
    if (paramInt == b())
    {
      ((TextView)localView.findViewById(2131493668)).setText(b);
      return localView;
    }
    paramView = (cn)localView.getTag();
    n.setVisibility(8);
    paramView.a(a(paramInt));
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */