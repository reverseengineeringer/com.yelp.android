package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

class b$a
  extends OvalShape
{
  private RadialGradient b;
  private Paint c = new Paint();
  private int d;
  
  public b$a(b paramb, int paramInt1, int paramInt2)
  {
    b.a(paramb, paramInt1);
    d = paramInt2;
    float f1 = d / 2;
    float f2 = d / 2;
    float f3 = b.a(paramb);
    paramb = Shader.TileMode.CLAMP;
    b = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, paramb);
    c.setShader(b);
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = a.getWidth();
    int j = a.getHeight();
    paramCanvas.drawCircle(i / 2, j / 2, d / 2 + b.a(a), c);
    paramCanvas.drawCircle(i / 2, j / 2, d / 2, paramPaint);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */