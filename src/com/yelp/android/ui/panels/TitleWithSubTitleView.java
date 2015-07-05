package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.appdata.ao;
import com.yelp.android.b;

public class TitleWithSubTitleView
  extends RelativeLayout
{
  protected final TextView a;
  protected final TextView b;
  
  public TitleWithSubTitleView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TitleWithSubTitleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772334);
  }
  
  public TitleWithSubTitleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(2130903316, this);
    paramContext = paramContext.obtainStyledAttributes(null, b.GapSizes);
    paramInt = paramContext.getDimensionPixelSize(0, ao.j);
    int i = paramContext.getDimensionPixelSize(6, ao.e);
    int j = paramContext.getDimensionPixelSize(7, ao.e);
    paramContext.recycle();
    setPadding(i, paramInt, j, paramInt);
    a = ((TextView)findViewById(2131493861));
    b = ((TextView)findViewById(2131493862));
  }
  
  public TextView getSubTitle()
  {
    return b;
  }
  
  public TextView getTitle()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.TitleWithSubTitleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */