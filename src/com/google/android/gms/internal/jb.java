package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.net.Uri;
import android.widget.ImageView;

public final class jb
  extends ImageView
{
  private Uri Mn;
  private int Mo;
  private int Mp;
  private jb.a Mq;
  private int Mr;
  private float Ms;
  
  public void aB(int paramInt)
  {
    Mo = paramInt;
  }
  
  public void g(Uri paramUri)
  {
    Mn = paramUri;
  }
  
  public int hj()
  {
    return Mo;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (Mq != null) {
      paramCanvas.clipPath(Mq.g(getWidth(), getHeight()));
    }
    super.onDraw(paramCanvas);
    if (Mp != 0) {
      paramCanvas.drawColor(Mp);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    switch (Mr)
    {
    default: 
      return;
    case 1: 
      paramInt1 = getMeasuredHeight();
      paramInt2 = (int)(paramInt1 * Ms);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt2 = getMeasuredWidth();
      paramInt1 = (int)(paramInt2 / Ms);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */