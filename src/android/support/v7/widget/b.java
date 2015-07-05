package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.ad;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.v;
import android.view.MenuItem;
import android.view.View;

class b
  extends v
{
  private ad d;
  
  public b(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, ad paramad)
  {
    super(paramContext, paramad, null, false, com.yelp.android.g.b.actionOverflowMenuStyle);
    d = paramad;
    int j;
    int i;
    if (!((m)paramad.getItem()).j())
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
      j = paramad.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramActionMenuPresenter = paramad.getItem(i);
        if ((paramActionMenuPresenter.isVisible()) && (paramActionMenuPresenter.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        a(bool1);
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
 * Qualified Name:     android.support.v7.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */