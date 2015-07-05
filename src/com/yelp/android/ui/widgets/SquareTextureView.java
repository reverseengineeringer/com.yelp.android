package com.yelp.android.ui.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View.MeasureSpec;

@TargetApi(14)
public class SquareTextureView
  extends TextureView
{
  private int a;
  private int b;
  private int c;
  
  public SquareTextureView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareTextureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SquareTextureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private Matrix getScaleMatrix()
  {
    float f2 = 1.0F;
    float f1;
    if (b > c) {
      f1 = b / c;
    }
    for (;;)
    {
      int i = a / 2;
      Matrix localMatrix = new Matrix();
      localMatrix.setScale(f1, f2, i, i);
      return localMatrix;
      if (c > b)
      {
        f2 = c / b;
        f1 = 1.0F;
      }
      else
      {
        f1 = 1.0F;
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    setTransform(getScaleMatrix());
    invalidate();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    a = Math.min(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
    setMeasuredDimension(a, a);
    if ((b > 0) && (c > 0)) {
      a(b, c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SquareTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */