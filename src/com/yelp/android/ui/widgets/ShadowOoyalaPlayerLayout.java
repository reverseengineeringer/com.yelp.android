package com.yelp.android.ui.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.ooyala.android.OoyalaPlayerLayout;

public class ShadowOoyalaPlayerLayout
  extends OoyalaPlayerLayout
{
  private ShadowView a;
  
  public ShadowOoyalaPlayerLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ShadowOoyalaPlayerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ShadowOoyalaPlayerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if (a != null) {
      a.a(i, j);
    }
  }
  
  public void setShadowView(ShadowView paramShadowView)
  {
    a = paramShadowView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ShadowOoyalaPlayerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */