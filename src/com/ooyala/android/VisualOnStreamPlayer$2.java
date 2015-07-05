package com.ooyala.android;

import android.content.Context;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

class VisualOnStreamPlayer$2
  extends SurfaceView
{
  VisualOnStreamPlayer$2(VisualOnStreamPlayer paramVisualOnStreamPlayer, Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Log.v("VisualOnStreamPlayer", "MEASURE SPEC: " + View.MeasureSpec.toString(paramInt1) + "," + View.MeasureSpec.toString(paramInt2));
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    Log.v("VisualOnStreamPlayer", "MEASURE PARENT: " + this$0._parent.getLayout().getMeasuredWidth() + "," + this$0._parent.getLayout().getMeasuredHeight());
    paramInt2 = this$0._videoHeight * i / this$0._videoWidth;
    if ((paramInt1 - paramInt2) / 2 < 0)
    {
      paramInt2 = this$0._videoWidth * paramInt1 / this$0._videoHeight;
      i = (i - paramInt2) / 2;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      Log.v("VisualOnStreamPlayer", "MEASURED: " + paramInt2 + "," + paramInt1);
      return;
      paramInt1 = paramInt2;
      paramInt2 = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VisualOnStreamPlayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */