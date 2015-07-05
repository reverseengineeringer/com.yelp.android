package com.yelp.android.ui.activities.leaderboard;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.Royal;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.WebImageView;

public class g
  extends au<Royal>
{
  private SparseArray<CharSequence> a = new SparseArray(10);
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof h)) {}
    }
    else
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903322, paramViewGroup, false);
      localView.setTag(new h(localView));
    }
    Resources localResources = localView.getContext().getResources();
    h localh = (h)localView.getTag();
    Royal localRoyal = (Royal)getItem(paramInt);
    d.setText(localRoyal.getUser().getName());
    if ((localRoyal.getLocationName() != null) && (!localRoyal.getLocationName().equalsIgnoreCase("")))
    {
      a.setVisibility(0);
      a.setText(localRoyal.getLocationName());
    }
    for (;;)
    {
      c.reset();
      c.setImageUrl(localRoyal.getUser().getUserPhotoUrl());
      paramViewGroup = (CharSequence)a.get(paramInt);
      paramView = paramViewGroup;
      if (paramViewGroup == null)
      {
        paramView = Html.fromHtml(localResources.getQuantityString(2131623948, localRoyal.getDukedomCount(), new Object[] { Integer.valueOf(localRoyal.getDukedomCount()) }));
        a.append(paramInt, paramView);
      }
      b.setText(paramView);
      localh.a(localRoyal.getUser());
      return localView;
      a.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */