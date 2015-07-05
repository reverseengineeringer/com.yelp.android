package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import com.yelp.android.appdata.AppData;

public class ShadowView
  extends View
{
  private int a;
  
  public ShadowView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ShadowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ShadowView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    setBackgroundResource(2130838395);
    a = ((int)AppData.b().getResources().getDimension(2131427504) * 2);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    getLayoutParamswidth = (a + paramInt1);
    getLayoutParamsheight = (a + paramInt2);
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ShadowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */