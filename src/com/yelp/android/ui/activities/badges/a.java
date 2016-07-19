package com.yelp.android.ui.activities.badges;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yelp.android.serializable.Badge;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.g;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.List;

public class a
  extends BaseAdapter
  implements g
{
  private final LayoutInflater a;
  private final b.a b;
  private List<Badge> c;
  
  public a(Context paramContext, b.a parama)
  {
    a = LayoutInflater.from(paramContext);
    b = parama;
  }
  
  public Badge a(int paramInt)
  {
    return (Badge)c.get(paramInt);
  }
  
  public void a(List<Badge> paramList)
  {
    c = paramList;
    notifyDataSetChanged();
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public void clear()
  {
    if (c != null)
    {
      c.clear();
      notifyDataSetInvalidated();
    }
  }
  
  public int getCount()
  {
    if (c == null) {
      return 0;
    }
    return c.size();
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
      localView = a.inflate(2130903138, paramViewGroup, false);
      localView.setTag(new a.a(localView));
    }
    paramView = (a.a)localView.getTag();
    Badge localBadge = (Badge)c.get(paramInt);
    b.setText(localBadge.l());
    if (!localBadge.d())
    {
      a.setImageResource(2130838934);
      return localView;
    }
    if (!ar.a(paramViewGroup.getContext(), a, localBadge.f()))
    {
      paramViewGroup = localBadge.h();
      if (paramViewGroup == null) {
        break label155;
      }
      a.setImageUrl(paramViewGroup);
    }
    while (localBadge.c() > 0.0D)
    {
      a.setColorFilter(localBadge.a(), PorterDuff.Mode.SRC_ATOP);
      return localView;
      label155:
      a.setImageResource(2130838934);
    }
    a.setColorFilter(null);
    return localView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return (b.e()) && (((Badge)c.get(paramInt)).d());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */