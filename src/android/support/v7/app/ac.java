package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.yelp.android.g.b;
import com.yelp.android.g.k;
import com.yelp.android.g.l;

abstract class ac
  extends Drawable
{
  private static final float b = (float)Math.toRadians(45.0D);
  private final Paint a = new Paint();
  private final float c;
  private final float d;
  private final float e;
  private final float f;
  private final float g;
  private final boolean h;
  private final Path i = new Path();
  private final int j;
  private boolean k = false;
  private float l;
  private float m;
  private float n;
  
  ac(Context paramContext)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(null, l.DrawerArrowToggle, b.drawerArrowStyle, k.Base_Widget_AppCompat_DrawerArrowToggle);
    a.setAntiAlias(true);
    a.setColor(paramContext.getColor(l.DrawerArrowToggle_color, 0));
    j = paramContext.getDimensionPixelSize(l.DrawerArrowToggle_drawableSize, 0);
    e = Math.round(paramContext.getDimension(l.DrawerArrowToggle_barSize, 0.0F));
    d = Math.round(paramContext.getDimension(l.DrawerArrowToggle_topBottomBarArrowSize, 0.0F));
    c = paramContext.getDimension(l.DrawerArrowToggle_thickness, 0.0F);
    g = Math.round(paramContext.getDimension(l.DrawerArrowToggle_gapBetweenBars, 0.0F));
    h = paramContext.getBoolean(l.DrawerArrowToggle_spinBars, true);
    f = paramContext.getDimension(l.DrawerArrowToggle_middleBarArrowSize, 0.0F);
    n = ((int)(j - c * 3.0F - g * 2.0F) / 4 * 2);
    n = ((float)(n + (c * 1.5D + g)));
    paramContext.recycle();
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeJoin(Paint.Join.MITER);
    a.setStrokeCap(Paint.Cap.BUTT);
    a.setStrokeWidth(c);
    m = ((float)(c / 2.0F * Math.cos(b)));
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat2 - paramFloat1) * paramFloat3 + paramFloat1;
  }
  
  protected void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  abstract boolean a();
  
  public void b(float paramFloat)
  {
    l = paramFloat;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    boolean bool = a();
    float f5 = a(e, d, l);
    float f3 = a(e, f, l);
    float f4 = Math.round(a(0.0F, m, l));
    float f6 = a(0.0F, b, l);
    float f1;
    float f2;
    label92:
    int i1;
    if (bool)
    {
      f1 = 0.0F;
      if (!bool) {
        break label321;
      }
      f2 = 180.0F;
      f1 = a(f1, f2, l);
      f2 = (float)Math.round(f5 * Math.cos(f6));
      f5 = (float)Math.round(f5 * Math.sin(f6));
      i.rewind();
      f6 = a(g + c, -m, l);
      float f7 = -f3 / 2.0F;
      i.moveTo(f7 + f4, 0.0F);
      i.rLineTo(f3 - f4 * 2.0F, 0.0F);
      i.moveTo(f7, f6);
      i.rLineTo(f2, f5);
      i.moveTo(f7, -f6);
      i.rLineTo(f2, -f5);
      i.close();
      paramCanvas.save();
      paramCanvas.translate(localRect.centerX(), n);
      if (!h) {
        break label332;
      }
      if (!(k ^ bool)) {
        break label326;
      }
      i1 = -1;
      label288:
      paramCanvas.rotate(i1 * f1);
    }
    for (;;)
    {
      paramCanvas.drawPath(i, a);
      paramCanvas.restore();
      return;
      f1 = -180.0F;
      break;
      label321:
      f2 = 0.0F;
      break label92;
      label326:
      i1 = 1;
      break label288;
      label332:
      if (bool) {
        paramCanvas.rotate(180.0F);
      }
    }
  }
  
  public int getIntrinsicHeight()
  {
    return j;
  }
  
  public int getIntrinsicWidth()
  {
    return j;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isAutoMirrored()
  {
    return true;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */