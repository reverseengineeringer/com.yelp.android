package com.yelp.android.ui.util;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class bs
  extends BaseAdapter
  implements j, Iterable<j>
{
  bu<bv<?>> a = new bu(null);
  private final ArrayList<bv<?>> b = new ArrayList();
  private final SparseArray<bv<?>> c = new SparseArray();
  private final Set<Integer> d = new HashSet();
  private boolean e = true;
  private boolean f = true;
  private boolean g;
  private final b h = new b(this);
  
  public bu<bv<?>> a(int paramInt, bu<bv<?>> parambu)
  {
    int m = b.size();
    int i = 0;
    bv localbv;
    int j;
    for (;;)
    {
      if (i < m)
      {
        localbv = (bv)b.get(i);
        int k = ((j)a).getCount();
        if (k == 0)
        {
          i += 1;
        }
        else
        {
          j = k;
          if (g) {
            j = k + 1;
          }
          if ((paramInt == 0) && (g)) {
            return null;
          }
          if ((paramInt == j) && (h)) {
            return null;
          }
          if (paramInt < j)
          {
            if (!g) {
              break label158;
            }
            paramInt -= 1;
          }
        }
      }
    }
    label158:
    for (;;)
    {
      return parambu.a(localbv, paramInt);
      j = paramInt - j;
      paramInt = j;
      if (!h) {
        break;
      }
      paramInt = j - 1;
      break;
      return null;
    }
  }
  
  public bv<?> a(int paramInt)
  {
    return (bv)c.get(paramInt);
  }
  
  public void a()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexti = false;
    }
  }
  
  public <Clearable extends BaseAdapter,  extends j> void a(int paramInt, Clearable paramClearable)
  {
    a(paramInt, bw.a(paramClearable).a());
  }
  
  public void a(int paramInt, bv<?> parambv)
  {
    boolean bool2 = true;
    b.add(parambv);
    if (d.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Tried to add a section with id " + paramInt + " when one already exists");
    }
    d.add(Integer.valueOf(paramInt));
    c.put(paramInt, parambv);
    if ((e) && (a.areAllItemsEnabled()))
    {
      bool1 = true;
      e = bool1;
      if ((!f) || (!a.hasStableIds())) {
        break label153;
      }
    }
    label153:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      f = bool1;
      a.registerDataSetObserver(h);
      notifyDataSetChanged();
      return;
      bool1 = false;
      break;
    }
  }
  
  public <Clearable extends BaseAdapter,  extends j> void a(int paramInt, CharSequence paramCharSequence, Clearable paramClearable)
  {
    a(paramInt, bw.a(paramCharSequence, paramClearable).a());
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
    notifyDataSetChanged();
  }
  
  public boolean a(int... paramVarArgs)
  {
    int m = paramVarArgs.length;
    int i = 0;
    int n = 1;
    if (i < m)
    {
      int j = paramVarArgs[i];
      if (c.get(j) != null) {}
      int k;
      for (j = 1;; k = 0)
      {
        n &= j;
        i += 1;
        break;
      }
    }
    return n;
  }
  
  public boolean areAllItemsEnabled()
  {
    return e;
  }
  
  public void clear()
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      ((j)c.valueAt(i)).a).clear();
      i += 1;
    }
    d.clear();
    notifyDataSetInvalidated();
  }
  
  public int getCount()
  {
    int m = c.size();
    int k = 0;
    int i = 0;
    bv localbv;
    if (k < m)
    {
      localbv = (bv)c.valueAt(k);
      if ((!g) || (!i)) {}
    }
    for (;;)
    {
      k += 1;
      break;
      int j = ((j)a).getCount();
      if (j > 0)
      {
        i = j + i;
        j = i;
        if (g) {
          j = i + 1;
        }
        i = j;
        if (h)
        {
          i = j + 1;
          continue;
          return i;
        }
      }
    }
  }
  
  public Object getItem(int paramInt)
  {
    bu localbu = a(paramInt, a);
    Object localObject = null;
    if (localbu != null) {
      localObject = a).a.getItem(b);
    }
    return localObject;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    int m = b.size();
    int k = 0;
    int j = -1;
    bv localbv;
    j localj;
    int n;
    int i;
    if (k < m)
    {
      localbv = (bv)b.get(k);
      localj = (j)a;
      n = localj.getCount();
      i = j;
      if (g) {
        i = j + 1;
      }
      if (n == 0)
      {
        i = localj.getViewTypeCount() + i;
        if (!h) {
          break label231;
        }
        j = i + 1;
        i = paramInt;
        paramInt = j;
      }
    }
    for (;;)
    {
      k += 1;
      j = paramInt;
      paramInt = i;
      break;
      j = paramInt;
      if (g) {
        j = paramInt - 1;
      }
      if (j == -1) {
        return i;
      }
      if ((h) && (j == n)) {
        return i + (localj.getViewTypeCount() + 1);
      }
      if (j < n)
      {
        paramInt = localj.getItemViewType(j);
        if (paramInt < 0) {
          return -1;
        }
        return paramInt + i + 1;
      }
      if (h) {
        i += 1;
      }
      for (paramInt = j - 1;; paramInt = j)
      {
        i += localj.getViewTypeCount();
        j = paramInt - n;
        paramInt = i;
        i = j;
        break;
        return -1;
      }
      label231:
      j = paramInt;
      paramInt = i;
      i = j;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int m = b.size();
    int k = 0;
    int j = -1;
    bv localbv;
    Object localObject;
    int n;
    int i;
    if (k < m)
    {
      localbv = (bv)b.get(k);
      localObject = (j)a;
      n = ((j)localObject).getCount();
      i = j;
      if (g) {
        i = j + 1;
      }
      if (n == 0)
      {
        i = ((j)localObject).getViewTypeCount() + i;
        if (!h) {
          break label416;
        }
        j = i + 1;
        i = paramInt;
        paramInt = j;
      }
    }
    for (;;)
    {
      k += 1;
      j = paramInt;
      paramInt = i;
      break;
      j = paramInt;
      if (g) {
        j = paramInt - 1;
      }
      if (j == -1)
      {
        localObject = localbv.a(paramView, paramViewGroup);
        paramViewGroup = ((View)localObject).getLayoutParams();
        paramView = paramViewGroup;
        if (paramViewGroup == null) {
          paramView = cp.a();
        }
        ((View)localObject).setLayoutParams(new AbsListView.LayoutParams(width, height, i));
        return (View)localObject;
      }
      if ((h) && (j == n))
      {
        paramInt = ((j)localObject).getViewTypeCount();
        localObject = localbv.a();
        paramViewGroup = ((View)localObject).getLayoutParams();
        paramView = paramViewGroup;
        if (paramViewGroup == null) {
          paramView = cp.a();
        }
        ((View)localObject).setLayoutParams(new AbsListView.LayoutParams(width, height, i + (paramInt + 1)));
        return (View)localObject;
      }
      if (j < n)
      {
        paramView = ((j)localObject).getView(j, paramView, paramViewGroup);
        paramViewGroup = paramView.getLayoutParams();
        if ((paramViewGroup != null) && (!AbsListView.LayoutParams.class.isAssignableFrom(paramViewGroup.getClass())))
        {
          j = ((j)localObject).getItemViewType(j);
          paramInt = j;
          if (j >= 0) {
            paramInt = j + (i + 1);
          }
          paramView.setLayoutParams(new AbsListView.LayoutParams(width, height, paramInt));
        }
        return paramView;
      }
      if (h) {
        i += 1;
      }
      for (paramInt = j - 1;; paramInt = j)
      {
        i += ((j)localObject).getViewTypeCount();
        j = paramInt - n;
        paramInt = i;
        i = j;
        break;
        return null;
      }
      label416:
      j = paramInt;
      paramInt = i;
      i = j;
    }
  }
  
  public int getViewTypeCount()
  {
    int m = b.size();
    int k = 0;
    int j = 0;
    while (k < m)
    {
      bv localbv = (bv)b.get(k);
      j += a.getViewTypeCount();
      int i = j;
      if (g) {
        i = j + 1;
      }
      j = i;
      if (h) {
        j = i + 1;
      }
      k += 1;
    }
    return Math.max(1, j);
  }
  
  public boolean hasStableIds()
  {
    return f;
  }
  
  public boolean isEmpty()
  {
    if (c.size() != 0)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (!c.valueAt(i)).a.isEmpty()) {
          return false;
        }
        i += 1;
      }
    }
    return true;
  }
  
  public boolean isEnabled(int paramInt)
  {
    bu localbu = a(paramInt, a);
    if (localbu != null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = bool1;
      if (bool1) {
        bool2 = a).a.isEnabled(b);
      }
      return bool2;
    }
  }
  
  public Iterator<j> iterator()
  {
    return new bt(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */