package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.widget.ListAdapter;

class ay
  extends ListPopupWindow
  implements bb
{
  private CharSequence c;
  private ListAdapter d;
  
  public ay(SpinnerCompat paramSpinnerCompat, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramSpinnerCompat);
    a(true);
    a(0);
    a(new az(this, paramSpinnerCompat));
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
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */