package android.support.v7.internal.widget;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;

class ActivityChooserView$b
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private ActivityChooserView$b(ActivityChooserView paramActivityChooserView) {}
  
  private void a()
  {
    if (ActivityChooserView.h(a) != null) {
      ActivityChooserView.h(a).onDismiss();
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(a))
    {
      a.b();
      paramView = ActivityChooserView.a(a).b();
      int i = ActivityChooserView.a(a).e().a(paramView);
      paramView = ActivityChooserView.a(a).e().b(i);
      if (paramView != null)
      {
        paramView.addFlags(524288);
        a.getContext().startActivity(paramView);
      }
      return;
    }
    if (paramView == ActivityChooserView.f(a))
    {
      ActivityChooserView.a(a, false);
      ActivityChooserView.a(a, ActivityChooserView.g(a));
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public void onDismiss()
  {
    a();
    if (a.a != null) {
      a.a.a(false);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((ActivityChooserView.a)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      ActivityChooserView.a(a, Integer.MAX_VALUE);
    }
    do
    {
      return;
      a.b();
      if (!ActivityChooserView.d(a)) {
        break;
      }
    } while (paramInt <= 0);
    ActivityChooserView.a(a).e().c(paramInt);
    return;
    if (ActivityChooserView.a(a).f()) {}
    for (;;)
    {
      paramAdapterView = ActivityChooserView.a(a).e().b(paramInt);
      if (paramAdapterView == null) {
        break;
      }
      paramAdapterView.addFlags(524288);
      a.getContext().startActivity(paramAdapterView);
      return;
      paramInt += 1;
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(a))
    {
      if (ActivityChooserView.a(a).getCount() > 0)
      {
        ActivityChooserView.a(a, true);
        ActivityChooserView.a(a, ActivityChooserView.g(a));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */