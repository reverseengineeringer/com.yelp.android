package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

class cb
  extends BaseAdapter
  implements SpinnerAdapter
{
  private final Context b;
  private final CharSequence[] c;
  
  public cb(ActivityCreateAccount paramActivityCreateAccount, Context paramContext, int paramInt)
  {
    b = paramContext;
    c = paramActivityCreateAccount.getResources().getStringArray(paramInt);
  }
  
  public int getCount()
  {
    return c.length;
  }
  
  public Object getItem(int paramInt)
  {
    return c[paramInt];
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = View.inflate(b, 17367043, null);
    }
    ((TextView)paramViewGroup.findViewById(16908308)).setText((CharSequence)getItem(paramInt));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */