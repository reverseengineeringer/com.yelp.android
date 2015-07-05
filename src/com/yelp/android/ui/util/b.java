package com.yelp.android.ui.util;

import android.database.DataSetObserver;
import android.widget.BaseAdapter;

public class b
  extends DataSetObserver
{
  private final BaseAdapter a;
  
  public b(BaseAdapter paramBaseAdapter)
  {
    a = paramBaseAdapter;
  }
  
  public void onChanged()
  {
    try
    {
      super.onChanged();
      a.notifyDataSetChanged();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onInvalidated()
  {
    try
    {
      super.onInvalidated();
      a.notifyDataSetInvalidated();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */