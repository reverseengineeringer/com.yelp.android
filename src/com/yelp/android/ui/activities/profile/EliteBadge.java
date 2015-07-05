package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.b;
import com.yelp.android.util.StringUtils;

public class EliteBadge
  extends TextView
{
  private int a;
  private final String b;
  
  public EliteBadge(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EliteBadge(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772033);
  }
  
  public EliteBadge(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.EliteBadge, paramInt, paramInt);
    b = paramContext.getString(6);
    setText(String.valueOf(StringUtils.a));
    paramContext.recycle();
  }
  
  public int getYear()
  {
    return a;
  }
  
  public void setYear(int paramInt)
  {
    setText(String.format(b, new Object[] { Integer.valueOf(paramInt % 100) }));
    a = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.EliteBadge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */