package com.yelp.android.ui.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.util.av;

public class FloatLabelLayout
  extends LinearLayout
{
  private static final long a = av.e;
  private EditText b;
  private TextView c;
  private CharSequence d;
  private Interpolator e;
  
  public FloatLabelLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatLabelLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  @TargetApi(21)
  public FloatLabelLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(1);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.FloatLabelLayout);
    paramInt = paramAttributeSet.getDimensionPixelSize(1, a(3.0F));
    int i = paramAttributeSet.getDimensionPixelSize(3, a(4.0F));
    int j = paramAttributeSet.getDimensionPixelSize(2, a(3.0F));
    int k = paramAttributeSet.getDimensionPixelSize(4, a(4.0F));
    d = paramAttributeSet.getText(5);
    c = new TextView(paramContext);
    c.setPadding(paramInt, i, j, k);
    c.setVisibility(4);
    c.setText(d);
    ai.f(c, 0.0F);
    ai.g(c, 0.0F);
    c.setTextAppearance(paramContext, paramAttributeSet.getResourceId(0, 16973894));
    paramAttributeSet.recycle();
    addView(c, -2, -2);
    if (Build.VERSION.SDK_INT >= 21) {}
    for (paramInt = 17563661;; paramInt = 17432582)
    {
      e = AnimationUtils.loadInterpolator(paramContext, paramInt);
      return;
    }
  }
  
  private int a(float paramFloat)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, getResources().getDisplayMetrics());
  }
  
  private void a(boolean paramBoolean)
  {
    int i;
    if (!TextUtils.isEmpty(b.getText()))
    {
      i = 1;
      boolean bool = b.isFocused();
      c.setActivated(bool);
      if ((i == 0) && (!bool)) {
        break label60;
      }
      if (c.getVisibility() != 0) {
        b(paramBoolean);
      }
    }
    label60:
    while (c.getVisibility() != 0)
    {
      return;
      i = 0;
      break;
    }
    c(paramBoolean);
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c.setVisibility(0);
      ai.b(c, c.getHeight());
      float f = b.getTextSize() / c.getTextSize();
      ai.d(c, f);
      ai.e(c, f);
      ai.s(c).c(0.0F).e(1.0F).d(1.0F).a(a).a(null).a(e).c();
    }
    for (;;)
    {
      b.setHint(null);
      return;
      c.setVisibility(0);
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      float f = b.getTextSize() / c.getTextSize();
      ai.d(c, 1.0F);
      ai.e(c, 1.0F);
      ai.b(c, 0.0F);
      ai.s(c).c(c.getHeight()).a(a).d(f).e(f).a(new FloatLabelLayout.3(this)).a(e).c();
      return;
    }
    c.setVisibility(4);
    b.setHint(d);
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (b != null) {
      throw new IllegalArgumentException("We already have an EditText, can only have one");
    }
    b = paramEditText;
    a(false);
    b.addTextChangedListener(new FloatLabelLayout.1(this));
    b.setOnFocusChangeListener(new FloatLabelLayout.2(this));
    if (TextUtils.isEmpty(d)) {
      setHint(b.getHint());
    }
  }
  
  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText)) {
      setEditText((EditText)paramView);
    }
    label89:
    for (;;)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int j = localViewGroup.getChildCount();
        int i = 0;
        for (;;)
        {
          if (i >= j) {
            break label89;
          }
          View localView = localViewGroup.getChildAt(i);
          if ((localView instanceof EditText))
          {
            setEditText((EditText)localView);
            break;
          }
          i += 1;
        }
      }
    }
  }
  
  public EditText getEditText()
  {
    return b;
  }
  
  public TextView getLabel()
  {
    return c;
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    c.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.FloatLabelLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */