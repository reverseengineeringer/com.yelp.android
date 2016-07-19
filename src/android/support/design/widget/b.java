package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import com.yelp.android.c.a;

class b
  extends Drawable
{
  final Paint a = new Paint(1);
  final Rect b = new Rect();
  final RectF c = new RectF();
  float d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private boolean j = true;
  
  public b()
  {
    a.setStyle(Paint.Style.STROKE);
  }
  
  private Shader a()
  {
    Object localObject = b;
    copyBounds((Rect)localObject);
    float f1 = d / ((Rect)localObject).height();
    int k = a.a(e, i);
    int m = a.a(f, i);
    int n = a.a(a.b(f, 0), i);
    int i1 = a.a(a.b(h, 0), i);
    int i2 = a.a(h, i);
    int i3 = a.a(g, i);
    float f2 = top;
    float f3 = bottom;
    localObject = Shader.TileMode.CLAMP;
    return new LinearGradient(0.0F, f2, 0.0F, f3, new int[] { k, m, n, i1, i2, i3 }, new float[] { 0.0F, f1, 0.5F, 0.5F, 1.0F - f1, 1.0F }, (Shader.TileMode)localObject);
  }
  
  void a(float paramFloat)
  {
    if (d != paramFloat)
    {
      d = paramFloat;
      a.setStrokeWidth(1.3333F * paramFloat);
      j = true;
      invalidateSelf();
    }
  }
  
  void a(int paramInt)
  {
    i = paramInt;
    j = true;
    invalidateSelf();
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    e = paramInt1;
    f = paramInt2;
    g = paramInt3;
    h = paramInt4;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (j)
    {
      a.setShader(a());
      j = false;
    }
    float f1 = a.getStrokeWidth() / 2.0F;
    RectF localRectF = c;
    copyBounds(b);
    localRectF.set(b);
    left += f1;
    top += f1;
    right -= f1;
    bottom -= f1;
    paramCanvas.drawOval(localRectF, a);
  }
  
  public int getOpacity()
  {
    if (d > 0.0F) {
      return -3;
    }
    return -2;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int k = Math.round(d);
    paramRect.set(k, k, k, k);
    return true;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    j = true;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */