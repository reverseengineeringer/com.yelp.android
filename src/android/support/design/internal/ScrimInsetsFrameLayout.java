package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ab;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;

public class ScrimInsetsFrameLayout
  extends FrameLayout
{
  private Drawable a;
  private Rect b;
  private Rect c = new Rect();
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScrimInsetsFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.ScrimInsetsFrameLayout, paramInt, a.h.Widget_Design_ScrimInsetsFrameLayout);
    a = paramContext.getDrawable(a.i.ScrimInsetsFrameLayout_insetForeground);
    paramContext.recycle();
    setWillNotDraw(true);
    ai.a(this, new ab()
    {
      public bg a(View paramAnonymousView, bg paramAnonymousbg)
      {
        if (ScrimInsetsFrameLayout.a(ScrimInsetsFrameLayout.this) == null) {
          ScrimInsetsFrameLayout.a(ScrimInsetsFrameLayout.this, new Rect());
        }
        ScrimInsetsFrameLayout.a(ScrimInsetsFrameLayout.this).set(paramAnonymousbg.a(), paramAnonymousbg.b(), paramAnonymousbg.c(), paramAnonymousbg.d());
        paramAnonymousView = ScrimInsetsFrameLayout.this;
        if ((ScrimInsetsFrameLayout.a(ScrimInsetsFrameLayout.this).isEmpty()) || (ScrimInsetsFrameLayout.b(ScrimInsetsFrameLayout.this) == null)) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setWillNotDraw(bool);
          ai.d(ScrimInsetsFrameLayout.this);
          return paramAnonymousbg.f();
        }
      }
    });
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = getWidth();
    int j = getHeight();
    if ((b != null) && (a != null))
    {
      int k = paramCanvas.save();
      paramCanvas.translate(getScrollX(), getScrollY());
      c.set(0, 0, i, b.top);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, j - b.bottom, i, j);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(0, b.top, b.left, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      c.set(i - b.right, b.top, i, j - b.bottom);
      a.setBounds(c);
      a.draw(paramCanvas);
      paramCanvas.restoreToCount(k);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      a.setCallback(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      a.setCallback(null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.ScrimInsetsFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */