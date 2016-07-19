package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.w;
import java.util.Collections;
import java.util.List;

final class WhatsAnElite$a
  extends w<User.EliteYear>
{
  public WhatsAnElite$a(List<User.EliteYear> paramList)
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
      localView = LayoutInflater.from(localContext).inflate(2130903391, paramViewGroup, false);
    }
    paramView = (EliteBadge)localView.findViewById(2131690639);
    paramViewGroup = (User.EliteYear)getItem(paramInt);
    paramView.setYear(a);
    ar.a(paramView, b.getBackground());
    ((TextView)localView.findViewById(2131690640)).setText(localContext.getString(2131165830, new Object[] { Integer.valueOf(getItema) }));
    return localView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.WhatsAnElite.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */