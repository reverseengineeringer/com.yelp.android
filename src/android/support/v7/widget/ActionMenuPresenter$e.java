package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.k;
import android.view.View;
import com.yelp.android.j.a.a;

class ActionMenuPresenter$e
  extends k
{
  public ActionMenuPresenter$e(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, f paramf, View paramView, boolean paramBoolean)
  {
    super(paramContext, paramf, paramView, paramBoolean, a.a.actionOverflowMenuStyle);
    a(8388613);
    a(g);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.c(c).close();
    ActionMenuPresenter.a(c, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */