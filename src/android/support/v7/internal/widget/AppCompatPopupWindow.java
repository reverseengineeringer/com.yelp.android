package android.support.v7.internal.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import com.yelp.android.g.l;

public class AppCompatPopupWindow
  extends PopupWindow
{
  private final boolean a;
  
  public AppCompatPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, l.PopupWindow, paramInt, 0);
    a = paramContext.a(l.PopupWindow_overlapAnchor, false);
    setBackgroundDrawable(paramContext.a(l.PopupWindow_android_popupBackground));
    paramContext.b();
  }
  
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (Build.VERSION.SDK_INT < 21)
    {
      i = paramInt2;
      if (a) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i);
  }
  
  @TargetApi(19)
  public void showAsDropDown(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (Build.VERSION.SDK_INT < 21)
    {
      i = paramInt2;
      if (a) {
        i = paramInt2 - paramView.getHeight();
      }
    }
    super.showAsDropDown(paramView, paramInt1, i, paramInt3);
  }
  
  public void update(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((Build.VERSION.SDK_INT < 21) && (a)) {
      paramInt2 -= paramView.getHeight();
    }
    for (;;)
    {
      super.update(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.AppCompatPopupWindow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */