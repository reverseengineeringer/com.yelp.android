package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.l;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.widget.j;
import android.support.v7.internal.widget.r;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.k;
import com.yelp.android.r.b;
import java.util.ArrayList;
import java.util.List;

public class Toolbar
  extends ViewGroup
{
  private boolean A;
  private final ArrayList<View> B = new ArrayList();
  private final ArrayList<View> C = new ArrayList();
  private final int[] D = new int[2];
  private b E;
  private final ActionMenuView.d F = new ActionMenuView.d()
  {
    public boolean a(MenuItem paramAnonymousMenuItem)
    {
      if (Toolbar.a(Toolbar.this) != null) {
        return Toolbar.a(Toolbar.this).a(paramAnonymousMenuItem);
      }
      return false;
    }
  };
  private android.support.v7.internal.widget.q G;
  private ActionMenuPresenter H;
  private a I;
  private l.a J;
  private f.a K;
  private boolean L;
  private final Runnable M = new Runnable()
  {
    public void run()
    {
      d();
    }
  };
  private final android.support.v7.internal.widget.o N;
  View a;
  private ActionMenuView b;
  private TextView c;
  private TextView d;
  private ImageButton e;
  private ImageView f;
  private Drawable g;
  private CharSequence h;
  private ImageButton i;
  private Context j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private final j t = new j();
  private int u = 8388627;
  private CharSequence v;
  private CharSequence w;
  private int x;
  private int y;
  private boolean z;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.toolbarStyle);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = android.support.v7.internal.widget.p.a(getContext(), paramAttributeSet, a.k.Toolbar, paramInt, 0);
    l = paramContext.g(a.k.Toolbar_titleTextAppearance, 0);
    m = paramContext.g(a.k.Toolbar_subtitleTextAppearance, 0);
    u = paramContext.c(a.k.Toolbar_android_gravity, u);
    n = 48;
    paramInt = paramContext.d(a.k.Toolbar_titleMargins, 0);
    s = paramInt;
    r = paramInt;
    q = paramInt;
    p = paramInt;
    paramInt = paramContext.d(a.k.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0) {
      p = paramInt;
    }
    paramInt = paramContext.d(a.k.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0) {
      q = paramInt;
    }
    paramInt = paramContext.d(a.k.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0) {
      r = paramInt;
    }
    paramInt = paramContext.d(a.k.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0) {
      s = paramInt;
    }
    o = paramContext.e(a.k.Toolbar_maxButtonHeight, -1);
    paramInt = paramContext.d(a.k.Toolbar_contentInsetStart, Integer.MIN_VALUE);
    int i1 = paramContext.d(a.k.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
    int i2 = paramContext.e(a.k.Toolbar_contentInsetLeft, 0);
    int i3 = paramContext.e(a.k.Toolbar_contentInsetRight, 0);
    t.b(i2, i3);
    if ((paramInt != Integer.MIN_VALUE) || (i1 != Integer.MIN_VALUE)) {
      t.a(paramInt, i1);
    }
    g = paramContext.a(a.k.Toolbar_collapseIcon);
    h = paramContext.c(a.k.Toolbar_collapseContentDescription);
    paramAttributeSet = paramContext.c(a.k.Toolbar_title);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setTitle(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(a.k.Toolbar_subtitle);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setSubtitle(paramAttributeSet);
    }
    j = getContext();
    setPopupTheme(paramContext.g(a.k.Toolbar_popupTheme, 0));
    paramAttributeSet = paramContext.a(a.k.Toolbar_navigationIcon);
    if (paramAttributeSet != null) {
      setNavigationIcon(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(a.k.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setNavigationContentDescription(paramAttributeSet);
    }
    paramAttributeSet = paramContext.a(a.k.Toolbar_logo);
    if (paramAttributeSet != null) {
      setLogo(paramAttributeSet);
    }
    paramAttributeSet = paramContext.c(a.k.Toolbar_logoDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setLogoDescription(paramAttributeSet);
    }
    if (paramContext.e(a.k.Toolbar_titleTextColor)) {
      setTitleTextColor(paramContext.b(a.k.Toolbar_titleTextColor, -1));
    }
    if (paramContext.e(a.k.Toolbar_subtitleTextColor)) {
      setSubtitleTextColor(paramContext.b(a.k.Toolbar_subtitleTextColor, -1));
    }
    paramContext.b();
    N = paramContext.c();
  }
  
  private int a(int paramInt)
  {
    int i1 = paramInt & 0x70;
    paramInt = i1;
    switch (i1)
    {
    default: 
      paramInt = u & 0x70;
    }
    return paramInt;
  }
  
  private int a(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i2 = paramView.getMeasuredHeight();
    int i1;
    int i3;
    int i4;
    if (paramInt > 0)
    {
      paramInt = (i2 - paramInt) / 2;
      switch (a(a))
      {
      default: 
        i1 = getPaddingTop();
        i3 = getPaddingBottom();
        i4 = getHeight();
        paramInt = (i4 - i1 - i3 - i2) / 2;
        if (paramInt < topMargin) {
          paramInt = topMargin;
        }
        break;
      }
    }
    for (;;)
    {
      return paramInt + i1;
      paramInt = 0;
      break;
      return getPaddingTop() - paramInt;
      return getHeight() - getPaddingBottom() - i2 - bottomMargin - paramInt;
      i2 = i4 - i3 - i2 - paramInt - i1;
      if (i2 < bottomMargin) {
        paramInt = Math.max(0, paramInt - (bottomMargin - i2));
      }
    }
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    int i2 = rightMargin - paramArrayOfInt[1];
    int i3 = Math.max(0, i1) + Math.max(0, i2);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramArrayOfInt[1] = Math.max(0, -i2);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + i3 + paramInt2, width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + paramInt4, height));
    return paramView.getMeasuredWidth() + i3;
  }
  
  private int a(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    paramInt1 = Math.max(0, i1) + paramInt1;
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i1, paramView.getMeasuredHeight() + paramInt2);
    return rightMargin + i1 + paramInt1;
  }
  
  private int a(List<View> paramList, int[] paramArrayOfInt)
  {
    int i4 = paramArrayOfInt[0];
    int i3 = paramArrayOfInt[1];
    int i5 = paramList.size();
    int i2 = 0;
    int i1 = 0;
    while (i2 < i5)
    {
      paramArrayOfInt = (View)paramList.get(i2);
      LayoutParams localLayoutParams = (LayoutParams)paramArrayOfInt.getLayoutParams();
      i4 = leftMargin - i4;
      i3 = rightMargin - i3;
      int i6 = Math.max(0, i4);
      int i7 = Math.max(0, i3);
      i4 = Math.max(0, -i4);
      i3 = Math.max(0, -i3);
      int i8 = paramArrayOfInt.getMeasuredWidth();
      i2 += 1;
      i1 += i8 + i6 + i7;
    }
    return i1;
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + paramInt2, width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + paramInt4, height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0)
      {
        paramInt1 = paramInt5;
        if (paramInt3 != 0) {
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i1, paramInt1);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = i();
    }
    for (;;)
    {
      b = 1;
      if ((!paramBoolean) || (a == null)) {
        break;
      }
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      C.add(paramView);
      return;
      if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
        localObject = a((ViewGroup.LayoutParams)localObject);
      } else {
        localObject = (LayoutParams)localObject;
      }
    }
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  private void a(List<View> paramList, int paramInt)
  {
    int i1 = 1;
    int i2 = 0;
    if (ai.h(this) == 1) {}
    int i4;
    int i3;
    View localView;
    LayoutParams localLayoutParams;
    for (;;)
    {
      i4 = getChildCount();
      i3 = android.support.v4.view.e.a(paramInt, ai.h(this));
      paramList.clear();
      paramInt = i2;
      if (i1 == 0) {
        break;
      }
      paramInt = i4 - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if ((b == 0) && (a(localView)) && (b(a) == i3)) {
          paramList.add(localView);
        }
        paramInt -= 1;
      }
      i1 = 0;
    }
    while (paramInt < i4)
    {
      localView = getChildAt(paramInt);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if ((b == 0) && (a(localView)) && (b(a) == i3)) {
        paramList.add(localView);
      }
      paramInt += 1;
    }
  }
  
  private boolean a(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }
  
  private int b(int paramInt)
  {
    int i2 = ai.h(this);
    int i1 = android.support.v4.view.e.a(paramInt, i2) & 0x7;
    paramInt = i1;
    switch (i1)
    {
    case 2: 
    case 4: 
    default: 
      if (i2 == 1) {
        paramInt = 5;
      }
      break;
    case 1: 
    case 3: 
    case 5: 
      return paramInt;
    }
    return 3;
  }
  
  private int b(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = android.support.v4.view.o.a(paramView);
    return android.support.v4.view.o.b(paramView) + i1;
  }
  
  private int b(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i1);
    paramArrayOfInt[1] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i1, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (leftMargin + i1);
  }
  
  private int c(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = topMargin;
    return bottomMargin + i1;
  }
  
  private boolean d(View paramView)
  {
    return (paramView.getParent() == this) || (C.contains(paramView));
  }
  
  private MenuInflater getMenuInflater()
  {
    return new com.yelp.android.p.e(getContext());
  }
  
  private void l()
  {
    if (f == null) {
      f = new ImageView(getContext());
    }
  }
  
  private void m()
  {
    n();
    if (b.d() == null)
    {
      android.support.v7.internal.view.menu.f localf = (android.support.v7.internal.view.menu.f)b.getMenu();
      if (I == null) {
        I = new a(null);
      }
      b.setExpandedActionViewsExclusive(true);
      localf.a(I, j);
    }
  }
  
  private void n()
  {
    if (b == null)
    {
      b = new ActionMenuView(getContext());
      b.setPopupTheme(k);
      b.setOnMenuItemClickListener(F);
      b.a(J, K);
      LayoutParams localLayoutParams = i();
      a = (0x800005 | n & 0x70);
      b.setLayoutParams(localLayoutParams);
      a(b, false);
    }
  }
  
  private void o()
  {
    if (e == null)
    {
      e = new ImageButton(getContext(), null, a.a.toolbarNavigationButtonStyle);
      LayoutParams localLayoutParams = i();
      a = (0x800003 | n & 0x70);
      e.setLayoutParams(localLayoutParams);
    }
  }
  
  private void p()
  {
    if (i == null)
    {
      i = new ImageButton(getContext(), null, a.a.toolbarNavigationButtonStyle);
      i.setImageDrawable(g);
      i.setContentDescription(h);
      LayoutParams localLayoutParams = i();
      a = (0x800003 | n & 0x70);
      b = 2;
      i.setLayoutParams(localLayoutParams);
      i.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          h();
        }
      });
    }
  }
  
  private void q()
  {
    removeCallbacks(M);
    post(M);
  }
  
  private boolean r()
  {
    if (!L) {
      return false;
    }
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        break label56;
      }
      View localView = getChildAt(i1);
      if ((a(localView)) && (localView.getMeasuredWidth() > 0) && (localView.getMeasuredHeight() > 0)) {
        break;
      }
      i1 += 1;
    }
    label56:
    return true;
  }
  
  public LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ActionBar.LayoutParams)) {
      return new LayoutParams((ActionBar.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    t.a(paramInt1, paramInt2);
  }
  
  public void a(Context paramContext, int paramInt)
  {
    l = paramInt;
    if (c != null) {
      c.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void a(android.support.v7.internal.view.menu.f paramf, ActionMenuPresenter paramActionMenuPresenter)
  {
    if ((paramf == null) && (b == null)) {}
    android.support.v7.internal.view.menu.f localf;
    do
    {
      return;
      n();
      localf = b.d();
    } while (localf == paramf);
    if (localf != null)
    {
      localf.b(H);
      localf.b(I);
    }
    if (I == null) {
      I = new a(null);
    }
    paramActionMenuPresenter.d(true);
    if (paramf != null)
    {
      paramf.a(paramActionMenuPresenter, j);
      paramf.a(I, j);
    }
    for (;;)
    {
      b.setPopupTheme(k);
      b.setPresenter(paramActionMenuPresenter);
      H = paramActionMenuPresenter;
      return;
      paramActionMenuPresenter.a(j, null);
      I.a(j, null);
      paramActionMenuPresenter.a(true);
      I.a(true);
    }
  }
  
  public void a(l.a parama, f.a parama1)
  {
    J = parama;
    K = parama1;
  }
  
  public boolean a()
  {
    return (getVisibility() == 0) && (b != null) && (b.a());
  }
  
  public void b(Context paramContext, int paramInt)
  {
    m = paramInt;
    if (d != null) {
      d.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public boolean b()
  {
    return (b != null) && (b.g());
  }
  
  public boolean c()
  {
    return (b != null) && (b.h());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public boolean d()
  {
    return (b != null) && (b.e());
  }
  
  public boolean e()
  {
    return (b != null) && (b.f());
  }
  
  public void f()
  {
    if (b != null) {
      b.i();
    }
  }
  
  public boolean g()
  {
    return (I != null) && (I.b != null);
  }
  
  public int getContentInsetEnd()
  {
    return t.d();
  }
  
  public int getContentInsetLeft()
  {
    return t.a();
  }
  
  public int getContentInsetRight()
  {
    return t.b();
  }
  
  public int getContentInsetStart()
  {
    return t.c();
  }
  
  public Drawable getLogo()
  {
    if (f != null) {
      return f.getDrawable();
    }
    return null;
  }
  
  public CharSequence getLogoDescription()
  {
    if (f != null) {
      return f.getContentDescription();
    }
    return null;
  }
  
  public Menu getMenu()
  {
    m();
    return b.getMenu();
  }
  
  public CharSequence getNavigationContentDescription()
  {
    if (e != null) {
      return e.getContentDescription();
    }
    return null;
  }
  
  public Drawable getNavigationIcon()
  {
    if (e != null) {
      return e.getDrawable();
    }
    return null;
  }
  
  public Drawable getOverflowIcon()
  {
    m();
    return b.getOverflowIcon();
  }
  
  public int getPopupTheme()
  {
    return k;
  }
  
  public CharSequence getSubtitle()
  {
    return w;
  }
  
  public CharSequence getTitle()
  {
    return v;
  }
  
  public android.support.v7.internal.widget.f getWrapper()
  {
    if (G == null) {
      G = new android.support.v7.internal.widget.q(this, true);
    }
    return G;
  }
  
  public void h()
  {
    if (I == null) {}
    for (h localh = null;; localh = I.b)
    {
      if (localh != null) {
        localh.collapseActionView();
      }
      return;
    }
  }
  
  protected LayoutParams i()
  {
    return new LayoutParams(-2, -2);
  }
  
  void j()
  {
    int i1 = getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = getChildAt(i1);
      if ((getLayoutParamsb != 2) && (localView != b))
      {
        removeViewAt(i1);
        C.add(localView);
      }
      i1 -= 1;
    }
  }
  
  void k()
  {
    int i1 = C.size() - 1;
    while (i1 >= 0)
    {
      addView((View)C.get(i1));
      i1 -= 1;
    }
    C.clear();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(M);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = t.a(paramMotionEvent);
    if (i1 == 9) {
      A = false;
    }
    if (!A)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i1 == 9) && (!bool)) {
        A = true;
      }
    }
    if ((i1 == 10) || (i1 == 3)) {
      A = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i3;
    int i6;
    int i9;
    int i1;
    int i7;
    int i8;
    int i10;
    int[] arrayOfInt;
    int i5;
    if (ai.h(this) == 1)
    {
      i3 = 1;
      i6 = getWidth();
      i9 = getHeight();
      i1 = getPaddingLeft();
      i7 = getPaddingRight();
      i8 = getPaddingTop();
      i10 = getPaddingBottom();
      paramInt4 = i6 - i7;
      arrayOfInt = D;
      arrayOfInt[1] = 0;
      arrayOfInt[0] = 0;
      i5 = ai.r(this);
      if (!a(e)) {
        break label1565;
      }
      if (i3 == 0) {
        break label876;
      }
      paramInt4 = b(e, paramInt4, arrayOfInt, i5);
      paramInt1 = i1;
    }
    for (;;)
    {
      label111:
      paramInt2 = paramInt4;
      paramInt3 = paramInt1;
      if (a(i))
      {
        if (i3 != 0)
        {
          paramInt2 = b(i, paramInt4, arrayOfInt, i5);
          paramInt3 = paramInt1;
        }
      }
      else
      {
        label151:
        paramInt1 = paramInt2;
        paramInt4 = paramInt3;
        if (a(b))
        {
          if (i3 == 0) {
            break label915;
          }
          paramInt4 = a(b, paramInt3, arrayOfInt, i5);
          paramInt1 = paramInt2;
        }
        label191:
        arrayOfInt[0] = Math.max(0, getContentInsetLeft() - paramInt4);
        arrayOfInt[1] = Math.max(0, getContentInsetRight() - (i6 - i7 - paramInt1));
        paramInt3 = Math.max(paramInt4, getContentInsetLeft());
        paramInt4 = Math.min(paramInt1, i6 - i7 - getContentInsetRight());
        paramInt2 = paramInt4;
        paramInt1 = paramInt3;
        if (a(a))
        {
          if (i3 == 0) {
            break label936;
          }
          paramInt2 = b(a, paramInt4, arrayOfInt, i5);
          paramInt1 = paramInt3;
        }
        label293:
        if (!a(f)) {
          break label1559;
        }
        if (i3 == 0) {
          break label957;
        }
        paramInt2 = b(f, paramInt2, arrayOfInt, i5);
        paramInt3 = paramInt1;
      }
      for (;;)
      {
        label326:
        paramBoolean = a(c);
        boolean bool = a(d);
        paramInt1 = 0;
        Object localObject1;
        if (paramBoolean)
        {
          localObject1 = (LayoutParams)c.getLayoutParams();
          paramInt1 = topMargin;
          paramInt4 = c.getMeasuredHeight();
          paramInt1 = 0 + (bottomMargin + (paramInt1 + paramInt4));
        }
        int i2;
        if (bool)
        {
          localObject1 = (LayoutParams)d.getLayoutParams();
          paramInt4 = topMargin;
          i2 = d.getMeasuredHeight();
        }
        for (int i4 = bottomMargin + (paramInt4 + i2) + paramInt1;; i4 = paramInt1)
        {
          label464:
          Object localObject2;
          if (!paramBoolean)
          {
            paramInt4 = paramInt2;
            paramInt1 = paramInt3;
            if (!bool) {}
          }
          else
          {
            if (!paramBoolean) {
              break label975;
            }
            localObject1 = c;
            if (!bool) {
              break label984;
            }
            localObject2 = d;
            label475:
            localObject1 = (LayoutParams)((View)localObject1).getLayoutParams();
            localObject2 = (LayoutParams)((View)localObject2).getLayoutParams();
            if (((!paramBoolean) || (c.getMeasuredWidth() <= 0)) && ((!bool) || (d.getMeasuredWidth() <= 0))) {
              break label993;
            }
            i2 = 1;
            label527:
            switch (u & 0x70)
            {
            default: 
              paramInt1 = (i9 - i8 - i10 - i4) / 2;
              if (paramInt1 < topMargin + r) {
                paramInt1 = topMargin + r;
              }
              break;
            }
          }
          label599:
          label604:
          label620:
          label876:
          label915:
          label936:
          label957:
          label975:
          label984:
          label993:
          label1113:
          label1527:
          label1544:
          label1550:
          for (;;)
          {
            paramInt1 = i8 + paramInt1;
            if (i3 != 0) {
              if (i2 != 0)
              {
                paramInt4 = p;
                paramInt4 -= arrayOfInt[1];
                paramInt2 -= Math.max(0, paramInt4);
                arrayOfInt[1] = Math.max(0, -paramInt4);
                if (!paramBoolean) {
                  break label1544;
                }
                localObject1 = (LayoutParams)c.getLayoutParams();
                paramInt4 = paramInt2 - c.getMeasuredWidth();
                i3 = c.getMeasuredHeight() + paramInt1;
                c.layout(paramInt4, paramInt1, paramInt2, i3);
                i4 = q;
                paramInt1 = i3 + bottomMargin;
                paramInt4 -= i4;
              }
            }
            for (;;)
            {
              if (bool)
              {
                localObject1 = (LayoutParams)d.getLayoutParams();
                paramInt1 = topMargin + paramInt1;
                i3 = d.getMeasuredWidth();
                i4 = d.getMeasuredHeight() + paramInt1;
                d.layout(paramInt2 - i3, paramInt1, paramInt2, i4);
                paramInt1 = q;
                i3 = bottomMargin;
              }
              for (paramInt1 = paramInt2 - paramInt1;; paramInt1 = paramInt2)
              {
                if (i2 != 0) {}
                for (paramInt1 = Math.min(paramInt4, paramInt1);; paramInt1 = paramInt2)
                {
                  paramInt4 = paramInt1;
                  paramInt1 = paramInt3;
                  a(B, 3);
                  paramInt3 = B.size();
                  paramInt2 = 0;
                  for (;;)
                  {
                    if (paramInt2 < paramInt3)
                    {
                      paramInt1 = a((View)B.get(paramInt2), paramInt1, arrayOfInt, i5);
                      paramInt2 += 1;
                      continue;
                      i3 = 0;
                      break;
                      paramInt1 = a(e, i1, arrayOfInt, i5);
                      break label111;
                      paramInt3 = a(i, paramInt1, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label151;
                      paramInt1 = b(b, paramInt2, arrayOfInt, i5);
                      paramInt4 = paramInt3;
                      break label191;
                      paramInt1 = a(a, paramInt3, arrayOfInt, i5);
                      paramInt2 = paramInt4;
                      break label293;
                      paramInt3 = a(f, paramInt1, arrayOfInt, i5);
                      break label326;
                      localObject1 = d;
                      break label464;
                      localObject2 = c;
                      break label475;
                      i2 = 0;
                      break label527;
                      paramInt1 = getPaddingTop();
                      paramInt1 = topMargin + paramInt1 + r;
                      break label604;
                      paramInt4 = i9 - i10 - i4 - paramInt1 - i8;
                      if (paramInt4 >= bottomMargin + s) {
                        break label1550;
                      }
                      paramInt1 = Math.max(0, paramInt1 - (bottomMargin + s - paramInt4));
                      break label599;
                      paramInt1 = i9 - i10 - bottomMargin - s - i4;
                      break label604;
                      paramInt4 = 0;
                      break label620;
                      if (i2 != 0)
                      {
                        paramInt4 = p;
                        paramInt4 -= arrayOfInt[0];
                        paramInt3 += Math.max(0, paramInt4);
                        arrayOfInt[0] = Math.max(0, -paramInt4);
                        if (!paramBoolean) {
                          break label1527;
                        }
                        localObject1 = (LayoutParams)c.getLayoutParams();
                        i3 = c.getMeasuredWidth() + paramInt3;
                        paramInt4 = c.getMeasuredHeight() + paramInt1;
                        c.layout(paramInt3, paramInt1, i3, paramInt4);
                        i4 = q;
                        paramInt1 = bottomMargin;
                        i3 += i4;
                        paramInt1 += paramInt4;
                      }
                    }
                  }
                  for (;;)
                  {
                    if (bool)
                    {
                      localObject1 = (LayoutParams)d.getLayoutParams();
                      paramInt4 = paramInt1 + topMargin;
                      paramInt1 = d.getMeasuredWidth() + paramInt3;
                      i4 = d.getMeasuredHeight() + paramInt4;
                      d.layout(paramInt3, paramInt4, paramInt1, i4);
                      paramInt4 = q;
                      i4 = bottomMargin;
                    }
                    for (i4 = paramInt4 + paramInt1;; i4 = paramInt3)
                    {
                      paramInt4 = paramInt2;
                      paramInt1 = paramInt3;
                      if (i2 == 0) {
                        break;
                      }
                      paramInt1 = Math.max(i3, i4);
                      paramInt4 = paramInt2;
                      break;
                      paramInt4 = 0;
                      break label1113;
                      a(B, 5);
                      paramInt3 = B.size();
                      paramInt2 = 0;
                      while (paramInt2 < paramInt3)
                      {
                        paramInt4 = b((View)B.get(paramInt2), paramInt4, arrayOfInt, i5);
                        paramInt2 += 1;
                      }
                      a(B, 1);
                      paramInt3 = a(B, arrayOfInt);
                      paramInt2 = (i6 - i1 - i7) / 2 + i1 - paramInt3 / 2;
                      paramInt3 += paramInt2;
                      if (paramInt2 < paramInt1) {}
                      for (;;)
                      {
                        paramInt4 = B.size();
                        paramInt3 = 0;
                        paramInt2 = paramInt1;
                        paramInt1 = paramInt3;
                        while (paramInt1 < paramInt4)
                        {
                          paramInt2 = a((View)B.get(paramInt1), paramInt2, arrayOfInt, i5);
                          paramInt1 += 1;
                        }
                        paramInt1 = paramInt2;
                        if (paramInt3 > paramInt4) {
                          paramInt1 = paramInt2 - (paramInt3 - paramInt4);
                        }
                      }
                      B.clear();
                      return;
                    }
                    i3 = paramInt3;
                  }
                }
              }
              paramInt4 = paramInt2;
            }
          }
        }
        label1559:
        paramInt3 = paramInt1;
      }
      label1565:
      paramInt1 = i1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = 0;
    int i3 = 0;
    int[] arrayOfInt = D;
    int i5;
    int i6;
    int i1;
    int i7;
    int i2;
    int i8;
    label529:
    View localView;
    if (r.a(this))
    {
      i5 = 0;
      i6 = 1;
      i1 = 0;
      if (a(e))
      {
        a(e, paramInt1, 0, paramInt2, 0, o);
        i1 = e.getMeasuredWidth() + b(e);
        i4 = Math.max(0, e.getMeasuredHeight() + c(e));
        i3 = r.a(0, ai.l(e));
      }
      i7 = i1;
      i1 = i3;
      i2 = i4;
      if (a(i))
      {
        a(i, paramInt1, 0, paramInt2, 0, o);
        i7 = i.getMeasuredWidth() + b(i);
        i2 = Math.max(i4, i.getMeasuredHeight() + c(i));
        i1 = r.a(i3, ai.l(i));
      }
      i3 = getContentInsetStart();
      i8 = 0 + Math.max(i3, i7);
      arrayOfInt[i6] = Math.max(0, i3 - i7);
      i6 = 0;
      i3 = i1;
      i4 = i2;
      if (a(b))
      {
        a(b, paramInt1, i8, paramInt2, 0, o);
        i6 = b.getMeasuredWidth() + b(b);
        i4 = Math.max(i2, b.getMeasuredHeight() + c(b));
        i3 = r.a(i1, ai.l(b));
      }
      i1 = getContentInsetEnd();
      i7 = i8 + Math.max(i1, i6);
      arrayOfInt[i5] = Math.max(0, i1 - i6);
      i6 = i7;
      i1 = i3;
      i2 = i4;
      if (a(a))
      {
        i6 = i7 + a(a, paramInt1, i7, paramInt2, 0, arrayOfInt);
        i2 = Math.max(i4, a.getMeasuredHeight() + c(a));
        i1 = r.a(i3, ai.l(a));
      }
      i3 = i6;
      i4 = i1;
      i5 = i2;
      if (a(f))
      {
        i3 = i6 + a(f, paramInt1, i6, paramInt2, 0, arrayOfInt);
        i5 = Math.max(i2, f.getMeasuredHeight() + c(f));
        i4 = r.a(i1, ai.l(f));
      }
      i7 = getChildCount();
      i6 = 0;
      i2 = i5;
      i1 = i4;
      i4 = i6;
      i6 = i3;
      if (i4 >= i7) {
        break label635;
      }
      localView = getChildAt(i4);
      if (getLayoutParamsb != 0) {
        break label938;
      }
      if (a(localView)) {
        break label585;
      }
    }
    label585:
    label635:
    label938:
    for (;;)
    {
      i4 += 1;
      break label529;
      i5 = 1;
      i6 = 0;
      break;
      i6 += a(localView, paramInt1, i6, paramInt2, 0, arrayOfInt);
      i2 = Math.max(i2, localView.getMeasuredHeight() + c(localView));
      i1 = r.a(i1, ai.l(localView));
      continue;
      i5 = 0;
      i4 = 0;
      int i9 = r + s;
      int i10 = p + q;
      i3 = i1;
      if (a(c))
      {
        a(c, paramInt1, i6 + i10, paramInt2, i9, arrayOfInt);
        i3 = c.getMeasuredWidth();
        i5 = b(c) + i3;
        i4 = c.getMeasuredHeight() + c(c);
        i3 = r.a(i1, ai.l(c));
      }
      i8 = i4;
      i7 = i5;
      i1 = i3;
      if (a(d))
      {
        i7 = Math.max(i5, a(d, paramInt1, i6 + i10, paramInt2, i9 + i4, arrayOfInt));
        i8 = i4 + (d.getMeasuredHeight() + c(d));
        i1 = r.a(i3, ai.l(d));
      }
      i2 = Math.max(i2, i8);
      i5 = getPaddingLeft();
      i8 = getPaddingRight();
      i3 = getPaddingTop();
      i4 = getPaddingBottom();
      i5 = ai.a(Math.max(i7 + i6 + (i5 + i8), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i1);
      paramInt1 = ai.a(Math.max(i2 + (i3 + i4), getSuggestedMinimumHeight()), paramInt2, i1 << 16);
      if (r()) {
        paramInt1 = 0;
      }
      setMeasuredDimension(i5, paramInt1);
      return;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (b != null) {}
    for (paramParcelable = b.d();; paramParcelable = null)
    {
      if ((a != 0) && (I != null) && (paramParcelable != null))
      {
        paramParcelable = paramParcelable.findItem(a);
        if (paramParcelable != null) {
          android.support.v4.view.q.b(paramParcelable);
        }
      }
      if (b) {
        q();
      }
      return;
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 17) {
      super.onRtlPropertiesChanged(paramInt);
    }
    j localj = t;
    if (paramInt == 1) {}
    for (;;)
    {
      localj.a(bool);
      return;
      bool = false;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if ((I != null) && (I.b != null)) {
      a = I.b.getItemId();
    }
    b = b();
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = t.a(paramMotionEvent);
    if (i1 == 0) {
      z = false;
    }
    if (!z)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i1 == 0) && (!bool)) {
        z = true;
      }
    }
    if ((i1 == 1) || (i1 == 3)) {
      z = false;
    }
    return true;
  }
  
  public void setCollapsible(boolean paramBoolean)
  {
    L = paramBoolean;
    requestLayout();
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(N.a(paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      l();
      if (!d(f)) {
        a(f, true);
      }
    }
    for (;;)
    {
      if (f != null) {
        f.setImageDrawable(paramDrawable);
      }
      return;
      if ((f != null) && (d(f)))
      {
        removeView(f);
        C.remove(f);
      }
    }
  }
  
  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      l();
    }
    if (f != null) {
      f.setContentDescription(paramCharSequence);
    }
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = getContext().getText(paramInt);; localCharSequence = null)
    {
      setNavigationContentDescription(localCharSequence);
      return;
    }
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      o();
    }
    if (e != null) {
      e.setContentDescription(paramCharSequence);
    }
  }
  
  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(N.a(paramInt));
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      o();
      if (!d(e)) {
        a(e, true);
      }
    }
    for (;;)
    {
      if (e != null) {
        e.setImageDrawable(paramDrawable);
      }
      return;
      if ((e != null) && (d(e)))
      {
        removeView(e);
        C.remove(e);
      }
    }
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    o();
    e.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(b paramb)
  {
    E = paramb;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    m();
    b.setOverflowIcon(paramDrawable);
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (k != paramInt)
    {
      k = paramInt;
      if (paramInt == 0) {
        j = getContext();
      }
    }
    else
    {
      return;
    }
    j = new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (d == null)
      {
        Context localContext = getContext();
        d = new TextView(localContext);
        d.setSingleLine();
        d.setEllipsize(TextUtils.TruncateAt.END);
        if (m != 0) {
          d.setTextAppearance(localContext, m);
        }
        if (y != 0) {
          d.setTextColor(y);
        }
      }
      if (!d(d)) {
        a(d, true);
      }
    }
    for (;;)
    {
      if (d != null) {
        d.setText(paramCharSequence);
      }
      w = paramCharSequence;
      return;
      if ((d != null) && (d(d)))
      {
        removeView(d);
        C.remove(d);
      }
    }
  }
  
  public void setSubtitleTextColor(int paramInt)
  {
    y = paramInt;
    if (d != null) {
      d.setTextColor(paramInt);
    }
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (c == null)
      {
        Context localContext = getContext();
        c = new TextView(localContext);
        c.setSingleLine();
        c.setEllipsize(TextUtils.TruncateAt.END);
        if (l != 0) {
          c.setTextAppearance(localContext, l);
        }
        if (x != 0) {
          c.setTextColor(x);
        }
      }
      if (!d(c)) {
        a(c, true);
      }
    }
    for (;;)
    {
      if (c != null) {
        c.setText(paramCharSequence);
      }
      v = paramCharSequence;
      return;
      if ((c != null) && (d(c)))
      {
        removeView(c);
        C.remove(c);
      }
    }
  }
  
  public void setTitleTextColor(int paramInt)
  {
    x = paramInt;
    if (c != null) {
      c.setTextColor(paramInt);
    }
  }
  
  public static class LayoutParams
    extends ActionBar.LayoutParams
  {
    int b = 0;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      a = 8388627;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ActionBar.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      b = b;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
      a(paramMarginLayoutParams);
    }
    
    void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      leftMargin = leftMargin;
      topMargin = topMargin;
      rightMargin = rightMargin;
      bottomMargin = bottomMargin;
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public Toolbar.SavedState a(Parcel paramAnonymousParcel)
      {
        return new Toolbar.SavedState(paramAnonymousParcel);
      }
      
      public Toolbar.SavedState[] a(int paramAnonymousInt)
      {
        return new Toolbar.SavedState[paramAnonymousInt];
      }
    };
    int a;
    boolean b;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      if (paramParcel.readInt() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        b = bool;
        return;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      if (b) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  private class a
    implements l
  {
    android.support.v7.internal.view.menu.f a;
    h b;
    
    private a() {}
    
    public void a(Context paramContext, android.support.v7.internal.view.menu.f paramf)
    {
      if ((a != null) && (b != null)) {
        a.d(b);
      }
      a = paramf;
    }
    
    public void a(Parcelable paramParcelable) {}
    
    public void a(android.support.v7.internal.view.menu.f paramf, boolean paramBoolean) {}
    
    public void a(boolean paramBoolean)
    {
      int k = 0;
      int j;
      int m;
      int i;
      if (b != null)
      {
        j = k;
        if (a != null)
        {
          m = a.size();
          i = 0;
        }
      }
      for (;;)
      {
        j = k;
        if (i < m)
        {
          if (a.getItem(i) == b) {
            j = 1;
          }
        }
        else
        {
          if (j == 0) {
            b(a, b);
          }
          return;
        }
        i += 1;
      }
    }
    
    public boolean a()
    {
      return false;
    }
    
    public boolean a(android.support.v7.internal.view.menu.f paramf, h paramh)
    {
      Toolbar.b(Toolbar.this);
      if (Toolbar.c(Toolbar.this).getParent() != Toolbar.this) {
        addView(Toolbar.c(Toolbar.this));
      }
      a = paramh.getActionView();
      b = paramh;
      if (a.getParent() != Toolbar.this)
      {
        paramf = i();
        a = (0x800003 | Toolbar.d(Toolbar.this) & 0x70);
        b = 2;
        a.setLayoutParams(paramf);
        addView(a);
      }
      j();
      requestLayout();
      paramh.e(true);
      if ((a instanceof b)) {
        ((b)a).a();
      }
      return true;
    }
    
    public boolean a(android.support.v7.internal.view.menu.p paramp)
    {
      return false;
    }
    
    public int b()
    {
      return 0;
    }
    
    public boolean b(android.support.v7.internal.view.menu.f paramf, h paramh)
    {
      if ((a instanceof b)) {
        ((b)a).b();
      }
      removeView(a);
      removeView(Toolbar.c(Toolbar.this));
      a = null;
      k();
      b = null;
      requestLayout();
      paramh.e(false);
      return true;
    }
    
    public Parcelable c()
    {
      return null;
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean a(MenuItem paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.Toolbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */