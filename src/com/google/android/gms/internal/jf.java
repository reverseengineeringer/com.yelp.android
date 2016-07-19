package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

public final class jf
  extends ImageView
{
  private Uri a;
  private int b;
  private int c;
  private a d;
  private int e;
  private float f;
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(Uri paramUri)
  {
    a = paramUri;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (d != null) {
      paramCanvas.clipPath(d.a(getWidth(), getHeight()));
    }
    super.onDraw(paramCanvas);
    if (c != 0) {
      paramCanvas.drawColor(c);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    switch (e)
    {
    default: 
      return;
    case 1: 
      paramInt1 = getMeasuredHeight();
      paramInt2 = (int)(paramInt1 * f);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt2 = getMeasuredWidth();
      paramInt1 = (int)(paramInt2 / f);
    }
  }
  
  public static abstract interface a
  {
    public abstract Path a(int paramInt1, int paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */