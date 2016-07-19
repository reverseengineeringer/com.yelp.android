package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import java.io.File;
import java.util.Timer;

public class ViewTakePhotoOverlay
  extends View
  implements a
{
  private final Paint a;
  private final Paint b;
  private final Paint c;
  private int d = 0;
  private Timer e;
  private ViewTakePhotoOverlay.CameraState f;
  private int g;
  private int h;
  private int i;
  private int j;
  
  public ViewTakePhotoOverlay(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setLayerType(1, null);
    f = ViewTakePhotoOverlay.CameraState.PREVIEW;
    b = new Paint();
    b.setStyle(Paint.Style.STROKE);
    b.setStrokeCap(Paint.Cap.ROUND);
    b.setColor(-16777216);
    b.setAlpha(100);
    c = new Paint();
    c.setStyle(Paint.Style.STROKE);
    c.setStrokeCap(Paint.Cap.ROUND);
    c.setColor(-1);
    a = new Paint();
    a.setStyle(Paint.Style.FILL);
    a.setColor(-1);
  }
  
  private void a(long paramLong1, long paramLong2)
  {
    if (e != null) {
      e.cancel();
    }
    e = new Timer();
    ViewTakePhotoOverlay.1 local1 = new ViewTakePhotoOverlay.1(this);
    if (paramLong2 > 0L)
    {
      e.schedule(local1, paramLong1, paramLong2);
      return;
    }
    e.schedule(local1, paramLong1);
  }
  
  private void a(Canvas paramCanvas, Paint paramPaint)
  {
    paramCanvas.drawLine(i, i, i + i * 2, i, paramPaint);
    paramCanvas.drawLine(i, i, i, i + i * 2, paramPaint);
    paramCanvas.drawLine(g - i, i, g - i - i * 2, i, paramPaint);
    paramCanvas.drawLine(g - i, i, g - i, i + i * 2, paramPaint);
    paramCanvas.drawLine(i, h - i, i + i * 2, h - i, paramPaint);
    paramCanvas.drawLine(i, h - i, i, h - i * 3, paramPaint);
    paramCanvas.drawLine(g - i, h - i, g - i - i * 2, h - i, paramPaint);
    paramCanvas.drawLine(g - i, h - i, g - i, h - i * 3, paramPaint);
  }
  
  public void a(CameraWrangler paramCameraWrangler)
  {
    f = ViewTakePhotoOverlay.CameraState.PREVIEW;
    a(0L, 0L);
  }
  
  public void a(CameraWrangler paramCameraWrangler, File paramFile) {}
  
  public void b(CameraWrangler paramCameraWrangler) {}
  
  public void c(CameraWrangler paramCameraWrangler)
  {
    f = ViewTakePhotoOverlay.CameraState.AUTOFOCUS;
    d = 0;
    a(350L, 350L);
  }
  
  public void d(CameraWrangler paramCameraWrangler)
  {
    f = ViewTakePhotoOverlay.CameraState.SHUTTER;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    switch (ViewTakePhotoOverlay.2.a[f.ordinal()])
    {
    default: 
    case 1: 
      do
      {
        return;
      } while (d % 2 != 0);
      a(paramCanvas, b);
      a(paramCanvas, c);
      return;
    }
    paramCanvas.drawRect(0.0F, 0.0F, g, h, a);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    g = paramInt1;
    h = paramInt2;
    i = (Math.min(g, h) / 12);
    j = Math.max(1, i / 8);
    b.setStrokeWidth(j + 2);
    c.setStrokeWidth(j);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.ViewTakePhotoOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */