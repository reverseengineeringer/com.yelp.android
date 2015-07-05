package com.ooyala.android;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;

class MovieView
  extends SurfaceView
{
  private float _aspectRatio = -1.0F;
  
  public MovieView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MovieView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MovieView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (_aspectRatio <= 0.0F)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    if ((i == 0) || (j == 0))
    {
      Log.e(getClass().getName(), "ERROR: cannot set MovieView size");
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    float f = i / j;
    if (f > _aspectRatio)
    {
      paramInt1 = (int)(_aspectRatio * j);
      paramInt2 = j;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      paramInt2 = j;
      paramInt1 = i;
      if (f < _aspectRatio)
      {
        paramInt2 = (int)(i / _aspectRatio);
        paramInt1 = i;
      }
    }
  }
  
  public void setAspectRatio(float paramFloat)
  {
    _aspectRatio = paramFloat;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.MovieView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */