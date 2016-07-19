package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.a.a.d;
import com.yelp.android.a.a.f;
import com.yelp.android.a.a.g;
import com.yelp.android.a.a.i;

public class Snackbar$SnackbarLayout
  extends LinearLayout
{
  private TextView a;
  private Button b;
  private int c;
  private int d;
  private a e;
  
  public Snackbar$SnackbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.SnackbarLayout);
    c = paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_android_maxWidth, -1);
    d = paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_maxActionInlineWidth, -1);
    if (paramAttributeSet.hasValue(a.i.SnackbarLayout_elevation)) {
      ai.h(this, paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_elevation, 0));
    }
    paramAttributeSet.recycle();
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(a.g.design_layout_snackbar_include, this);
  }
  
  private static void a(View paramView, int paramInt1, int paramInt2)
  {
    if (ai.A(paramView))
    {
      ai.b(paramView, ai.m(paramView), paramInt1, ai.n(paramView), paramInt2);
      return;
    }
    paramView.setPadding(paramView.getPaddingLeft(), paramInt1, paramView.getPaddingRight(), paramInt2);
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
    {
      a(a, paramInt2, paramInt3);
      bool = true;
    }
    return bool;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    ai.c(a, 0.0F);
    ai.s(a).a(1.0F).a(paramInt2).b(paramInt1).c();
    if (b.getVisibility() == 0)
    {
      ai.c(b, 0.0F);
      ai.s(b).a(1.0F).a(paramInt2).b(paramInt1).c();
    }
  }
  
  void b(int paramInt1, int paramInt2)
  {
    ai.c(a, 1.0F);
    ai.s(a).a(0.0F).a(paramInt2).b(paramInt1).c();
    if (b.getVisibility() == 0)
    {
      ai.c(b, 1.0F);
      ai.s(b).a(0.0F).a(paramInt2).b(paramInt1).c();
    }
  }
  
  Button getActionView()
  {
    return b;
  }
  
  TextView getMessageView()
  {
    return a;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(a.f.snackbar_text));
    b = ((Button)findViewById(a.f.snackbar_action));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramBoolean) && (e != null)) {
      e.a(this, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (c > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > c)
      {
        i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int j = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical_2lines);
    int k = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical);
    if (a.getLayout().getLineCount() > 1)
    {
      paramInt1 = 1;
      if ((paramInt1 == 0) || (d <= 0) || (b.getMeasuredWidth() <= d)) {
        break label142;
      }
      if (!a(1, j, j - k)) {
        break label170;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        super.onMeasure(i, paramInt2);
      }
      return;
      paramInt1 = 0;
      break;
      label142:
      if (paramInt1 != 0) {}
      for (paramInt1 = j;; paramInt1 = k)
      {
        if (!a(0, paramInt1, paramInt1)) {
          break label170;
        }
        paramInt1 = 1;
        break;
      }
      label170:
      paramInt1 = 0;
    }
  }
  
  void setOnLayoutChangeListener(a parama)
  {
    e = parama;
  }
  
  static abstract interface a
  {
    public abstract void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.SnackbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */