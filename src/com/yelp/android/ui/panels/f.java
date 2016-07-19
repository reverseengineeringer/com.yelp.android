package com.yelp.android.ui.panels;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Space;
import com.yelp.android.ui.util.e;
import com.yelp.android.ui.util.n;
import com.yelp.android.ui.widgets.AutoResizeTextView;
import com.yelp.android.util.StringUtils;

public class f
  extends FrameLayout
{
  private Context a;
  private ListView b;
  private e c;
  private e d;
  private View e;
  private AutoResizeTextView f;
  private int g;
  private boolean h;
  private String i;
  private String j;
  private final AbsListView.OnScrollListener k = new f.2(this);
  private final View.OnLayoutChangeListener l = new f.3(this);
  
  private f(Context paramContext, ListView paramListView, e parame1, e parame2)
  {
    super(paramContext, null, 2130772427);
    a = paramContext;
    b = paramListView;
    b.setOnScrollListener(k);
    c = parame1;
    d = parame2;
    g = 0;
    i = "";
    j = "";
    addOnLayoutChangeListener(l);
    f = new AutoResizeTextView(a);
    f.setTextAppearance(a, 2131296461);
    f.setTypeface(null, 1);
    f.setMaxLines(1);
    f.setGravity(16);
    addView(f, new ViewGroup.LayoutParams(-1, -2));
  }
  
  private float a(View paramView)
  {
    int m = paramView.getHeight() - (b.getTop() - paramView.getTop());
    if ((m < 0) || (paramView.getParent() == null)) {
      return 1.0F;
    }
    if (m >= paramView.getHeight()) {
      return 0.0F;
    }
    return 1.0F - m / paramView.getHeight();
  }
  
  public static f a(Context paramContext, ViewGroup paramViewGroup, ListView paramListView, e parame1, e parame2)
  {
    paramContext = new f(paramContext, paramListView, parame1, parame2);
    paramViewGroup.addView(paramContext, new RelativeLayout.LayoutParams(-1, -2));
    return paramContext;
  }
  
  private void a(float paramFloat)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(i);
    if (!StringUtils.d(i))
    {
      localSpannableStringBuilder.append(", " + j);
      localSpannableStringBuilder.setSpan(new n(paramFloat), i.length(), localSpannableStringBuilder.length(), 33);
    }
    for (;;)
    {
      f.setText(localSpannableStringBuilder);
      return;
      localSpannableStringBuilder.append(j);
    }
  }
  
  private void a(int paramInt, float paramFloat)
  {
    setVisibility(0);
    setTranslationY(paramInt);
    setAlpha(paramFloat);
  }
  
  private int b()
  {
    if ((TextUtils.isEmpty(i)) && (TextUtils.isEmpty(j))) {
      return 0;
    }
    if ((!TextUtils.isEmpty(i)) && (TextUtils.isEmpty(j))) {
      return 1;
    }
    if ((TextUtils.isEmpty(i)) && (!TextUtils.isEmpty(j))) {
      return 2;
    }
    return 3;
  }
  
  private void c()
  {
    switch (g)
    {
    default: 
      return;
    case 0: 
      e();
      g();
      return;
    case 1: 
      d();
      a(h(), 1.0F);
      a(0.0F);
      return;
    case 2: 
      e();
      a(0, a((View)c.getItem(0)));
      a(1.0F);
      return;
    }
    d();
    a(h(), 1.0F);
    a(a((View)c.getItem(0)));
  }
  
  private void d()
  {
    if (h) {
      return;
    }
    h = true;
    if (e == null)
    {
      if (getHeight() == 0)
      {
        getViewTreeObserver().addOnGlobalLayoutListener(new f.1(this, this));
        return;
      }
      e = f();
      d.b(e);
      return;
    }
    d.b(e);
  }
  
  private void e()
  {
    if ((!h) || (e == null)) {
      return;
    }
    h = false;
    d.clear();
  }
  
  private View f()
  {
    if (getHeight() == 0) {
      throw new IllegalStateException("The header must have a height before the placeholder can be built.");
    }
    Space localSpace = new Space(a);
    localSpace.setLayoutParams(new AbsListView.LayoutParams(-1, getHeight()));
    return localSpace;
  }
  
  private void g()
  {
    setVisibility(4);
  }
  
  private int h()
  {
    if ((e == null) || (e.getTop() < 0) || (e.getParent() == null)) {
      return 0;
    }
    return e.getTop();
  }
  
  public void a()
  {
    setPromotedFilterText("");
  }
  
  public void setNonPromotedFilterText(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      i = paramString;
      g = b();
      c();
      return;
      paramString = "";
    }
  }
  
  public void setPromotedFilterText(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      j = paramString;
      g = b();
      c();
      return;
      paramString = "";
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */