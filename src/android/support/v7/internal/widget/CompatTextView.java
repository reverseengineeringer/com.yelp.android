package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.g.l;
import com.yelp.android.j.a;

public class CompatTextView
  extends TextView
{
  public CompatTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CompatTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CompatTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.CompatTextView, paramInt, 0);
    boolean bool = paramAttributeSet.getBoolean(l.CompatTextView_textAllCaps, false);
    paramAttributeSet.recycle();
    if (bool) {
      setTransformationMethod(new a(paramContext));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.CompatTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */