package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class a
  extends au<ActionToTry>
{
  private final int a;
  
  public a(Collection<ActionToTry> paramCollection, User paramUser, int paramInt)
  {
    paramCollection = new ArrayList(paramCollection);
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      if (!((ActionToTry)localIterator.next()).shouldTry(paramUser)) {
        localIterator.remove();
      }
    }
    a = paramInt;
    a(paramCollection);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903383, paramViewGroup, false);
      localView.setTag(localView.findViewById(2131492893));
    }
    paramView = (TextView)localView.getTag();
    ActionToTry localActionToTry = (ActionToTry)getItem(paramInt);
    paramView.setText(UserProfileView.a(paramViewGroup.getContext().getString(titleRes), a));
    paramView.setCompoundDrawablesWithIntrinsicBounds(iconRes, 0, 0, 0);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */