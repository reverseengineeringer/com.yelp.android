package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v7.internal.widget.bg;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

public final class ExpandedMenuView
  extends ListView
  implements k, z, AdapterView.OnItemClickListener
{
  private static final int[] a = { 16842964, 16843049 };
  private i b;
  private int c;
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = bg.a(paramContext, paramAttributeSet, a, paramInt, 0);
    if (paramContext.d(0)) {
      setBackgroundDrawable(paramContext.a(0));
    }
    if (paramContext.d(1)) {
      setDivider(paramContext.a(1));
    }
    paramContext.b();
  }
  
  public void a(i parami)
  {
    b = parami;
  }
  
  public boolean a(m paramm)
  {
    return b.a(paramm, 0);
  }
  
  public int getWindowAnimations()
  {
    return c;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a((m)getAdapter().getItem(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ExpandedMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */