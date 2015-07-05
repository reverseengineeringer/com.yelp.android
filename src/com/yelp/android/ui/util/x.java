package com.yelp.android.ui.util;

import android.content.Context;
import android.os.AsyncTask;
import android.util.SparseArray;
import java.util.List;

public abstract class x<From, To>
{
  private final SparseArray<To> a = new SparseArray();
  private SparseArray<To> b;
  private boolean c = false;
  private AsyncTask<List<From>, Void, Void> d;
  
  public To a(int paramInt, Context paramContext, From paramFrom)
  {
    if (c) {
      return (To)b.get(paramInt);
    }
    if (a.indexOfKey(paramInt) < 0)
    {
      paramContext = a(paramContext, paramFrom);
      a.append(paramInt, paramContext);
      return paramContext;
    }
    return (To)a.get(paramInt);
  }
  
  public abstract To a(Context paramContext, From paramFrom);
  
  public void a()
  {
    a.clear();
    if (d != null) {
      d.cancel(true);
    }
    c = false;
  }
  
  public void a(List<From> paramList)
  {
    d = new y(this);
    d.execute(new List[] { paramList });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */