package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v7.internal.widget.o;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.a.a.e;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;
import com.yelp.android.h.c;
import java.util.List;

public class TextInputLayout
  extends LinearLayout
{
  private EditText a;
  private CharSequence b;
  private Paint c;
  private boolean d;
  private TextView e;
  private int f;
  private ColorStateList g;
  private ColorStateList h;
  private final d i = new d(this);
  private boolean j;
  private p k;
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    i.a(a.b);
    i.b(new AccelerateInterpolator());
    i.d(8388659);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.TextInputLayout, paramInt, a.h.Widget_Design_TextInputLayout);
    b = paramContext.getText(a.i.TextInputLayout_android_hint);
    j = paramContext.getBoolean(a.i.TextInputLayout_hintAnimationEnabled, true);
    if (paramContext.hasValue(a.i.TextInputLayout_android_textColorHint))
    {
      paramAttributeSet = paramContext.getColorStateList(a.i.TextInputLayout_android_textColorHint);
      h = paramAttributeSet;
      g = paramAttributeSet;
    }
    if (paramContext.getResourceId(a.i.TextInputLayout_hintTextAppearance, -1) != -1) {
      setHintTextAppearance(paramContext.getResourceId(a.i.TextInputLayout_hintTextAppearance, 0));
    }
    f = paramContext.getResourceId(a.i.TextInputLayout_errorTextAppearance, 0);
    boolean bool = paramContext.getBoolean(a.i.TextInputLayout_errorEnabled, false);
    paramContext.recycle();
    setErrorEnabled(bool);
    if (ai.e(this) == 0) {
      ai.c(this, 1);
    }
    ai.a(this, new a(null));
  }
  
  private LinearLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {}
    for (paramLayoutParams = (LinearLayout.LayoutParams)paramLayoutParams;; paramLayoutParams = new LinearLayout.LayoutParams(paramLayoutParams))
    {
      if (c == null) {
        c = new Paint();
      }
      c.setTypeface(i.d());
      c.setTextSize(i.f());
      topMargin = ((int)-c.ascent());
      return paramLayoutParams;
    }
  }
  
  private void a(float paramFloat)
  {
    if (i.e() == paramFloat) {
      return;
    }
    if (k == null)
    {
      k = v.a();
      k.a(a.a);
      k.a(200);
      k.a(new p.c()
      {
        public void a(p paramAnonymousp)
        {
          TextInputLayout.a(TextInputLayout.this).b(paramAnonymousp.d());
        }
      });
    }
    k.a(i.e(), paramFloat);
    k.a();
  }
  
  private void a(boolean paramBoolean)
  {
    int m;
    boolean bool;
    d locald;
    if ((a != null) && (!TextUtils.isEmpty(a.getText())))
    {
      m = 1;
      bool = a(getDrawableState(), 16842908);
      if ((g != null) && (h != null))
      {
        i.b(g.getDefaultColor());
        locald = i;
        if (!bool) {
          break label106;
        }
      }
    }
    label106:
    for (int n = h.getDefaultColor();; n = g.getDefaultColor())
    {
      locald.a(n);
      if ((m == 0) && (!bool)) {
        break label117;
      }
      b(paramBoolean);
      return;
      m = 0;
      break;
    }
    label117:
    c(paramBoolean);
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int n = paramArrayOfInt.length;
    int m = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (m < n)
      {
        if (paramArrayOfInt[m] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      m += 1;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if ((k != null) && (k.b())) {
      k.e();
    }
    if ((paramBoolean) && (j))
    {
      a(1.0F);
      return;
    }
    i.b(1.0F);
  }
  
  private void c(boolean paramBoolean)
  {
    if ((k != null) && (k.b())) {
      k.e();
    }
    if ((paramBoolean) && (j))
    {
      a(0.0F);
      return;
    }
    i.b(0.0F);
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (a != null) {
      throw new IllegalArgumentException("We already have an EditText, can only have one");
    }
    a = paramEditText;
    i.a(a.getTypeface());
    i.a(a.getTextSize());
    i.c(a.getGravity());
    a.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        TextInputLayout.a(TextInputLayout.this, true);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    if (g == null) {
      g = a.getHintTextColors();
    }
    if (TextUtils.isEmpty(b))
    {
      setHint(a.getHint());
      a.setHint(null);
    }
    if (e != null) {
      ai.b(e, ai.m(a), 0, ai.n(a), a.getPaddingBottom());
    }
    a(false);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      setEditText((EditText)paramView);
      super.addView(paramView, 0, a(paramLayoutParams));
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    i.a(paramCanvas);
  }
  
  public EditText getEditText()
  {
    return a;
  }
  
  public CharSequence getError()
  {
    if ((d) && (e != null) && (e.getVisibility() == 0)) {
      return e.getText();
    }
    return null;
  }
  
  public CharSequence getHint()
  {
    return b;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (a != null)
    {
      paramInt1 = a.getLeft() + a.getCompoundPaddingLeft();
      paramInt3 = a.getRight() - a.getCompoundPaddingRight();
      i.a(paramInt1, a.getTop() + a.getCompoundPaddingTop(), paramInt3, a.getBottom() - a.getCompoundPaddingBottom());
      i.b(paramInt1, getPaddingTop(), paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      i.g();
    }
  }
  
  public void refreshDrawableState()
  {
    super.refreshDrawableState();
    a(ai.D(this));
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (!d)
    {
      if (TextUtils.isEmpty(paramCharSequence)) {
        return;
      }
      setErrorEnabled(true);
    }
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      ai.c(e, 0.0F);
      e.setText(paramCharSequence);
      ai.s(e).a(1.0F).a(200L).a(a.b).a(new be()
      {
        public void a(View paramAnonymousView)
        {
          paramAnonymousView.setVisibility(0);
        }
      }).c();
      ai.a(a, ColorStateList.valueOf(e.getCurrentTextColor()));
    }
    for (;;)
    {
      sendAccessibilityEvent(2048);
      return;
      if (e.getVisibility() == 0)
      {
        ai.s(e).a(0.0F).a(200L).a(a.b).a(new be()
        {
          public void b(View paramAnonymousView)
          {
            paramAnonymousView.setVisibility(4);
          }
        }).c();
        paramCharSequence = o.a(getContext());
        ai.a(a, paramCharSequence.c(a.e.abc_edit_text_material));
      }
    }
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    if (d != paramBoolean)
    {
      if (e != null) {
        ai.s(e).b();
      }
      if (!paramBoolean) {
        break label117;
      }
      e = new TextView(getContext());
      e.setTextAppearance(getContext(), f);
      e.setVisibility(4);
      addView(e);
      if (a != null) {
        ai.b(e, ai.m(a), 0, ai.n(a), a.getPaddingBottom());
      }
    }
    for (;;)
    {
      d = paramBoolean;
      return;
      label117:
      removeView(e);
      e = null;
    }
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    i.a(paramCharSequence);
    sendAccessibilityEvent(2048);
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void setHintTextAppearance(int paramInt)
  {
    i.e(paramInt);
    h = ColorStateList.valueOf(i.i());
    if (a != null)
    {
      a(false);
      LinearLayout.LayoutParams localLayoutParams = a(a.getLayoutParams());
      a.setLayoutParams(localLayoutParams);
      a.requestLayout();
    }
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    i.a(paramTypeface);
  }
  
  private class a
    extends android.support.v4.view.a
  {
    private a() {}
    
    public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.a(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
    }
    
    public void a(View paramView, c paramc)
    {
      super.a(paramView, paramc);
      paramc.b(TextInputLayout.class.getSimpleName());
      paramView = TextInputLayout.a(TextInputLayout.this).h();
      if (!TextUtils.isEmpty(paramView)) {
        paramc.c(paramView);
      }
      if (TextInputLayout.b(TextInputLayout.this) != null) {
        paramc.d(TextInputLayout.b(TextInputLayout.this));
      }
      if (TextInputLayout.c(TextInputLayout.this) != null) {}
      for (paramView = TextInputLayout.c(TextInputLayout.this).getText();; paramView = null)
      {
        if (!TextUtils.isEmpty(paramView))
        {
          paramc.j(true);
          paramc.e(paramView);
        }
        return;
      }
    }
    
    public void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.b(paramView, paramAccessibilityEvent);
      paramView = TextInputLayout.a(TextInputLayout.this).h();
      if (!TextUtils.isEmpty(paramView)) {
        paramAccessibilityEvent.getText().add(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */