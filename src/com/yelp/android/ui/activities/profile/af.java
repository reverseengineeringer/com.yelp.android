package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import java.util.Collections;
import java.util.List;

final class af
  extends au<User.EliteYear>
{
  public af(List<User.EliteYear> paramList)
  {
    Collections.sort(paramList, Collections.reverseOrder());
    a(paramList);
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(localContext).inflate(2130903296, paramViewGroup, false);
    }
    paramView = (EliteBadge)localView.findViewById(2131493807);
    paramViewGroup = (User.EliteYear)getItem(paramInt);
    paramView.setYear(year);
    cp.a(paramView, type.getBackground());
    ((TextView)localView.findViewById(2131493808)).setText(localContext.getString(2131165750, new Object[] { Integer.valueOf(getItemyear) }));
    return localView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */