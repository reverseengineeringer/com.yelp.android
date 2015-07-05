package com.yelp.android.bd;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.yelp.android.appdata.ao;

public class c
  extends Drawable
{
  private Drawable a;
  private Paint b;
  private String c;
  
  public c(Context paramContext, int paramInt1, int paramInt2)
  {
    paramContext = paramContext.getResources();
    a = paramContext.getDrawable(paramInt1);
    a(paramInt2, paramContext);
    b = new Paint();
    b.setAntiAlias(true);
    b.setTextAlign(Paint.Align.CENTER);
    b.setFakeBoldText(true);
    b.setTextSize(ao.b(12.0F));
    b.setColor(paramContext.getColor(2131362032));
  }
  
  public void a(float paramFloat)
  {
    b.setTextSize(paramFloat);
  }
  
  public void a(int paramInt, Resources paramResources)
  {
    if (paramInt > 99)
    {
      c = paramResources.getString(2131166064, new Object[] { Integer.valueOf(99) });
      return;
    }
    c = String.valueOf(paramInt);
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
    int i = a.getBounds().left;
    int j = a.getBounds().top;
    int k = a.getIntrinsicWidth();
    int m = a.getIntrinsicHeight();
    float f1 = i;
    float f2 = k / 2.0F;
    float f5 = b.descent();
    float f6 = b.ascent();
    float f3 = j + m;
    float f4 = b.descent();
    f5 = (m - (f5 - f6)) / 2.0F;
    paramCanvas.drawText(c, f1 + f2, f3 - f4 - f5, b);
  }
  
  public int getIntrinsicHeight()
  {
    return a.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return a.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
    b.setAlpha(paramInt);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    a.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBounds(Rect paramRect)
  {
    super.setBounds(paramRect);
    a.setBounds(paramRect);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    b.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bd.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */