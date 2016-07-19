package com.yelp.android.ui.util;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.Fragment.SavedState;
import android.support.v4.app.o;
import android.support.v4.view.ac;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public abstract class l
  extends ac
{
  private final android.support.v4.app.l a;
  private o b = null;
  private long[] c = new long[0];
  private ArrayList<Fragment.SavedState> d = new ArrayList();
  private ArrayList<Fragment> e = new ArrayList();
  private Fragment f = null;
  
  public l(android.support.v4.app.l paraml)
  {
    a = paraml;
    h();
  }
  
  private void d()
  {
    long[] arrayOfLong = new long[b()];
    int i = 0;
    while (i < arrayOfLong.length)
    {
      arrayOfLong[i] = d(i);
      i += 1;
    }
    if (!Arrays.equals(c, arrayOfLong))
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      i = 0;
      while (i < arrayOfLong.length)
      {
        localArrayList2.add(null);
        i += 1;
      }
      int j = 0;
      while (j < c.length)
      {
        int m = -2;
        i = 0;
        int k;
        Object localObject;
        for (;;)
        {
          k = m;
          if (i < arrayOfLong.length)
          {
            if (c[j] == arrayOfLong[i]) {
              k = i;
            }
          }
          else
          {
            if (k < 0) {
              break label254;
            }
            if (j >= d.size()) {
              break label197;
            }
            localObject = (Fragment.SavedState)d.get(j);
            if (localObject == null) {
              break label197;
            }
            while (localArrayList1.size() <= k) {
              localArrayList1.add(null);
            }
          }
          i += 1;
        }
        localArrayList1.set(k, localObject);
        label197:
        if (j < e.size())
        {
          localObject = (Fragment)e.get(j);
          if (localObject != null)
          {
            while (localArrayList2.size() <= k) {
              localArrayList2.add(null);
            }
            localArrayList2.set(k, localObject);
          }
        }
        label254:
        j += 1;
      }
      c = arrayOfLong;
      d = localArrayList1;
      e = localArrayList2;
    }
  }
  
  public Parcelable a()
  {
    int j = 0;
    c = new long[b()];
    int i = 0;
    while (i < c.length)
    {
      c[i] = d(i);
      i += 1;
    }
    Object localObject1;
    Object localObject2;
    if (d.size() > 0)
    {
      localObject1 = new Bundle();
      if (c.length > 0) {
        ((Bundle)localObject1).putLongArray("item_ids", c);
      }
      localObject2 = new Fragment.SavedState[d.size()];
      d.toArray((Object[])localObject2);
      ((Bundle)localObject1).putParcelableArray("states", (Parcelable[])localObject2);
    }
    for (;;)
    {
      localObject2 = localObject1;
      i = j;
      if (i < e.size())
      {
        Fragment localFragment = (Fragment)e.get(i);
        localObject1 = localObject2;
        if (localFragment != null)
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = new Bundle();
          }
          localObject2 = "fragment" + i;
          if (a.a(localFragment.getTag()) == null)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Tried to save fragment that wasn't in fragment manager.\n");
            ((StringBuilder)localObject2).append("mItemIds: ");
            ((StringBuilder)localObject2).append(c);
            YelpLog.remoteError(this, ((StringBuilder)localObject2).toString());
          }
        }
        for (;;)
        {
          i += 1;
          localObject2 = localObject1;
          break;
          a.a((Bundle)localObject1, (String)localObject2, localFragment);
        }
      }
      return (Parcelable)localObject2;
      localObject1 = null;
    }
  }
  
  public abstract Fragment a(int paramInt);
  
  @SuppressLint({"CommitTransaction"})
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    h();
    if (e.size() > paramInt)
    {
      localFragment = (Fragment)e.get(paramInt);
      if (localFragment != null) {
        return localFragment;
      }
    }
    if (b == null) {
      b = a.a();
    }
    Fragment localFragment = a(paramInt);
    if (d.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)d.get(paramInt);
      if (localSavedState != null) {
        localFragment.setInitialSavedState(localSavedState);
      }
    }
    while (e.size() <= paramInt) {
      e.add(null);
    }
    localFragment.setMenuVisibility(false);
    localFragment.setUserVisibleHint(false);
    e.set(paramInt, localFragment);
    b.a(paramViewGroup.getId(), localFragment, Long.toString(d(paramInt)));
    return localFragment;
  }
  
  public void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      paramParcelable = (Bundle)paramParcelable;
      paramParcelable.setClassLoader(paramClassLoader);
      c = paramParcelable.getLongArray("item_ids");
      if (c == null) {
        c = new long[0];
      }
      paramClassLoader = paramParcelable.getParcelableArray("states");
      d.clear();
      e.clear();
      int i;
      if (paramClassLoader != null)
      {
        i = 0;
        while (i < paramClassLoader.length)
        {
          d.add((Fragment.SavedState)paramClassLoader[i]);
          i += 1;
        }
      }
      paramClassLoader = paramParcelable.keySet().iterator();
      while (paramClassLoader.hasNext())
      {
        Object localObject = (String)paramClassLoader.next();
        if (((String)localObject).startsWith("fragment"))
        {
          i = Integer.parseInt(((String)localObject).substring("fragment".length()));
          localObject = a.a(paramParcelable, (String)localObject);
          if (localObject != null)
          {
            while (e.size() <= i) {
              e.add(null);
            }
            ((Fragment)localObject).setMenuVisibility(false);
            e.set(i, localObject);
          }
        }
      }
      d();
    }
  }
  
  public void a(ViewGroup paramViewGroup) {}
  
  @SuppressLint({"CommitTransaction"})
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (b == null) {
      b = a.a();
    }
    while (d.size() <= paramInt) {
      d.add(null);
    }
    while (e.size() <= paramInt) {
      e.add(null);
    }
    if (e.get(paramInt) != null)
    {
      d.set(paramInt, a.a((Fragment)e.get(paramInt)));
      e.set(paramInt, null);
    }
    b.a(paramViewGroup);
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }
  
  public void b(ViewGroup paramViewGroup)
  {
    if (b != null)
    {
      b.b();
      b = null;
      a.b();
    }
  }
  
  public void b(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (paramViewGroup != f)
    {
      if (f != null)
      {
        f.setMenuVisibility(false);
        f.setUserVisibleHint(false);
      }
      if (paramViewGroup != null)
      {
        paramViewGroup.setMenuVisibility(true);
        paramViewGroup.setUserVisibleHint(true);
      }
      f = paramViewGroup;
    }
  }
  
  public void c()
  {
    d();
    super.c();
  }
  
  public abstract long d(int paramInt);
  
  public void h()
  {
    if (c.length == 0)
    {
      int j = b();
      if (j > 0)
      {
        c = new long[j];
        int i = 0;
        while (i < j)
        {
          c[i] = d(i);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */