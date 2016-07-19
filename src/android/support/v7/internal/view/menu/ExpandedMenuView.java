package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v7.internal.widget.p;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

public final class ExpandedMenuView
  extends ListView
  implements f.b, m, AdapterView.OnItemClickListener
{
  private static final int[] a = { 16842964, 16843049 };
  private f b;
  private int c;
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = p.a(paramContext, paramAttributeSet, a, paramInt, 0);
    if (paramContext.e(0)) {
      setBackgroundDrawable(paramContext.a(0));
    }
    if (paramContext.e(1)) {
      setDivider(paramContext.a(1));
    }
    paramContext.b();
  }
  
  public void a(f paramf)
  {
    b = paramf;
  }
  
  public boolean a(h paramh)
  {
    return b.a(paramh, 0);
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
    a((h)getAdapter().getItem(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ExpandedMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */