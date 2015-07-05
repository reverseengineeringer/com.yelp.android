package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yelp.android.serializable.Badge;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.j;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;

class f
  extends BaseAdapter
  implements j
{
  LayoutInflater a;
  ArrayList<Badge> b;
  boolean c;
  
  private f(Context paramContext, ArrayList<Badge> paramArrayList, boolean paramBoolean)
  {
    a = LayoutInflater.from(paramContext);
    b = paramArrayList;
    c = paramBoolean;
  }
  
  private void a(TextView paramTextView)
  {
    a(paramTextView, 2130837632, 2131165806, 2130837633);
  }
  
  private void a(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      paramTextView.setBackgroundDrawable(paramTextView.getContext().getResources().getDrawable(paramInt1));
      paramTextView.setText("");
      paramTextView.setVisibility(0);
      return;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;)
      {
        paramTextView.setText(paramInt2);
        paramTextView.setBackgroundResource(paramInt3);
      }
    }
  }
  
  private void b(TextView paramTextView)
  {
    a(paramTextView, 2130837638, 2131165281, 2130837639);
  }
  
  public Badge a(int paramInt)
  {
    return (Badge)b.get(paramInt);
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public void clear()
  {
    b.clear();
    notifyDataSetInvalidated();
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = a.inflate(2130903126, paramViewGroup, false);
      localView.setTag(new g(localView));
    }
    paramView = (g)localView.getTag();
    Badge localBadge = (Badge)b.get(paramInt);
    c.setText(localBadge.getTitle());
    if (localBadge.isNew()) {
      b(b);
    }
    while (!localBadge.isAssigned())
    {
      a.setImageResource(2130838524);
      return localView;
      if (localBadge.getExpirePercent() > 0.0F) {
        a(b);
      } else {
        b.setVisibility(8);
      }
    }
    if (!cp.a(paramViewGroup.getContext(), a, localBadge.getImageSmallPath()))
    {
      paramViewGroup = localBadge.getImageSmallUrl();
      if (paramViewGroup == null) {
        break label202;
      }
      a.setImageUrl(paramViewGroup);
    }
    while (localBadge.getExpirePercent() > 0.0F)
    {
      a.setColorFilter(localBadge.getExpireFadeTint(), PorterDuff.Mode.SRC_ATOP);
      return localView;
      label202:
      a.setImageResource(2130838524);
    }
    a.setColorFilter(null);
    return localView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    if (c) {
      return false;
    }
    return ((Badge)b.get(paramInt)).isAssigned() == true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */