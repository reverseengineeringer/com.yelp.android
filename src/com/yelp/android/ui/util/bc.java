package com.yelp.android.ui.util;

import android.content.Context;
import com.yelp.android.serializable.Media;
import java.util.List;

public abstract class bc
{
  protected List<? extends Media> a;
  
  public bc(List<? extends Media> paramList)
  {
    a = paramList;
  }
  
  public abstract void a(Context paramContext, int paramInt);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */