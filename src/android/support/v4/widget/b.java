package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.util.DisplayMetrics;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class b
  extends ImageView
{
  private Animation.AnimationListener a;
  private int b;
  
  public b(Context paramContext, int paramInt, float paramFloat)
  {
    super(paramContext);
    float f = getContextgetResourcesgetDisplayMetricsdensity;
    int i = (int)(paramFloat * f * 2.0F);
    int j = (int)(1.75F * f);
    int k = (int)(0.0F * f);
    b = ((int)(3.5F * f));
    if (a())
    {
      paramContext = new ShapeDrawable(new OvalShape());
      ai.h(this, f * 4.0F);
    }
    for (;;)
    {
      paramContext.getPaint().setColor(paramInt);
      setBackgroundDrawable(paramContext);
      return;
      paramContext = new ShapeDrawable(new a(b, i));
      ai.a(this, 1, paramContext.getPaint());
      paramContext.getPaint().setShadowLayer(b, k, j, 503316480);
      i = b;
      setPadding(i, i, i, i);
    }
  }
  
  private boolean a()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public void a(Animation.AnimationListener paramAnimationListener)
  {
    a = paramAnimationListener;
  }
  
  public void onAnimationEnd()
  {
    super.onAnimationEnd();
    if (a != null) {
      a.onAnimationEnd(getAnimation());
    }
  }
  
  public void onAnimationStart()
  {
    super.onAnimationStart();
    if (a != null) {
      a.onAnimationStart(getAnimation());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!a()) {
      setMeasuredDimension(getMeasuredWidth() + b * 2, getMeasuredHeight() + b * 2);
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    if ((getBackground() instanceof ShapeDrawable)) {
      ((ShapeDrawable)getBackground()).getPaint().setColor(paramInt);
    }
  }
  
  private class a
    extends OvalShape
  {
    private RadialGradient b;
    private Paint c = new Paint();
    private int d;
    
    public a(int paramInt1, int paramInt2)
    {
      b.a(b.this, paramInt1);
      d = paramInt2;
      float f1 = d / 2;
      float f2 = d / 2;
      float f3 = b.a(b.this);
      this$1 = Shader.TileMode.CLAMP;
      b = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, b.this);
      c.setShader(b);
    }
    
    public void draw(Canvas paramCanvas, Paint paramPaint)
    {
      int i = getWidth();
      int j = getHeight();
      paramCanvas.drawCircle(i / 2, j / 2, d / 2 + b.a(b.this), c);
      paramCanvas.drawCircle(i / 2, j / 2, d / 2, paramPaint);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */