package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public abstract class au<T>
  extends BaseAdapter
  implements j
{
  private List<T> a = Collections.emptyList();
  private final ArrayList<x<T, ?>> b = new ArrayList();
  
  protected List<T> a()
  {
    return a;
  }
  
  public void a(x<T, ?> paramx)
  {
    b.add(paramx);
  }
  
  public void a(T paramT)
  {
    int i = a.indexOf(paramT);
    if (i >= 0)
    {
      a.set(i, paramT);
      notifyDataSetChanged();
    }
  }
  
  public void a(Collection<? extends T> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(a);
    localArrayList.addAll(paramCollection);
    a = localArrayList;
  }
  
  public void a(Collection<? extends T> paramCollection, int paramInt)
  {
    a = new ArrayList(a());
    a.addAll(paramInt, paramCollection);
    a(a);
  }
  
  public void a(Comparator<T> paramComparator)
  {
    Collections.sort(a, paramComparator);
  }
  
  public void a(List<T> paramList)
  {
    a(paramList, true);
  }
  
  public void a(List<T> paramList, boolean paramBoolean)
  {
    Object localObject = paramList;
    if (paramList == null) {
      localObject = Collections.emptyList();
    }
    a = ((List)localObject);
    if (paramBoolean) {
      notifyDataSetChanged();
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public void b(T paramT)
  {
    if (a.remove(paramT)) {
      notifyDataSetChanged();
    }
  }
  
  public void b(Collection<? extends T> paramCollection)
  {
    if ((a instanceof ArrayList))
    {
      a.addAll(0, paramCollection);
      return;
    }
    a = new ArrayList(a);
    a.addAll(0, paramCollection);
  }
  
  public void c(T paramT)
  {
    ArrayList localArrayList = new ArrayList(a);
    localArrayList.add(paramT);
    a = localArrayList;
  }
  
  public void c(List<? extends T> paramList)
  {
    Collections.reverse(paramList);
    b(paramList);
  }
  
  public void clear()
  {
    a(Collections.emptyList(), false);
    notifyDataSetInvalidated();
  }
  
  public void d(Collection<? extends T> paramCollection)
  {
    int i = 0;
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      if ((a.remove(localObject)) && (i == 0)) {
        i = 1;
      }
    }
    if (i != 0) {
      notifyDataSetChanged();
    }
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public T getItem(int paramInt)
  {
    return (T)a.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public abstract View getView(int paramInt, View paramView, ViewGroup paramViewGroup);
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public void notifyDataSetChanged()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)localIterator.next();
      localx.a();
      localx.a(a());
    }
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */