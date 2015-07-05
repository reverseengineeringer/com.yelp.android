package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.v;
import android.view.View;
import com.yelp.android.g.b;

class g
  extends v
{
  public g(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, i parami, View paramView, boolean paramBoolean)
  {
    super(paramContext, parami, paramView, paramBoolean, b.actionOverflowMenuStyle);
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
 * Qualified Name:     android.support.v7.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */