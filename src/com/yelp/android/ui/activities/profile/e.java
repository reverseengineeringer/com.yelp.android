package com.yelp.android.ui.activities.profile;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.b;
import com.yelp.android.ui.util.g;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.SpannableWidget;

public final class e<Type>
  extends BaseAdapter
  implements ListAdapter, g
{
  private final w<Type> a;
  private final int b;
  private final int c;
  private final int d;
  private int e;
  private int f;
  
  public e(w<Type> paramw, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramw;
    c = paramInt2;
    d = paramInt3;
    b = paramInt1;
    a.registerDataSetObserver(new b(this));
  }
  
  private final boolean a(int paramInt)
  {
    return (b()) && (paramInt == 0);
  }
  
  private final boolean b()
  {
    return c > 0;
  }
  
  private final boolean b(int paramInt)
  {
    return (c()) && (paramInt == getCount() - 1);
  }
  
  private final int c(int paramInt)
  {
    int i = 0;
    if (b()) {
      i = 1;
    }
    return paramInt - i;
  }
  
  private final boolean c()
  {
    return d > 0;
  }
  
  public w<Type> a()
  {
    return a;
  }
  
  public boolean areAllItemsEnabled()
  {
    return (!b()) && (!c()) && (a.areAllItemsEnabled());
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public int getCount()
  {
    if (b()) {}
    for (int i = 1;; i = 0)
    {
      int j = i;
      if (c()) {
        j = i + 1;
      }
      if (a.isEmpty()) {
        return 0;
      }
      return a.getCount() + j;
    }
  }
  
  public Type getItem(int paramInt)
  {
    if ((a(paramInt)) || (b(paramInt))) {
      return null;
    }
    return (Type)a.getItem(c(paramInt));
  }
  
  public long getItemId(int paramInt)
  {
    if ((a(paramInt)) || (b(paramInt))) {
      return 0L;
    }
    return a.getItemId(c(paramInt));
  }
  
  public int getItemViewType(int paramInt)
  {
    if (a(paramInt)) {
      return e;
    }
    if (b(paramInt)) {
      return f;
    }
    return a.getItemViewType(c(paramInt));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool2 = true;
    int i;
    int j;
    int k;
    if ((a(paramInt)) || (b(paramInt)))
    {
      i = 1;
      if (i == 0) {
        break label197;
      }
      paramView = new LinearLayout(paramViewGroup.getContext());
      paramView.setLayoutParams(new AbsListView.LayoutParams(ar.a()));
      paramView.setVisibility(4);
      j = d;
      if (!a(paramInt)) {
        break label233;
      }
      k = c;
      j = 0;
    }
    for (;;)
    {
      paramView.setPadding(0, k, 0, j);
      label91:
      if (i == 0)
      {
        paramInt = c(paramInt);
        paramViewGroup = (SpannableWidget)paramView.findViewById(b);
        if (paramInt != 0) {
          break label215;
        }
        bool1 = true;
        label121:
        paramViewGroup.setLeft(bool1);
        if (paramInt != a.getCount() - 1) {
          break label221;
        }
        bool1 = true;
        label145:
        paramViewGroup.setRight(bool1);
        if ((paramInt == 0) || (paramInt == a.getCount() - 1)) {
          break label227;
        }
      }
      label197:
      label215:
      label221:
      label227:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        paramViewGroup.setMiddle(bool1);
        ((View)paramViewGroup).refreshDrawableState();
        return paramView;
        i = 0;
        break;
        paramView = a.getView(c(paramInt), paramView, paramViewGroup);
        break label91;
        bool1 = false;
        break label121;
        bool1 = false;
        break label145;
      }
      label233:
      k = 0;
    }
  }
  
  public int getViewTypeCount()
  {
    int j = a.getViewTypeCount();
    int i = j;
    if (b())
    {
      e = j;
      i = j + 1;
    }
    j = i;
    if (c())
    {
      f = i;
      j = i + 1;
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    if ((a(paramInt)) || (b(paramInt))) {
      return false;
    }
    return a.isEnabled(c(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */