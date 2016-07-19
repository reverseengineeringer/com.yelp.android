package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.hardware.Camera.Size;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;

public class YelpSurfaceView
  extends SurfaceView
{
  private CameraWrangler a;
  
  public YelpSurfaceView(Context paramContext)
  {
    super(paramContext);
  }
  
  public YelpSurfaceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public YelpSurfaceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private float a(int paramInt1, int paramInt2, Camera.Size paramSize)
  {
    return Math.min(paramInt1 / width, paramInt2 / height);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if ((a == null) || (a.b() == null))
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    Camera.Size localSize = a.b();
    float f = a(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2), localSize);
    setMeasuredDimension(Math.round(width * f), Math.round(height * f));
  }
  
  public void setCameraWrangler(CameraWrangler paramCameraWrangler)
  {
    a = paramCameraWrangler;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.YelpSurfaceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */