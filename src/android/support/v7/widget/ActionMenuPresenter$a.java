package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.k;
import android.support.v7.internal.view.menu.p;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.j.a.a;

class ActionMenuPresenter$a
  extends k
{
  private p d;
  
  public ActionMenuPresenter$a(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, p paramp)
  {
    super(paramContext, paramp, null, false, a.a.actionOverflowMenuStyle);
    d = paramp;
    int j;
    int i;
    if (!((h)paramp.getItem()).j())
    {
      if (ActionMenuPresenter.d(paramActionMenuPresenter) == null)
      {
        paramContext = (View)ActionMenuPresenter.e(paramActionMenuPresenter);
        a(paramContext);
      }
    }
    else
    {
      a(g);
      j = paramp.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramActionMenuPresenter = paramp.getItem(i);
        if ((paramActionMenuPresenter.isVisible()) && (paramActionMenuPresenter.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        b(bool1);
        return;
        paramContext = ActionMenuPresenter.d(paramActionMenuPresenter);
        break;
      }
      i += 1;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.a(c, null);
    c.h = 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */