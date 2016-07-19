package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.appdata.n;
import com.yelp.android.b.a;

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
    this(paramContext, paramAttributeSet, 2130772444);
  }
  
  public TitleWithSubTitleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(2130903413, this);
    paramAttributeSet = paramContext.obtainStyledAttributes(null, b.a.GapSizes);
    paramInt = paramContext.getResources().getDimensionPixelSize(2131361963);
    int i = paramAttributeSet.getDimensionPixelSize(1, n.e);
    int j = paramAttributeSet.getDimensionPixelSize(2, n.e);
    paramAttributeSet.recycle();
    setPadding(i, paramInt, j, paramInt);
    a = ((TextView)findViewById(2131690061));
    b = ((TextView)findViewById(2131690700));
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