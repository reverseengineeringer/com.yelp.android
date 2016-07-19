package android.support.v7.app;

import android.content.Context;
import android.support.v7.internal.widget.o;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.FrameLayout;

class k$c
  extends FrameLayout
{
  public k$c(k paramk, Context paramContext)
  {
    super(paramContext);
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 < -5) || (paramInt2 < -5) || (paramInt1 > getWidth() + 5) || (paramInt2 > getHeight() + 5);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())))
    {
      k.d(a, 0);
      return true;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public void setBackgroundResource(int paramInt)
  {
    setBackgroundDrawable(o.a(getContext(), paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */