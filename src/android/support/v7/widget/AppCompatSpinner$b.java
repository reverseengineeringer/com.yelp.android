package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.internal.widget.r;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.SpinnerAdapter;

class AppCompatSpinner$b
  extends ListPopupWindow
{
  private CharSequence c;
  private ListAdapter d;
  private final Rect e = new Rect();
  
  public AppCompatSpinner$b(final AppCompatSpinner paramAppCompatSpinner, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAppCompatSpinner);
    a(true);
    a(0);
    a(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAppCompatSpinner.setSelection(paramAnonymousInt);
        if (paramAppCompatSpinner.getOnItemClickListener() != null) {
          paramAppCompatSpinner.performItemClick(paramAnonymousView, paramAnonymousInt, AppCompatSpinner.b.a(AppCompatSpinner.b.this).getItemId(paramAnonymousInt));
        }
        i();
      }
    });
  }
  
  private boolean b(View paramView)
  {
    return (ai.F(paramView)) && (paramView.getGlobalVisibleRect(e));
  }
  
  public CharSequence a()
  {
    return c;
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    d = paramListAdapter;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
  }
  
  void b()
  {
    Object localObject = d();
    int i;
    int m;
    int n;
    int i1;
    int j;
    if (localObject != null)
    {
      ((Drawable)localObject).getPadding(AppCompatSpinner.b(a));
      if (r.a(a))
      {
        i = ba).right;
        m = a.getPaddingLeft();
        n = a.getPaddingRight();
        i1 = a.getWidth();
        if (AppCompatSpinner.c(a) != -2) {
          break label240;
        }
        j = AppCompatSpinner.a(a, (SpinnerAdapter)d, d());
        int k = a.getContext().getResources().getDisplayMetrics().widthPixels - ba).left - ba).right;
        if (j <= k) {
          break label288;
        }
        j = k;
      }
    }
    label165:
    label240:
    label288:
    for (;;)
    {
      f(Math.max(j, i1 - m - n));
      if (r.a(a)) {
        i = i1 - n - h() + i;
      }
      for (;;)
      {
        b(i);
        return;
        i = -ba).left;
        break;
        localObject = AppCompatSpinner.b(a);
        ba).right = 0;
        left = 0;
        i = 0;
        break;
        if (AppCompatSpinner.c(a) == -1)
        {
          f(i1 - m - n);
          break label165;
        }
        f(AppCompatSpinner.c(a));
        break label165;
        i += m;
      }
    }
  }
  
  public void c()
  {
    boolean bool = k();
    b();
    g(2);
    super.c();
    m().setChoiceMode(1);
    h(a.getSelectedItemPosition());
    if (bool) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = a.getViewTreeObserver();
    } while (localViewTreeObserver == null);
    final ViewTreeObserver.OnGlobalLayoutListener local2 = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        if (!AppCompatSpinner.b.a(AppCompatSpinner.b.this, a))
        {
          i();
          return;
        }
        b();
        AppCompatSpinner.b.b(AppCompatSpinner.b.this);
      }
    };
    localViewTreeObserver.addOnGlobalLayoutListener(local2);
    a(new PopupWindow.OnDismissListener()
    {
      public void onDismiss()
      {
        ViewTreeObserver localViewTreeObserver = a.getViewTreeObserver();
        if (localViewTreeObserver != null) {
          localViewTreeObserver.removeGlobalOnLayoutListener(local2);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */