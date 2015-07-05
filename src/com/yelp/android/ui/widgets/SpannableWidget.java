package com.yelp.android.ui.widgets;

import com.yelp.android.bf.c;

public abstract interface SpannableWidget
{
  public static final int[] b = { c.state_right, c.state_bottom };
  public static final int[] c = { c.state_left, c.state_top };
  public static final int[] d = { c.state_middle };
  public static final int[] e = { 16842912 };
  public static final int[] f = { c.state_clickable };
  
  public abstract void setChecked(boolean paramBoolean);
  
  public abstract void setLeft(boolean paramBoolean);
  
  public abstract void setMiddle(boolean paramBoolean);
  
  public abstract void setOnCheckedChangeListener(j paramj);
  
  public abstract void setRight(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SpannableWidget
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */