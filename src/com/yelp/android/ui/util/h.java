package com.yelp.android.ui.util;

import android.view.View;
import com.yelp.android.aj.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class h
  extends a
  implements j
{
  private List<View> a;
  
  public h(List<View> paramList)
  {
    super(paramList);
    a = paramList;
  }
  
  public h(View... paramVarArgs)
  {
    this(new ArrayList(Arrays.asList(paramVarArgs)));
  }
  
  public void a(View paramView)
  {
    a.remove(paramView);
    notifyDataSetChanged();
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public void b(View paramView)
  {
    a.add(paramView);
    notifyDataSetChanged();
  }
  
  public void clear()
  {
    a.clear();
    notifyDataSetChanged();
  }
  
  public int getItemViewType(int paramInt)
  {
    return -1;
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */