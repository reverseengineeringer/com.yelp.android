package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.TintImageView;
import android.view.View;
import com.yelp.android.d.a;
import com.yelp.android.j.a.a;

class ActionMenuPresenter$d
  extends TintImageView
  implements ActionMenuView.a
{
  private final float[] b = new float[2];
  
  public ActionMenuPresenter$d(final ActionMenuPresenter paramActionMenuPresenter, Context paramContext)
  {
    super(paramContext, null, a.a.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
    setOnTouchListener(new ListPopupWindow.b(this)
    {
      public ListPopupWindow a()
      {
        if (ActionMenuPresenter.a(paramActionMenuPresenter) == null) {
          return null;
        }
        return ActionMenuPresenter.a(paramActionMenuPresenter).e();
      }
      
      public boolean b()
      {
        paramActionMenuPresenter.f();
        return true;
      }
      
      public boolean c()
      {
        if (ActionMenuPresenter.b(paramActionMenuPresenter) != null) {
          return false;
        }
        paramActionMenuPresenter.g();
        return true;
      }
    });
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean performClick()
  {
    if (super.performClick()) {
      return true;
    }
    playSoundEffect(0);
    a.f();
    return true;
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    Drawable localDrawable1 = getDrawable();
    Drawable localDrawable2 = getBackground();
    if ((localDrawable1 != null) && (localDrawable2 != null))
    {
      int i = getWidth();
      paramInt2 = getHeight();
      paramInt1 = Math.max(i, paramInt2) / 2;
      int j = getPaddingLeft();
      int k = getPaddingRight();
      paramInt3 = getPaddingTop();
      paramInt4 = getPaddingBottom();
      i = (i + (j - k)) / 2;
      paramInt2 = (paramInt2 + (paramInt3 - paramInt4)) / 2;
      a.a(localDrawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */