package com.yelp.android;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.yelp.android.appdata.ao;

public class DinoListView
  extends ListView
{
  private final int a = ao.j;
  private Bitmap b;
  private Paint c;
  private float d;
  private float e;
  private AbsListView.OnScrollListener f;
  
  public DinoListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DinoListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DinoListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.getResources();
    c = new Paint();
    c.setColor(paramContext.getColor(2131361825));
    c.setStrokeWidth(a);
    b = BitmapFactory.decodeResource(paramContext, 2130837907);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    d = paramFloat1;
    e = paramFloat2;
    invalidate();
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    int j = b.getWidth();
    int i = getMeasuredWidth() / 2;
    j /= 2;
    paramCanvas.drawBitmap(b, i - j, d, null);
    paramCanvas.drawLine(getMeasuredWidth() / 2, e, getMeasuredWidth() / 2, d, c);
  }
  
  public AbsListView.OnScrollListener getOnScrollListener()
  {
    return f;
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    super.setOnScrollListener(paramOnScrollListener);
    f = paramOnScrollListener;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.DinoListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */