package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.ac;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class n
  extends ac
{
  private final l a;
  private o b = null;
  private ArrayList<Fragment.SavedState> c = new ArrayList();
  private ArrayList<Fragment> d = new ArrayList();
  private Fragment e = null;
  
  public n(l paraml)
  {
    a = paraml;
  }
  
  public Parcelable a()
  {
    Object localObject1 = null;
    Object localObject2;
    if (c.size() > 0)
    {
      localObject1 = new Bundle();
      localObject2 = new Fragment.SavedState[c.size()];
      c.toArray((Object[])localObject2);
      ((Bundle)localObject1).putParcelableArray("states", (Parcelable[])localObject2);
    }
    int i = 0;
    while (i < d.size())
    {
      Fragment localFragment = (Fragment)d.get(i);
      localObject2 = localObject1;
      if (localFragment != null)
      {
        localObject2 = localObject1;
        if (localFragment.isAdded())
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new Bundle();
          }
          localObject1 = "f" + i;
          a.a((Bundle)localObject2, (String)localObject1, localFragment);
        }
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (Parcelable)localObject1;
  }
  
  public abstract Fragment a(int paramInt);
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (d.size() > paramInt)
    {
      localFragment = (Fragment)d.get(paramInt);
      if (localFragment != null) {
        return localFragment;
      }
    }
    if (b == null) {
      b = a.a();
    }
    Fragment localFragment = a(paramInt);
    if (c.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)c.get(paramInt);
      if (localSavedState != null) {
        localFragment.setInitialSavedState(localSavedState);
      }
    }
    while (d.size() <= paramInt) {
      d.add(null);
    }
    localFragment.setMenuVisibility(false);
    localFragment.setUserVisibleHint(false);
    d.set(paramInt, localFragment);
    b.a(paramViewGroup.getId(), localFragment);
    return localFragment;
  }
  
  public void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      paramParcelable = (Bundle)paramParcelable;
      paramParcelable.setClassLoader(paramClassLoader);
      paramClassLoader = paramParcelable.getParcelableArray("states");
      c.clear();
      d.clear();
      int i;
      if (paramClassLoader != null)
      {
        i = 0;
        while (i < paramClassLoader.length)
        {
          c.add((Fragment.SavedState)paramClassLoader[i]);
          i += 1;
        }
      }
      paramClassLoader = paramParcelable.keySet().iterator();
      while (paramClassLoader.hasNext())
      {
        String str = (String)paramClassLoader.next();
        if (str.startsWith("f"))
        {
          i = Integer.parseInt(str.substring(1));
          Fragment localFragment = a.a(paramParcelable, str);
          if (localFragment != null)
          {
            while (d.size() <= i) {
              d.add(null);
            }
            localFragment.setMenuVisibility(false);
            d.set(i, localFragment);
          }
          else
          {
            Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
          }
        }
      }
    }
  }
  
  public void a(ViewGroup paramViewGroup) {}
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (b == null) {
      b = a.a();
    }
    while (c.size() <= paramInt) {
      c.add(null);
    }
    c.set(paramInt, a.a(paramViewGroup));
    d.set(paramInt, null);
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
    if (paramViewGroup != e)
    {
      if (e != null)
      {
        e.setMenuVisibility(false);
        e.setUserVisibleHint(false);
      }
      if (paramViewGroup != null)
      {
        paramViewGroup.setMenuVisibility(true);
        paramViewGroup.setUserVisibleHint(true);
      }
      e = paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */