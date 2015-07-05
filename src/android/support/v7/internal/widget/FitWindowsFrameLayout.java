package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class FitWindowsFrameLayout
  extends FrameLayout
  implements aj
{
  private ak a;
  
  public FitWindowsFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public FitWindowsFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    if (a != null) {
      a.a(paramRect);
    }
    return super.fitSystemWindows(paramRect);
  }
  
  public void setOnFitSystemWindowsListener(ak paramak)
  {
    a = paramak;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.FitWindowsFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */