package android.support.v7.internal.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;

@TargetApi(11)
public class NativeActionModeAwareLayout
  extends ContentFrameLayout
{
  private am a;
  
  public NativeActionModeAwareLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setActionModeForChildListener(am paramam)
  {
    a = paramam;
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    if (a != null) {
      return a.a(paramView, paramCallback);
    }
    return super.startActionModeForChild(paramView, paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.NativeActionModeAwareLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */