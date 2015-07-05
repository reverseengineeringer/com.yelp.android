package android.support.v7.app;

import android.annotation.TargetApi;
import android.support.v7.internal.widget.NativeActionModeAwareLayout;
import android.support.v7.internal.widget.am;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;
import com.yelp.android.l.c;
import com.yelp.android.l.d;

@TargetApi(11)
class o
  extends ActionBarActivityDelegateBase
  implements am
{
  private NativeActionModeAwareLayout k;
  
  o(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }
  
  public ActionMode a(View paramView, ActionMode.Callback paramCallback)
  {
    paramView = a(new d(paramView.getContext(), paramCallback));
    if (paramView != null) {
      return new c(a, paramView);
    }
    return null;
  }
  
  void r()
  {
    k = ((NativeActionModeAwareLayout)a.findViewById(16908290));
    if (k != null) {
      k.setActionModeForChildListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */