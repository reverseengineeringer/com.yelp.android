package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.l;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.k;
import com.yelp.android.n.a;

class d
{
  private static final int[] a = { 16842804 };
  private static final int[] b = { a.a.textAllCaps };
  private final TextView c;
  
  d(TextView paramTextView)
  {
    c = paramTextView;
  }
  
  void a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, b);
    if (paramContext.hasValue(0)) {
      a(paramContext.getBoolean(0, false));
    }
    paramContext.recycle();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    Context localContext = c.getContext();
    TypedArray localTypedArray = localContext.obtainStyledAttributes(paramAttributeSet, a, paramInt, 0);
    int i = localTypedArray.getResourceId(0, -1);
    localTypedArray.recycle();
    if (i != -1)
    {
      localTypedArray = localContext.obtainStyledAttributes(i, a.k.TextAppearance);
      if (localTypedArray.hasValue(a.k.TextAppearance_textAllCaps)) {
        a(localTypedArray.getBoolean(a.k.TextAppearance_textAllCaps, false));
      }
      localTypedArray.recycle();
    }
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, b, paramInt, 0);
    if (paramAttributeSet.hasValue(0)) {
      a(paramAttributeSet.getBoolean(0, false));
    }
    paramAttributeSet.recycle();
    paramAttributeSet = c.getTextColors();
    if ((paramAttributeSet != null) && (!paramAttributeSet.isStateful())) {
      if (Build.VERSION.SDK_INT >= 21) {
        break label165;
      }
    }
    label165:
    for (paramInt = l.c(localContext, 16842808);; paramInt = l.a(localContext, 16842808))
    {
      c.setTextColor(l.a(paramAttributeSet.getDefaultColor(), paramInt));
      return;
    }
  }
  
  void a(boolean paramBoolean)
  {
    TextView localTextView = c;
    if (paramBoolean) {}
    for (a locala = new a(c.getContext());; locala = null)
    {
      localTextView.setTransformationMethod(locala);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */