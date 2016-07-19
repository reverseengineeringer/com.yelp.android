package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.os.i;
import android.support.v4.view.ae;
import android.support.v4.view.ag;
import android.support.v4.view.ai;
import android.support.v4.view.as;
import android.support.v4.view.t;
import android.support.v4.view.x;
import android.support.v4.view.y;
import android.support.v4.widget.k;
import android.support.v4.widget.v;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import com.yelp.android.h.c;
import com.yelp.android.h.c.k;
import com.yelp.android.h.c.l;
import com.yelp.android.h.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements ae, x
{
  private static final Interpolator an;
  private static final boolean h;
  private static final Class<?>[] i;
  private boolean A;
  private int B;
  private boolean C;
  private final boolean D;
  private final AccessibilityManager E;
  private List<j> F;
  private boolean G = false;
  private int H = 0;
  private k I;
  private k J;
  private k K;
  private k L;
  private int M = 0;
  private int N = -1;
  private VelocityTracker O;
  private int P;
  private int Q;
  private int R;
  private int S;
  private int T;
  private final int U;
  private final int V;
  private float W = Float.MIN_VALUE;
  final n a = new n();
  private final t aa = new t();
  private l ab;
  private List<l> ac;
  private RecyclerView.e.b ad = new f(null);
  private boolean ae = false;
  private j af;
  private d ag;
  private final int[] ah = new int[2];
  private final y ai;
  private final int[] aj = new int[2];
  private final int[] ak = new int[2];
  private final int[] al = new int[2];
  private Runnable am = new Runnable()
  {
    public void run()
    {
      if (d != null) {
        d.a();
      }
      RecyclerView.a(RecyclerView.this, false);
    }
  };
  a b;
  e c;
  e d = new f();
  final r e = new r();
  boolean f = false;
  boolean g = false;
  private final p j = new p(null);
  private SavedState k;
  private boolean l;
  private final Runnable m = new Runnable()
  {
    public void run()
    {
      if (!RecyclerView.a(RecyclerView.this)) {}
      do
      {
        return;
        if (RecyclerView.b(RecyclerView.this))
        {
          i.a("RV FullInvalidate");
          k();
          i.a();
          return;
        }
      } while (!b.d());
      i.a("RV PartialInvalidate");
      b();
      b.b();
      if (!RecyclerView.c(RecyclerView.this)) {
        o();
      }
      a(true);
      i.a();
    }
  };
  private final Rect n = new Rect();
  private a o;
  private i p;
  private o q;
  private final ArrayList<g> r = new ArrayList();
  private final ArrayList<k> s = new ArrayList();
  private k t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      i = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      an = new Interpolator()
      {
        public float getInterpolation(float paramAnonymousFloat)
        {
          paramAnonymousFloat -= 1.0F;
          return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
        }
      };
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    Object localObject;
    if (Build.VERSION.SDK_INT >= 16)
    {
      bool = true;
      D = bool;
      localObject = ViewConfiguration.get(paramContext);
      T = ((ViewConfiguration)localObject).getScaledTouchSlop();
      U = ((ViewConfiguration)localObject).getScaledMinimumFlingVelocity();
      V = ((ViewConfiguration)localObject).getScaledMaximumFlingVelocity();
      if (ai.a(this) != 2) {
        break label407;
      }
    }
    label407:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      d.a(ad);
      a();
      t();
      if (ai.e(this) == 0) {
        ai.c(this, 1);
      }
      E = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new j(this));
      if (paramAttributeSet != null)
      {
        localObject = paramContext.obtainStyledAttributes(paramAttributeSet, com.yelp.android.q.a.a.RecyclerView, paramInt, 0);
        String str = ((TypedArray)localObject).getString(com.yelp.android.q.a.a.RecyclerView_layoutManager);
        ((TypedArray)localObject).recycle();
        a(paramContext, str, paramAttributeSet, paramInt, 0);
      }
      ai = new y(this);
      setNestedScrollingEnabled(true);
      return;
      bool = false;
      break;
    }
  }
  
  private void A()
  {
    H -= 1;
    if (H < 1)
    {
      H = 0;
      B();
    }
  }
  
  private void B()
  {
    int i1 = B;
    B = 0;
    if ((i1 != 0) && (i()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      com.yelp.android.h.a.a(localAccessibilityEvent, i1);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private boolean C()
  {
    return (d != null) && (d.h());
  }
  
  private void D()
  {
    if ((!ae) && (u))
    {
      ai.a(this, am);
      ae = true;
    }
  }
  
  private boolean E()
  {
    return (d != null) && (p.b());
  }
  
  private void F()
  {
    boolean bool2 = true;
    if (G)
    {
      b.a();
      p();
      p.a(this);
    }
    int i1;
    label89:
    r localr;
    if ((d != null) && (p.b()))
    {
      b.b();
      if (((!f) || (g)) && (!f) && ((!g) || (!C()))) {
        break label210;
      }
      i1 = 1;
      localr = e;
      if ((!w) || (d == null) || ((!G) && (i1 == 0) && (!i.a(p))) || ((G) && (!o.b()))) {
        break label215;
      }
      bool1 = true;
      label149:
      r.c(localr, bool1);
      localr = e;
      if ((!r.b(e)) || (i1 == 0) || (G) || (!E())) {
        break label220;
      }
    }
    label210:
    label215:
    label220:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      r.d(localr, bool1);
      return;
      b.e();
      break;
      i1 = 0;
      break label89;
      bool1 = false;
      break label149;
    }
  }
  
  private void G()
  {
    if (G) {
      return;
    }
    G = true;
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if ((localu != null) && (!localu.c())) {
        localu.b(512);
      }
      i1 += 1;
    }
    a.g();
  }
  
  private String a(Context paramContext, String paramString)
  {
    if (paramString.charAt(0) == '.') {
      paramContext = paramContext.getPackageName() + paramString;
    }
    do
    {
      return paramContext;
      paramContext = paramString;
    } while (paramString.contains("."));
    return RecyclerView.class.getPackage().getName() + '.' + paramString;
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i2 = 1;
    int i3 = 0;
    int i1;
    if (paramFloat2 < 0.0F)
    {
      d();
      i1 = i3;
      if (I.a(-paramFloat2 / getWidth(), 1.0F - paramFloat3 / getHeight())) {
        i1 = 1;
      }
      if (paramFloat4 >= 0.0F) {
        break label158;
      }
      f();
      if (!J.a(-paramFloat4 / getHeight(), paramFloat1 / getWidth())) {
        break label196;
      }
    }
    for (;;)
    {
      if ((i2 != 0) || (paramFloat2 != 0.0F) || (paramFloat4 != 0.0F)) {
        ai.d(this);
      }
      return;
      i1 = i3;
      if (paramFloat2 <= 0.0F) {
        break;
      }
      e();
      i1 = i3;
      if (!K.a(paramFloat2 / getWidth(), paramFloat3 / getHeight())) {
        break;
      }
      i1 = 1;
      break;
      label158:
      if (paramFloat4 > 0.0F)
      {
        g();
        if (L.a(paramFloat4 / getHeight(), 1.0F - paramFloat1 / getWidth())) {}
      }
      else
      {
        label196:
        i2 = i1;
      }
    }
  }
  
  private void a(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      paramString = paramString.trim();
      if (paramString.length() != 0)
      {
        String str = a(paramContext, paramString);
        try
        {
          if (isInEditMode()) {}
          Class localClass;
          for (paramString = getClass().getClassLoader();; paramString = paramContext.getClassLoader())
          {
            localClass = paramString.loadClass(str).asSubclass(i.class);
            try
            {
              paramString = localClass.getConstructor(i);
              Object[] arrayOfObject = new Object[4];
              arrayOfObject[0] = paramContext;
              arrayOfObject[1] = paramAttributeSet;
              arrayOfObject[2] = Integer.valueOf(paramInt1);
              arrayOfObject[3] = Integer.valueOf(paramInt2);
              paramContext = arrayOfObject;
            }
            catch (NoSuchMethodException paramContext)
            {
              try
              {
                paramString = localClass.getConstructor(new Class[0]);
                paramContext = null;
              }
              catch (NoSuchMethodException paramString)
              {
                paramString.initCause(paramContext);
                throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, paramString);
              }
            }
            paramString.setAccessible(true);
            setLayoutManager((i)paramString.newInstance(paramContext));
            return;
          }
          return;
        }
        catch (ClassNotFoundException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, paramContext);
        }
        catch (InvocationTargetException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (InstantiationException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (IllegalAccessException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, paramContext);
        }
        catch (ClassCastException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, paramContext);
        }
      }
    }
  }
  
  private void a(a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (o != null)
    {
      o.b(j);
      o.b(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (d != null) {
        d.c();
      }
      if (p != null)
      {
        p.c(a);
        p.b(a);
      }
      a.a();
    }
    b.a();
    a locala = o;
    o = parama;
    if (parama != null)
    {
      parama.a(j);
      parama.a(this);
    }
    if (p != null) {
      p.a(locala, o);
    }
    a.a(locala, o, paramBoolean1);
    r.a(e, true);
    p();
  }
  
  private void a(h paramh)
  {
    View localView = a.a;
    b(a);
    int i1 = b;
    int i2 = c;
    int i3 = localView.getLeft();
    int i4 = localView.getTop();
    if ((!a.p()) && ((i1 != i3) || (i2 != i4)))
    {
      a.a(false);
      localView.layout(i3, i4, localView.getWidth() + i3, localView.getHeight() + i4);
      if (d.a(a, i1, i2, i3, i4)) {
        D();
      }
    }
    do
    {
      return;
      a.a(false);
    } while (!d.a(a));
    D();
  }
  
  private void a(u paramu, Rect paramRect, int paramInt1, int paramInt2)
  {
    View localView = a;
    if ((paramRect != null) && ((left != paramInt1) || (top != paramInt2)))
    {
      paramu.a(false);
      if (d.a(paramu, left, top, paramInt1, paramInt2)) {
        D();
      }
    }
    do
    {
      return;
      paramu.a(false);
    } while (!d.b(paramu));
    D();
  }
  
  private void a(u paramu1, u paramu2)
  {
    paramu1.a(false);
    b(paramu1);
    g = paramu2;
    a.d(paramu1);
    int i3 = a.getLeft();
    int i4 = a.getTop();
    int i2;
    int i1;
    if ((paramu2 == null) || (paramu2.c()))
    {
      i2 = i4;
      i1 = i3;
    }
    for (;;)
    {
      if (d.a(paramu1, paramu2, i3, i4, i1, i2)) {
        D();
      }
      return;
      i1 = a.getLeft();
      i2 = a.getTop();
      paramu2.a(false);
      h = paramu1;
    }
  }
  
  private void a(com.yelp.android.g.a<View, Rect> parama)
  {
    List localList = e.d;
    int i1 = localList.size() - 1;
    if (i1 >= 0)
    {
      View localView = (View)localList.get(i1);
      u localu = b(localView);
      h localh = (h)e.a.remove(localu);
      if (!e.a()) {
        e.b.remove(localu);
      }
      if (parama.remove(localView) != null) {
        p.a(localView, a);
      }
      for (;;)
      {
        i1 -= 1;
        break;
        if (localh != null) {
          a(localh);
        } else {
          a(new h(localu, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
        }
      }
    }
    localList.clear();
  }
  
  private void a(int[] paramArrayOfInt)
  {
    int i6 = c.b();
    if (i6 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i1 = Integer.MAX_VALUE;
    int i4 = Integer.MIN_VALUE;
    int i3 = 0;
    u localu;
    if (i3 < i6)
    {
      localu = b(c.b(i3));
      if (!localu.c()) {}
    }
    for (;;)
    {
      i3 += 1;
      break;
      int i5 = localu.d();
      int i2 = i1;
      if (i5 < i1) {
        i2 = i5;
      }
      if (i5 > i4)
      {
        i4 = i5;
        i1 = i2;
        continue;
        paramArrayOfInt[0] = i1;
        paramArrayOfInt[1] = i4;
      }
      else
      {
        i1 = i2;
      }
    }
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      t = null;
    }
    int i3 = s.size();
    int i1 = 0;
    while (i1 < i3)
    {
      k localk = (k)s.get(i1);
      if ((localk.a(this, paramMotionEvent)) && (i2 != 3))
      {
        t = localk;
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  static u b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsa;
  }
  
  private void b(u paramu)
  {
    View localView = a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      a.d(a(localView));
      if (!paramu.q()) {
        break;
      }
      c.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      c.a(localView, true);
      return;
    }
    c.d(localView);
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    int i2;
    if (t != null)
    {
      if (i1 == 0) {
        t = null;
      }
    }
    else
    {
      if (i1 == 0) {
        break label108;
      }
      i2 = s.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      k localk = (k)s.get(i1);
      if (localk.a(this, paramMotionEvent))
      {
        t = localk;
        return true;
        t.b(this, paramMotionEvent);
        if ((i1 == 3) || (i1 == 1)) {
          t = null;
        }
        return true;
      }
      i1 += 1;
    }
    label108:
    return false;
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i1 = t.b(paramMotionEvent);
    if (t.b(paramMotionEvent, i1) == N) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      N = t.b(paramMotionEvent, i1);
      int i2 = (int)(t.c(paramMotionEvent, i1) + 0.5F);
      R = i2;
      P = i2;
      i1 = (int)(t.d(paramMotionEvent, i1) + 0.5F);
      S = i1;
      Q = i1;
      return;
    }
  }
  
  private void e(int paramInt)
  {
    if (p == null) {
      return;
    }
    p.c(paramInt);
    awakenScrollBars();
  }
  
  private boolean g(View paramView)
  {
    b();
    boolean bool = c.e(paramView);
    if (bool)
    {
      paramView = b(paramView);
      a.d(paramView);
      a.b(paramView);
    }
    a(false);
    return bool;
  }
  
  private float getScrollFactor()
  {
    if (W == Float.MIN_VALUE)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        W = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return W;
    }
    return 0.0F;
  }
  
  private void h(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (I != null)
    {
      bool1 = bool2;
      if (!I.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = I.c();
        }
      }
    }
    bool2 = bool1;
    if (K != null)
    {
      bool2 = bool1;
      if (!K.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | K.c();
        }
      }
    }
    bool1 = bool2;
    if (J != null)
    {
      bool1 = bool2;
      if (!J.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | J.c();
        }
      }
    }
    bool2 = bool1;
    if (L != null)
    {
      bool2 = bool1;
      if (!L.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | L.c();
        }
      }
    }
    if (bool2) {
      ai.d(this);
    }
  }
  
  private void h(View paramView)
  {
    u localu = b(paramView);
    e(paramView);
    if ((o != null) && (localu != null)) {
      o.d(localu);
    }
    if (F != null)
    {
      int i1 = F.size() - 1;
      while (i1 >= 0)
      {
        ((j)F.get(i1)).b(paramView);
        i1 -= 1;
      }
    }
  }
  
  private void i(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i2)
    {
    default: 
      paramInt1 = ai.q(this);
    }
    switch (i1)
    {
    default: 
      paramInt2 = ai.r(this);
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  private void i(View paramView)
  {
    u localu = b(paramView);
    d(paramView);
    if ((o != null) && (localu != null)) {
      o.c(localu);
    }
    if (F != null)
    {
      int i1 = F.size() - 1;
      while (i1 >= 0)
      {
        ((j)F.get(i1)).a(paramView);
        i1 -= 1;
      }
    }
  }
  
  private boolean j(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int i2 = c.b();
    boolean bool1;
    if (i2 == 0) {
      if (paramInt1 == 0)
      {
        bool1 = bool2;
        if (paramInt2 == 0) {}
      }
      else
      {
        bool1 = true;
      }
    }
    int i1;
    do
    {
      return bool1;
      i1 = 0;
      bool1 = bool2;
    } while (i1 >= i2);
    u localu = b(c.b(i1));
    if (localu.c()) {}
    int i3;
    do
    {
      i1 += 1;
      break;
      i3 = localu.d();
    } while ((i3 >= paramInt1) && (i3 <= paramInt2));
    return true;
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == M) {
      return;
    }
    M = paramInt;
    if (paramInt != 2) {
      v();
    }
    d(paramInt);
  }
  
  private void t()
  {
    c = new e(new e.b()
    {
      public int a()
      {
        return getChildCount();
      }
      
      public int a(View paramAnonymousView)
      {
        return indexOfChild(paramAnonymousView);
      }
      
      public void a(int paramAnonymousInt)
      {
        View localView = getChildAt(paramAnonymousInt);
        if (localView != null) {
          RecyclerView.b(RecyclerView.this, localView);
        }
        removeViewAt(paramAnonymousInt);
      }
      
      public void a(View paramAnonymousView, int paramAnonymousInt)
      {
        addView(paramAnonymousView, paramAnonymousInt);
        RecyclerView.a(RecyclerView.this, paramAnonymousView);
      }
      
      public void a(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
      {
        RecyclerView.u localu = RecyclerView.b(paramAnonymousView);
        if (localu != null)
        {
          if ((!localu.q()) && (!localu.c())) {
            throw new IllegalArgumentException("Called attach on a child which is not detached: " + localu);
          }
          localu.k();
        }
        RecyclerView.a(RecyclerView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
      }
      
      public RecyclerView.u b(View paramAnonymousView)
      {
        return RecyclerView.b(paramAnonymousView);
      }
      
      public View b(int paramAnonymousInt)
      {
        return getChildAt(paramAnonymousInt);
      }
      
      public void b()
      {
        int j = a();
        int i = 0;
        while (i < j)
        {
          RecyclerView.b(RecyclerView.this, b(i));
          i += 1;
        }
        removeAllViews();
      }
      
      public void c(int paramAnonymousInt)
      {
        Object localObject = b(paramAnonymousInt);
        if (localObject != null)
        {
          localObject = RecyclerView.b((View)localObject);
          if (localObject != null)
          {
            if ((((RecyclerView.u)localObject).q()) && (!((RecyclerView.u)localObject).c())) {
              throw new IllegalArgumentException("called detach on an already detached child " + localObject);
            }
            ((RecyclerView.u)localObject).b(256);
          }
        }
        RecyclerView.a(RecyclerView.this, paramAnonymousInt);
      }
      
      public void c(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.b(paramAnonymousView);
        if (paramAnonymousView != null) {
          RecyclerView.u.a(paramAnonymousView);
        }
      }
      
      public void d(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.b(paramAnonymousView);
        if (paramAnonymousView != null) {
          RecyclerView.u.b(paramAnonymousView);
        }
      }
    });
  }
  
  private void u()
  {
    m.run();
  }
  
  private void v()
  {
    aa.b();
    if (p != null) {
      p.z();
    }
  }
  
  private void w()
  {
    boolean bool2 = false;
    if (I != null) {
      bool2 = I.c();
    }
    boolean bool1 = bool2;
    if (J != null) {
      bool1 = bool2 | J.c();
    }
    bool2 = bool1;
    if (K != null) {
      bool2 = bool1 | K.c();
    }
    bool1 = bool2;
    if (L != null) {
      bool1 = bool2 | L.c();
    }
    if (bool1) {
      ai.d(this);
    }
  }
  
  private void x()
  {
    if (O != null) {
      O.clear();
    }
    stopNestedScroll();
    w();
  }
  
  private void y()
  {
    x();
    setScrollState(0);
  }
  
  private void z()
  {
    H += 1;
  }
  
  long a(u paramu)
  {
    if (o.b()) {
      return paramu.e();
    }
    return b;
  }
  
  u a(int paramInt, boolean paramBoolean)
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if ((localu != null) && (!localu.p())) {
        if (paramBoolean)
        {
          if (b != paramInt) {}
        }
        else {
          while (localu.d() == paramInt) {
            return localu;
          }
        }
      }
      i1 += 1;
    }
    return null;
  }
  
  public u a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return b(paramView);
  }
  
  void a()
  {
    b = new a(new a.a()
    {
      public RecyclerView.u a(int paramAnonymousInt)
      {
        RecyclerView.u localu = a(paramAnonymousInt, true);
        if (localu == null) {}
        while (c.c(a)) {
          return null;
        }
        return localu;
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(paramAnonymousInt1, paramAnonymousInt2, true);
        f = true;
        RecyclerView.r.a(e, paramAnonymousInt2);
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
      {
        RecyclerView.this.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousObject);
        g = true;
      }
      
      public void a(a.b paramAnonymousb)
      {
        c(paramAnonymousb);
      }
      
      public void b(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(paramAnonymousInt1, paramAnonymousInt2, false);
        f = true;
      }
      
      public void b(a.b paramAnonymousb)
      {
        c(paramAnonymousb);
      }
      
      public void c(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        e(paramAnonymousInt1, paramAnonymousInt2);
        f = true;
      }
      
      void c(a.b paramAnonymousb)
      {
        switch (a)
        {
        default: 
          return;
        case 0: 
          RecyclerView.d(RecyclerView.this).a(RecyclerView.this, b, d);
          return;
        case 1: 
          RecyclerView.d(RecyclerView.this).b(RecyclerView.this, b, d);
          return;
        case 2: 
          RecyclerView.d(RecyclerView.this).a(RecyclerView.this, b, d, c);
          return;
        }
        RecyclerView.d(RecyclerView.this).a(RecyclerView.this, b, d, 1);
      }
      
      public void d(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        RecyclerView.this.d(paramAnonymousInt1, paramAnonymousInt2);
        f = true;
      }
    });
  }
  
  public void a(int paramInt)
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      c.b(i1).offsetTopAndBottom(paramInt);
      i1 += 1;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (p == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    for (;;)
    {
      return;
      if (!z)
      {
        if (!p.d()) {
          paramInt1 = 0;
        }
        if (!p.e()) {
          paramInt2 = i1;
        }
        while ((paramInt1 != 0) || (paramInt2 != 0))
        {
          aa.b(paramInt1, paramInt2);
          return;
        }
      }
    }
  }
  
  void a(int paramInt1, int paramInt2, Object paramObject)
  {
    int i2 = c.c();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = c.c(i1);
      u localu = b(localView);
      if ((localu == null) || (localu.c())) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((b >= paramInt1) && (b < paramInt1 + paramInt2))
        {
          localu.b(2);
          localu.a(paramObject);
          if (C()) {
            localu.b(64);
          }
          getLayoutParamsc = true;
        }
      }
    }
    a.c(paramInt1, paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = c.c();
    int i1 = 0;
    if (i1 < i2)
    {
      u localu = b(c.c(i1));
      if ((localu != null) && (!localu.c()))
      {
        if (b < paramInt1 + paramInt2) {
          break label83;
        }
        localu.a(-paramInt2, paramBoolean);
        r.a(e, true);
      }
      for (;;)
      {
        i1 += 1;
        break;
        label83:
        if (b >= paramInt1)
        {
          localu.a(paramInt1 - 1, -paramInt2, paramBoolean);
          r.a(e, true);
        }
      }
    }
    a.b(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  public void a(l paraml)
  {
    if (ac == null) {
      ac = new ArrayList();
    }
    ac.add(paraml);
  }
  
  void a(String paramString)
  {
    if (j())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (x)
    {
      if ((paramBoolean) && (y) && (!z) && (p != null) && (o != null)) {
        k();
      }
      x = false;
      if (!z) {
        y = false;
      }
    }
  }
  
  boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    int i7 = 0;
    int i4 = 0;
    int i5 = 0;
    int i1 = 0;
    int i8 = 0;
    int i3 = 0;
    int i6 = 0;
    u();
    if (o != null)
    {
      b();
      z();
      i.a("RV Scroll");
      i1 = i8;
      i2 = i7;
      if (paramInt1 != 0)
      {
        i1 = p.a(paramInt1, a, e);
        i2 = paramInt1 - i1;
      }
      i3 = i6;
      i4 = i5;
      if (paramInt2 != 0)
      {
        i3 = p.b(paramInt2, a, e);
        i4 = paramInt2 - i3;
      }
      i.a();
      if (C())
      {
        i6 = c.b();
        i5 = 0;
        if (i5 < i6)
        {
          View localView = c.b(i5);
          Object localObject = a(localView);
          if ((localObject != null) && (h != null))
          {
            localObject = h;
            if (localObject == null) {
              break label274;
            }
          }
          label274:
          for (localObject = a;; localObject = null)
          {
            if (localObject != null)
            {
              i7 = localView.getLeft();
              i8 = localView.getTop();
              if ((i7 != ((View)localObject).getLeft()) || (i8 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i7, i8, ((View)localObject).getWidth() + i7, ((View)localObject).getHeight() + i8);
              }
            }
            i5 += 1;
            break;
          }
        }
      }
      A();
      a(false);
    }
    if (!r.isEmpty()) {
      invalidate();
    }
    if (dispatchNestedScroll(i1, i3, i2, i4, aj))
    {
      R -= aj[0];
      S -= aj[1];
      if (paramMotionEvent != null) {
        paramMotionEvent.offsetLocation(aj[0], aj[1]);
      }
      paramMotionEvent = al;
      paramMotionEvent[0] += aj[0];
      paramMotionEvent = al;
      paramMotionEvent[1] += aj[1];
    }
    for (;;)
    {
      if ((i1 != 0) || (i3 != 0)) {
        g(i1, i3);
      }
      if (!awakenScrollBars()) {
        invalidate();
      }
      if ((i1 == 0) && (i3 == 0)) {
        break;
      }
      return true;
      if (ai.a(this) != 2)
      {
        if (paramMotionEvent != null) {
          a(paramMotionEvent.getX(), i2, paramMotionEvent.getY(), i4);
        }
        h(paramInt1, paramInt2);
      }
    }
    return false;
  }
  
  boolean a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int i2 = 0;
    if (j()) {
      if (paramAccessibilityEvent == null) {
        break label46;
      }
    }
    label46:
    for (int i1 = com.yelp.android.h.a.b(paramAccessibilityEvent);; i1 = 0)
    {
      if (i1 == 0) {
        i1 = i2;
      }
      for (;;)
      {
        B = (i1 | B);
        bool = true;
        return bool;
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((p == null) || (!p.a(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  void b()
  {
    if (!x)
    {
      x = true;
      if (!z) {
        y = false;
      }
    }
  }
  
  public void b(int paramInt)
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      c.b(i1).offsetLeftAndRight(paramInt);
      i1 += 1;
    }
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    if (p == null) {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool2;
    int i1;
    do
    {
      do
      {
        return false;
      } while (z);
      bool1 = p.d();
      bool2 = p.e();
      if (bool1)
      {
        i1 = paramInt1;
        if (Math.abs(paramInt1) >= U) {}
      }
      else
      {
        i1 = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= U) {}
      }
      else
      {
        paramInt1 = 0;
      }
    } while (((i1 == 0) && (paramInt1 == 0)) || (dispatchNestedPreFling(i1, paramInt1)));
    if ((bool1) || (bool2)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      dispatchNestedFling(i1, paramInt1, bool1);
      if (!bool1) {
        break;
      }
      paramInt2 = Math.max(-V, Math.min(i1, V));
      paramInt1 = Math.max(-V, Math.min(paramInt1, V));
      aa.a(paramInt2, paramInt1);
      return true;
    }
  }
  
  public int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.d();
    }
    return -1;
  }
  
  public void c()
  {
    setScrollState(0);
    v();
  }
  
  public void c(int paramInt) {}
  
  void c(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      d();
      I.a(-paramInt1);
      if (paramInt2 >= 0) {
        break label69;
      }
      f();
      J.a(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        ai.d(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      e();
      K.a(paramInt1);
      break;
      label69:
      if (paramInt2 > 0)
      {
        g();
        L.a(paramInt2);
      }
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (p.a((LayoutParams)paramLayoutParams));
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (p.d()) {
      return p.d(e);
    }
    return 0;
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (p.d()) {
      return p.b(e);
    }
    return 0;
  }
  
  public int computeHorizontalScrollRange()
  {
    if (p.d()) {
      return p.f(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollExtent()
  {
    if (p.e()) {
      return p.e(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollOffset()
  {
    if (p.e()) {
      return p.c(e);
    }
    return 0;
  }
  
  public int computeVerticalScrollRange()
  {
    if (p.e()) {
      return p.g(e);
    }
    return 0;
  }
  
  void d()
  {
    if (I != null) {
      return;
    }
    I = new k(getContext());
    if (l)
    {
      I.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    I.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void d(int paramInt)
  {
    if (p != null) {
      p.i(paramInt);
    }
    c(paramInt);
    if (ab != null) {
      ab.a(this, paramInt);
    }
    if (ac != null)
    {
      int i1 = ac.size() - 1;
      while (i1 >= 0)
      {
        ((l)ac.get(i1)).a(this, paramInt);
        i1 -= 1;
      }
    }
  }
  
  void d(int paramInt1, int paramInt2)
  {
    int i5 = c.c();
    int i1;
    int i2;
    if (paramInt1 < paramInt2)
    {
      i1 = -1;
      i2 = paramInt2;
    }
    u localu;
    for (int i3 = paramInt1;; i3 = paramInt2)
    {
      int i4 = 0;
      for (;;)
      {
        if (i4 >= i5) {
          break label131;
        }
        localu = b(c.c(i4));
        if ((localu != null) && (b >= i3) && (b <= i2)) {
          break;
        }
        i4 += 1;
      }
      i1 = 1;
      i2 = paramInt1;
    }
    if (b == paramInt1) {
      localu.a(paramInt2 - paramInt1, false);
    }
    for (;;)
    {
      r.a(e, true);
      break;
      localu.a(i1, false);
    }
    label131:
    a.a(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void d(View paramView) {}
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return ai.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return ai.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return ai.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return ai.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = r.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((g)r.get(i1)).b(paramCanvas, this, e);
      i1 += 1;
    }
    int i5;
    if ((I != null) && (!I.a()))
    {
      i5 = paramCanvas.save();
      if (l)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((I == null) || (!I.a(paramCanvas))) {
          break label456;
        }
        i2 = 1;
        label128:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (J != null)
      {
        i1 = i2;
        if (!J.a())
        {
          i5 = paramCanvas.save();
          if (l) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((J == null) || (!J.a(paramCanvas))) {
            break label461;
          }
          i1 = 1;
          label202:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (K != null)
      {
        i2 = i1;
        if (!K.a())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!l) {
            break label466;
          }
          i2 = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((K == null) || (!K.a(paramCanvas))) {
            break label471;
          }
          i2 = 1;
          label295:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (L != null)
      {
        i1 = i2;
        if (!L.a())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!l) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i1 = i4;
          if (L != null)
          {
            i1 = i4;
            if (L.a(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (d != null) && (r.size() > 0) && (d.b())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          ai.d(this);
        }
        return;
        i1 = 0;
        break;
        label456:
        i2 = 0;
        break label128;
        label461:
        i1 = 0;
        break label202;
        label466:
        i2 = 0;
        break label257;
        label471:
        i2 = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      i2 = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void e()
  {
    if (K != null) {
      return;
    }
    K = new k(getContext());
    if (l)
    {
      K.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    K.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void e(int paramInt1, int paramInt2)
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if ((localu != null) && (!localu.c()) && (b >= paramInt1))
      {
        localu.a(paramInt2, false);
        r.a(e, true);
      }
      i1 += 1;
    }
    a.b(paramInt1, paramInt2);
    requestLayout();
  }
  
  public void e(View paramView) {}
  
  Rect f(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!c) {
      return b;
    }
    Rect localRect = b;
    localRect.set(0, 0, 0, 0);
    int i2 = r.size();
    int i1 = 0;
    while (i1 < i2)
    {
      n.set(0, 0, 0, 0);
      ((g)r.get(i1)).a(n, paramView, this, e);
      left += n.left;
      top += n.top;
      right += n.right;
      bottom += n.bottom;
      i1 += 1;
    }
    c = false;
    return localRect;
  }
  
  void f()
  {
    if (J != null) {
      return;
    }
    J = new k(getContext());
    if (l)
    {
      J.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    J.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public void f(int paramInt1, int paramInt2) {}
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject2 = p.d(paramView, paramInt);
    if (localObject2 != null) {}
    Object localObject1;
    do
    {
      return (View)localObject2;
      localObject2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (o != null)
        {
          localObject1 = localObject2;
          if (p != null)
          {
            localObject1 = localObject2;
            if (!j())
            {
              localObject1 = localObject2;
              if (!z)
              {
                b();
                localObject1 = p.a(paramView, paramInt, a, e);
                a(false);
              }
            }
          }
        }
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    return super.focusSearch(paramView, paramInt);
  }
  
  void g()
  {
    if (L != null) {
      return;
    }
    L = new k(getContext());
    if (l)
    {
      L.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    L.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void g(int paramInt1, int paramInt2)
  {
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    f(paramInt1, paramInt2);
    if (ab != null) {
      ab.a(this, paramInt1, paramInt2);
    }
    if (ac != null)
    {
      i1 = ac.size() - 1;
      while (i1 >= 0)
      {
        ((l)ac.get(i1)).a(this, paramInt1, paramInt2);
        i1 -= 1;
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (p == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return p.a();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (p == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return p.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (p == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return p.a(paramLayoutParams);
  }
  
  public a getAdapter()
  {
    return o;
  }
  
  public int getBaseline()
  {
    if (p != null) {
      return p.q();
    }
    return super.getBaseline();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (ag == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return ag.a(paramInt1, paramInt2);
  }
  
  public j getCompatAccessibilityDelegate()
  {
    return af;
  }
  
  public e getItemAnimator()
  {
    return d;
  }
  
  public i getLayoutManager()
  {
    return p;
  }
  
  public int getMaxFlingVelocity()
  {
    return V;
  }
  
  public int getMinFlingVelocity()
  {
    return U;
  }
  
  public m getRecycledViewPool()
  {
    return a.f();
  }
  
  public int getScrollState()
  {
    return M;
  }
  
  void h()
  {
    L = null;
    J = null;
    K = null;
    I = null;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return ai.b();
  }
  
  boolean i()
  {
    return (E != null) && (E.isEnabled());
  }
  
  public boolean isAttachedToWindow()
  {
    return u;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return ai.a();
  }
  
  public boolean j()
  {
    return H > 0;
  }
  
  void k()
  {
    if (o == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (p == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    e.d.clear();
    b();
    z();
    F();
    Object localObject2 = e;
    Object localObject1;
    int i2;
    int i1;
    if ((r.b(e)) && (g) && (C()))
    {
      localObject1 = new com.yelp.android.g.a();
      c = ((com.yelp.android.g.a)localObject1);
      g = false;
      f = false;
      r.b(e, r.a(e));
      e.e = o.a();
      a(ah);
      if (!r.b(e)) {
        break label302;
      }
      e.a.clear();
      e.b.clear();
      i2 = c.b();
      i1 = 0;
      label193:
      if (i1 >= i2) {
        break label302;
      }
      localObject1 = b(c.b(i1));
      if ((!((u)localObject1).c()) && ((!((u)localObject1).l()) || (o.b()))) {
        break label250;
      }
    }
    for (;;)
    {
      i1 += 1;
      break label193;
      localObject1 = null;
      break;
      label250:
      localObject2 = a;
      e.a.put(localObject1, new h((u)localObject1, ((View)localObject2).getLeft(), ((View)localObject2).getTop(), ((View)localObject2).getRight(), ((View)localObject2).getBottom()));
    }
    label302:
    long l1;
    boolean bool;
    if (r.a(e))
    {
      m();
      if (e.c != null)
      {
        i2 = c.b();
        i1 = 0;
        while (i1 < i2)
        {
          localObject1 = b(c.b(i1));
          if ((((u)localObject1).n()) && (!((u)localObject1).p()) && (!((u)localObject1).c()))
          {
            l1 = a((u)localObject1);
            e.c.put(Long.valueOf(l1), localObject1);
            e.a.remove(localObject1);
          }
          i1 += 1;
        }
      }
      bool = r.c(e);
      r.a(e, false);
      p.c(a, e);
      r.a(e, bool);
      localObject2 = new com.yelp.android.g.a();
      i1 = 0;
      label476:
      if (i1 < c.b())
      {
        localObject1 = c.b(i1);
        if (!b((View)localObject1).c()) {}
      }
    }
    label508:
    label517:
    label739:
    label749:
    label905:
    label911:
    label1007:
    label1264:
    label1447:
    label1515:
    label1561:
    label1682:
    label1691:
    for (;;)
    {
      i1 += 1;
      break label476;
      i2 = 0;
      if (i2 < e.a.size()) {
        if (e.a.b(i2)).a != localObject1) {}
      }
      for (i2 = 1;; i2 = 0)
      {
        if (i2 != 0) {
          break label1691;
        }
        ((com.yelp.android.g.a)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
        break label508;
        i2 += 1;
        break label517;
        n();
        b.c();
        for (;;)
        {
          e.e = o.a();
          r.b(e, 0);
          r.b(e, false);
          p.c(a, e);
          r.a(e, false);
          k = null;
          localObject1 = e;
          Object localObject3;
          if ((r.b(e)) && (d != null))
          {
            bool = true;
            r.c((r)localObject1, bool);
            if (!r.b(e)) {
              break label1561;
            }
            if (e.c == null) {
              break label905;
            }
            localObject1 = new com.yelp.android.g.a();
            i2 = c.b();
            i1 = 0;
            if (i1 >= i2) {
              break label1007;
            }
            localObject3 = b(c.b(i1));
            if (!((u)localObject3).c()) {
              break label911;
            }
          }
          Object localObject4;
          for (;;)
          {
            i1 += 1;
            break label749;
            n();
            b.e();
            if (e.c == null) {
              break label1682;
            }
            i2 = c.b();
            i1 = 0;
            while (i1 < i2)
            {
              localObject1 = b(c.b(i1));
              if ((((u)localObject1).n()) && (!((u)localObject1).p()) && (!((u)localObject1).c()))
              {
                l1 = a((u)localObject1);
                e.c.put(Long.valueOf(l1), localObject1);
                e.a.remove(localObject1);
              }
              i1 += 1;
            }
            bool = false;
            break;
            localObject1 = null;
            break label739;
            localObject4 = a;
            l1 = a((u)localObject3);
            if ((localObject1 != null) && (e.c.get(Long.valueOf(l1)) != null)) {
              ((com.yelp.android.g.a)localObject1).put(Long.valueOf(l1), localObject3);
            } else {
              e.b.put(localObject3, new h((u)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
            }
          }
          a((com.yelp.android.g.a)localObject2);
          i1 = e.a.size() - 1;
          while (i1 >= 0)
          {
            localObject3 = (u)e.a.b(i1);
            if (!e.b.containsKey(localObject3))
            {
              localObject3 = (h)e.a.c(i1);
              e.a.d(i1);
              localObject4 = a.a;
              a.d(a);
              a((h)localObject3);
            }
            i1 -= 1;
          }
          i1 = e.b.size();
          if (i1 > 0)
          {
            i1 -= 1;
            if (i1 >= 0)
            {
              localObject4 = (u)e.b.b(i1);
              h localh = (h)e.b.c(i1);
              if ((e.a.isEmpty()) || (!e.a.containsKey(localObject4)))
              {
                e.b.d(i1);
                if (localObject2 == null) {
                  break label1264;
                }
              }
              for (localObject3 = (Rect)((com.yelp.android.g.a)localObject2).get(a);; localObject3 = null)
              {
                a((u)localObject4, (Rect)localObject3, b, c);
                i1 -= 1;
                break;
              }
            }
          }
          i2 = e.b.size();
          i1 = 0;
          while (i1 < i2)
          {
            localObject2 = (u)e.b.b(i1);
            localObject3 = (h)e.b.c(i1);
            localObject4 = (h)e.a.get(localObject2);
            if ((localObject4 != null) && (localObject3 != null) && ((b != b) || (c != c)))
            {
              ((u)localObject2).a(false);
              if (d.a((u)localObject2, b, c, b, c)) {
                D();
              }
            }
            i1 += 1;
          }
          if (e.c != null)
          {
            i1 = e.c.size();
            i1 -= 1;
            if (i1 < 0) {
              break label1561;
            }
            l1 = ((Long)e.c.b(i1)).longValue();
            localObject2 = (u)e.c.get(Long.valueOf(l1));
            localObject3 = a;
            if (!((u)localObject2).c()) {
              break label1515;
            }
          }
          for (;;)
          {
            i1 -= 1;
            break label1447;
            i1 = 0;
            break;
            if ((n.a(a) != null) && (n.a(a).contains(localObject2))) {
              a((u)localObject2, (u)((com.yelp.android.g.a)localObject1).get(Long.valueOf(l1)));
            }
          }
          a(false);
          p.b(a);
          r.c(e, e.e);
          G = false;
          r.c(e, false);
          r.d(e, false);
          A();
          i.a(p, false);
          if (n.a(a) != null) {
            n.a(a).clear();
          }
          e.c = null;
          if (!j(ah[0], ah[1])) {
            break;
          }
          g(0, 0);
          return;
          localObject2 = null;
        }
      }
    }
  }
  
  void l()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      c.c(i1).getLayoutParams()).c = true;
      i1 += 1;
    }
    a.j();
  }
  
  void m()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if (!localu.c()) {
        localu.b();
      }
      i1 += 1;
    }
  }
  
  void n()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if (!localu.c()) {
        localu.a();
      }
      i1 += 1;
    }
    a.i();
  }
  
  void o()
  {
    int i2 = c.b();
    int i1 = 0;
    if (i1 < i2)
    {
      u localu = b(c.b(i1));
      if ((localu == null) || (localu.c())) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((localu.p()) || (localu.l()))
        {
          requestLayout();
        }
        else if (localu.m())
        {
          int i3 = o.a(b);
          if (localu.f() != i3) {
            break label140;
          }
          if ((!localu.n()) || (!C())) {
            o.b(localu, b);
          } else {
            requestLayout();
          }
        }
      }
      label140:
      requestLayout();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    H = 0;
    u = true;
    w = false;
    if (p != null) {
      p.c(this);
    }
    ae = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (d != null) {
      d.c();
    }
    w = false;
    c();
    u = false;
    if (p != null) {
      p.b(this, a);
    }
    removeCallbacks(am);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = r.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((g)r.get(i1)).a(paramCanvas, this, e);
      i1 += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (p == null) {}
    label110:
    label113:
    for (;;)
    {
      return false;
      if ((!z) && ((t.d(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (p.e())
        {
          f1 = -t.e(paramMotionEvent, 9);
          if (!p.d()) {
            break label110;
          }
        }
        for (float f2 = t.e(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label113;
          }
          float f3 = getScrollFactor();
          a((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    boolean bool1 = true;
    if (z) {}
    do
    {
      return false;
      if (a(paramMotionEvent))
      {
        y();
        return true;
      }
    } while (p == null);
    boolean bool2 = p.d();
    boolean bool3 = p.e();
    if (O == null) {
      O = VelocityTracker.obtain();
    }
    O.addMovement(paramMotionEvent);
    int i2 = t.a(paramMotionEvent);
    int i1 = t.b(paramMotionEvent);
    switch (i2)
    {
    case 4: 
    default: 
      if (M == 1) {
        return bool1;
      }
      break;
    case 0: 
      label136:
      if (A) {
        A = false;
      }
      N = t.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      R = i1;
      P = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      S = i1;
      Q = i1;
      if (M == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      if (!bool2) {}
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool3) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      break;
      N = t.b(paramMotionEvent, i1);
      i2 = (int)(t.c(paramMotionEvent, i1) + 0.5F);
      R = i2;
      P = i2;
      i1 = (int)(t.d(paramMotionEvent, i1) + 0.5F);
      S = i1;
      Q = i1;
      break;
      i2 = t.a(paramMotionEvent, N);
      if (i2 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + N + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i1 = (int)(t.c(paramMotionEvent, i2) + 0.5F);
      i2 = (int)(t.d(paramMotionEvent, i2) + 0.5F);
      if (M == 1) {
        break;
      }
      i1 -= P;
      int i4 = i2 - Q;
      int i5;
      if ((bool2) && (Math.abs(i1) > T))
      {
        i2 = P;
        i5 = T;
        if (i1 < 0)
        {
          i1 = -1;
          label433:
          R = (i1 * i5 + i2);
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        i2 = i1;
        if (bool3)
        {
          i2 = i1;
          if (Math.abs(i4) > T)
          {
            i2 = Q;
            i5 = T;
            if (i4 >= 0) {
              break label530;
            }
          }
        }
        label530:
        for (i1 = i3;; i1 = 1)
        {
          S = (i2 + i1 * i5);
          i2 = 1;
          if (i2 == 0) {
            break;
          }
          paramMotionEvent = getParent();
          if (paramMotionEvent != null) {
            paramMotionEvent.requestDisallowInterceptTouchEvent(true);
          }
          setScrollState(1);
          break;
          i1 = 1;
          break label433;
        }
        c(paramMotionEvent);
        break;
        O.clear();
        stopNestedScroll();
        break;
        y();
        break;
        bool1 = false;
        break label136;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b();
    i.a("RV OnLayout");
    k();
    i.a();
    a(false);
    w = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (C)
    {
      b();
      F();
      if (r.a(e))
      {
        r.b(e, true);
        C = false;
        a(false);
      }
    }
    else
    {
      if (o == null) {
        break label107;
      }
      e.e = o.a();
      label65:
      if (p != null) {
        break label118;
      }
      i(paramInt1, paramInt2);
    }
    for (;;)
    {
      r.b(e, false);
      return;
      b.e();
      r.b(e, false);
      break;
      label107:
      e.e = 0;
      break label65;
      label118:
      p.a(a, e, paramInt1, paramInt2);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    k = ((SavedState)paramParcelable);
    super.onRestoreInstanceState(k.getSuperState());
    if ((p != null) && (k.a != null)) {
      p.a(k.a);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (k != null)
    {
      SavedState.a(localSavedState, k);
      return localSavedState;
    }
    if (p != null)
    {
      a = p.c();
      return localSavedState;
    }
    a = null;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      h();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i7 = 0;
    if ((z) || (A)) {}
    do
    {
      return false;
      if (b(paramMotionEvent))
      {
        y();
        return true;
      }
    } while (p == null);
    boolean bool1 = p.d();
    boolean bool2 = p.e();
    if (O == null) {
      O = VelocityTracker.obtain();
    }
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int i3 = t.a(paramMotionEvent);
    int i2 = t.b(paramMotionEvent);
    if (i3 == 0)
    {
      int[] arrayOfInt = al;
      al[1] = 0;
      arrayOfInt[0] = 0;
    }
    localMotionEvent.offsetLocation(al[0], al[1]);
    int i1 = i7;
    switch (i3)
    {
    default: 
      i1 = i7;
    case 4: 
      if (i1 == 0) {
        O.addMovement(localMotionEvent);
      }
      localMotionEvent.recycle();
      return true;
    case 0: 
      N = t.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      R = i1;
      P = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      S = i1;
      Q = i1;
      if (!bool1) {
        break;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      i1 = i7;
      break;
      N = t.b(paramMotionEvent, i2);
      i1 = (int)(t.c(paramMotionEvent, i2) + 0.5F);
      R = i1;
      P = i1;
      i1 = (int)(t.d(paramMotionEvent, i2) + 0.5F);
      S = i1;
      Q = i1;
      i1 = i7;
      break;
      i1 = t.a(paramMotionEvent, N);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + N + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i8 = (int)(t.c(paramMotionEvent, i1) + 0.5F);
      int i9 = (int)(t.d(paramMotionEvent, i1) + 0.5F);
      int i4 = R - i8;
      i3 = S - i9;
      i1 = i3;
      i2 = i4;
      if (dispatchNestedPreScroll(i4, i3, ak, aj))
      {
        i2 = i4 - ak[0];
        i1 = i3 - ak[1];
        localMotionEvent.offsetLocation(aj[0], aj[1]);
        paramMotionEvent = al;
        paramMotionEvent[0] += aj[0];
        paramMotionEvent = al;
        paramMotionEvent[1] += aj[1];
      }
      i3 = i1;
      i4 = i2;
      if (M != 1)
      {
        if ((!bool1) || (Math.abs(i2) <= T)) {
          break label956;
        }
        if (i2 <= 0) {
          break label789;
        }
        i2 -= T;
      }
      label612:
      label662:
      label750:
      label789:
      label801:
      label819:
      label879:
      label940:
      label956:
      for (i3 = 1;; i3 = 0)
      {
        int i5 = i1;
        int i6 = i3;
        if (bool2)
        {
          i5 = i1;
          i6 = i3;
          if (Math.abs(i1) > T)
          {
            if (i1 <= 0) {
              break label801;
            }
            i5 = i1 - T;
            i6 = 1;
          }
        }
        i3 = i5;
        i4 = i2;
        if (i6 != 0)
        {
          paramMotionEvent = getParent();
          if (paramMotionEvent != null) {
            paramMotionEvent.requestDisallowInterceptTouchEvent(true);
          }
          setScrollState(1);
          i4 = i2;
          i3 = i5;
        }
        i1 = i7;
        if (M != 1) {
          break;
        }
        R = (i8 - aj[0]);
        S = (i9 - aj[1]);
        if (bool1) {
          if (!bool2) {
            break label819;
          }
        }
        for (;;)
        {
          i1 = i7;
          if (!a(i4, i3, localMotionEvent)) {
            break;
          }
          getParent().requestDisallowInterceptTouchEvent(true);
          i1 = i7;
          break;
          i2 += T;
          break label612;
          i5 = i1 + T;
          break label662;
          i4 = 0;
          break label750;
          i3 = 0;
        }
        c(paramMotionEvent);
        i1 = i7;
        break;
        O.addMovement(localMotionEvent);
        O.computeCurrentVelocity(1000, V);
        float f1;
        if (bool1)
        {
          f1 = -ag.a(O, N);
          if (!bool2) {
            break label940;
          }
        }
        for (float f2 = -ag.b(O, N);; f2 = 0.0F)
        {
          if (((f1 == 0.0F) && (f2 == 0.0F)) || (!b((int)f1, (int)f2))) {
            setScrollState(0);
          }
          x();
          i1 = 1;
          break;
          f1 = 0.0F;
          break label879;
        }
        y();
        i1 = i7;
        break;
      }
    }
  }
  
  void p()
  {
    int i2 = c.c();
    int i1 = 0;
    while (i1 < i2)
    {
      u localu = b(c.c(i1));
      if ((localu != null) && (!localu.c())) {
        localu.b(6);
      }
      i1 += 1;
    }
    l();
    a.h();
  }
  
  public boolean q()
  {
    return (!w) || (G) || (b.d());
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    u localu = b(paramView);
    if (localu != null)
    {
      if (!localu.q()) {
        break label32;
      }
      localu.k();
    }
    label32:
    while (localu.c())
    {
      h(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localu);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!p.a(this, e, paramView1, paramView2)) && (paramView2 != null))
    {
      n.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof LayoutParams))
      {
        localObject = (LayoutParams)localObject;
        if (!c)
        {
          localObject = b;
          Rect localRect = n;
          left -= left;
          localRect = n;
          right += right;
          localRect = n;
          top -= top;
          localRect = n;
          int i1 = bottom;
          bottom = (bottom + i1);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, n);
      offsetRectIntoDescendantCoords(paramView1, n);
      localObject = n;
      if (w) {
        break label215;
      }
    }
    label215:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return p.a(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i2 = s.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((k)s.get(i1)).a(paramBoolean);
      i1 += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((!x) && (!z))
    {
      super.requestLayout();
      return;
    }
    y = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (p == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (z);
      bool1 = p.d();
      bool2 = p.e();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label74;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label74:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (a(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(j paramj)
  {
    af = paramj;
    ai.a(this, af);
  }
  
  public void setAdapter(a parama)
  {
    setLayoutFrozen(false);
    a(parama, false, true);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(d paramd)
  {
    if (paramd == ag) {
      return;
    }
    ag = paramd;
    if (ag != null) {}
    for (boolean bool = true;; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != l) {
      h();
    }
    l = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (w) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  public void setItemAnimator(e parame)
  {
    if (d != null)
    {
      d.c();
      d.a(null);
    }
    d = parame;
    if (d != null) {
      d.a(ad);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != z)
    {
      a("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        z = paramBoolean;
        if ((y) && (p != null) && (o != null)) {
          requestLayout();
        }
        y = false;
      }
    }
    else
    {
      return;
    }
    long l1 = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0));
    z = paramBoolean;
    A = true;
    c();
  }
  
  public void setLayoutManager(i parami)
  {
    if (parami == p) {
      return;
    }
    if (p != null)
    {
      if (u) {
        p.b(this, a);
      }
      p.b(null);
    }
    a.a();
    c.a();
    p = parami;
    if (parami != null)
    {
      if (r != null) {
        throw new IllegalArgumentException("LayoutManager " + parami + " is already attached to a RecyclerView: " + r);
      }
      p.b(this);
      if (u) {
        p.c(this);
      }
    }
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    ai.a(paramBoolean);
  }
  
  @Deprecated
  public void setOnScrollListener(l paraml)
  {
    ab = paraml;
  }
  
  public void setRecycledViewPool(m paramm)
  {
    a.a(paramm);
  }
  
  public void setRecyclerListener(o paramo)
  {
    q = paramo;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      T = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    T = as.a(localViewConfiguration);
  }
  
  public void setViewCacheExtension(s params)
  {
    a.a(params);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return ai.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    ai.c();
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    RecyclerView.u a;
    final Rect b = new Rect();
    boolean c = true;
    boolean d = false;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public boolean c()
    {
      return a.p();
    }
    
    public boolean d()
    {
      return a.n();
    }
    
    public int e()
    {
      return a.d();
    }
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public RecyclerView.SavedState a(Parcel paramAnonymousParcel)
      {
        return new RecyclerView.SavedState(paramAnonymousParcel);
      }
      
      public RecyclerView.SavedState[] a(int paramAnonymousInt)
      {
        return new RecyclerView.SavedState[paramAnonymousInt];
      }
    };
    Parcelable a;
    
    SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readParcelable(RecyclerView.i.class.getClassLoader());
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void a(SavedState paramSavedState)
    {
      a = a;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(a, 0);
    }
  }
  
  public static abstract class a<VH extends RecyclerView.u>
  {
    private final RecyclerView.b a = new RecyclerView.b();
    private boolean b = false;
    
    public abstract int a();
    
    public int a(int paramInt)
    {
      return 0;
    }
    
    public abstract VH a(ViewGroup paramViewGroup, int paramInt);
    
    public void a(RecyclerView.c paramc)
    {
      a.registerObserver(paramc);
    }
    
    public void a(VH paramVH) {}
    
    public abstract void a(VH paramVH, int paramInt);
    
    public void a(VH paramVH, int paramInt, List<Object> paramList)
    {
      a(paramVH, paramInt);
    }
    
    public void a(RecyclerView paramRecyclerView) {}
    
    public long b(int paramInt)
    {
      return -1L;
    }
    
    public final VH b(ViewGroup paramViewGroup, int paramInt)
    {
      i.a("RV CreateView");
      paramViewGroup = a(paramViewGroup, paramInt);
      e = paramInt;
      i.a();
      return paramViewGroup;
    }
    
    public void b(RecyclerView.c paramc)
    {
      a.unregisterObserver(paramc);
    }
    
    public final void b(VH paramVH, int paramInt)
    {
      b = paramInt;
      if (b()) {
        d = b(paramInt);
      }
      paramVH.a(1, 519);
      i.a("RV OnBindView");
      a(paramVH, paramInt, paramVH.t());
      paramVH.s();
      i.a();
    }
    
    public void b(RecyclerView paramRecyclerView) {}
    
    public final boolean b()
    {
      return b;
    }
    
    public boolean b(VH paramVH)
    {
      return false;
    }
    
    public final void c()
    {
      a.a();
    }
    
    public void c(VH paramVH) {}
    
    public void d(VH paramVH) {}
  }
  
  static class b
    extends Observable<RecyclerView.c>
  {
    public void a()
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)mObservers.get(i)).a();
        i -= 1;
      }
    }
  }
  
  public static abstract class c
  {
    public void a() {}
  }
  
  public static abstract interface d
  {
    public abstract int a(int paramInt1, int paramInt2);
  }
  
  public static abstract class e
  {
    private b a = null;
    private ArrayList<a> b = new ArrayList();
    private long c = 120L;
    private long d = 120L;
    private long e = 250L;
    private long f = 250L;
    private boolean g = true;
    
    public abstract void a();
    
    void a(b paramb)
    {
      a = paramb;
    }
    
    public final void a(RecyclerView.u paramu, boolean paramBoolean)
    {
      d(paramu, paramBoolean);
      if (a != null) {
        a.d(paramu);
      }
    }
    
    public abstract boolean a(RecyclerView.u paramu);
    
    public abstract boolean a(RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract boolean a(RecyclerView.u paramu1, RecyclerView.u paramu2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public final void b(RecyclerView.u paramu, boolean paramBoolean)
    {
      c(paramu, paramBoolean);
    }
    
    public abstract boolean b();
    
    public abstract boolean b(RecyclerView.u paramu);
    
    public abstract void c();
    
    public abstract void c(RecyclerView.u paramu);
    
    public void c(RecyclerView.u paramu, boolean paramBoolean) {}
    
    public long d()
    {
      return e;
    }
    
    public final void d(RecyclerView.u paramu)
    {
      k(paramu);
      if (a != null) {
        a.a(paramu);
      }
    }
    
    public void d(RecyclerView.u paramu, boolean paramBoolean) {}
    
    public long e()
    {
      return c;
    }
    
    public final void e(RecyclerView.u paramu)
    {
      o(paramu);
      if (a != null) {
        a.c(paramu);
      }
    }
    
    public long f()
    {
      return d;
    }
    
    public final void f(RecyclerView.u paramu)
    {
      m(paramu);
      if (a != null) {
        a.b(paramu);
      }
    }
    
    public long g()
    {
      return f;
    }
    
    public final void g(RecyclerView.u paramu)
    {
      j(paramu);
    }
    
    public final void h(RecyclerView.u paramu)
    {
      n(paramu);
    }
    
    public boolean h()
    {
      return g;
    }
    
    public final void i()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        ((a)b.get(i)).a();
        i += 1;
      }
      b.clear();
    }
    
    public final void i(RecyclerView.u paramu)
    {
      l(paramu);
    }
    
    public void j(RecyclerView.u paramu) {}
    
    public void k(RecyclerView.u paramu) {}
    
    public void l(RecyclerView.u paramu) {}
    
    public void m(RecyclerView.u paramu) {}
    
    public void n(RecyclerView.u paramu) {}
    
    public void o(RecyclerView.u paramu) {}
    
    public static abstract interface a
    {
      public abstract void a();
    }
    
    static abstract interface b
    {
      public abstract void a(RecyclerView.u paramu);
      
      public abstract void b(RecyclerView.u paramu);
      
      public abstract void c(RecyclerView.u paramu);
      
      public abstract void d(RecyclerView.u paramu);
    }
  }
  
  private class f
    implements RecyclerView.e.b
  {
    private f() {}
    
    public void a(RecyclerView.u paramu)
    {
      paramu.a(true);
      if ((!RecyclerView.c(RecyclerView.this, a)) && (paramu.q())) {
        removeDetachedView(a, false);
      }
    }
    
    public void b(RecyclerView.u paramu)
    {
      paramu.a(true);
      if (!RecyclerView.u.d(paramu)) {
        RecyclerView.c(RecyclerView.this, a);
      }
    }
    
    public void c(RecyclerView.u paramu)
    {
      paramu.a(true);
      if (!RecyclerView.u.d(paramu)) {
        RecyclerView.c(RecyclerView.this, a);
      }
    }
    
    public void d(RecyclerView.u paramu)
    {
      paramu.a(true);
      if ((g != null) && (h == null))
      {
        g = null;
        paramu.a(-65, RecyclerView.u.e(paramu));
      }
      h = null;
      if (!RecyclerView.u.d(paramu)) {
        RecyclerView.c(RecyclerView.this, a);
      }
    }
  }
  
  public static abstract class g
  {
    @Deprecated
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.r paramr)
    {
      a(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void a(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.r paramr)
    {
      a(paramRect, ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e(), paramRecyclerView);
    }
    
    @Deprecated
    public void b(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void b(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.r paramr)
    {
      b(paramCanvas, paramRecyclerView);
    }
  }
  
  private static class h
  {
    RecyclerView.u a;
    int b;
    int c;
    int d;
    int e;
    
    h(RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = paramu;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
  }
  
  public static abstract class i
  {
    private boolean a = false;
    private boolean b = false;
    e q;
    RecyclerView r;
    RecyclerView.q s;
    
    public static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      int j = 1073741824;
      int i = Math.max(0, paramInt1 - paramInt2);
      if (paramBoolean) {
        if (paramInt3 >= 0)
        {
          paramInt1 = paramInt3;
          paramInt2 = j;
        }
      }
      for (;;)
      {
        return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
        paramInt2 = 0;
        paramInt1 = 0;
        continue;
        paramInt2 = j;
        paramInt1 = paramInt3;
        if (paramInt3 < 0) {
          if (paramInt3 == -1)
          {
            paramInt1 = i;
            paramInt2 = j;
          }
          else if (paramInt3 == -2)
          {
            paramInt2 = Integer.MIN_VALUE;
            paramInt1 = i;
          }
          else
          {
            paramInt2 = 0;
            paramInt1 = 0;
          }
        }
      }
    }
    
    private void a(int paramInt, View paramView)
    {
      q.d(paramInt);
    }
    
    private void a(RecyclerView.n paramn, int paramInt, View paramView)
    {
      RecyclerView.u localu = RecyclerView.b(paramView);
      if (localu.c()) {
        return;
      }
      if ((localu.l()) && (!localu.p()) && (!localu.n()) && (!RecyclerView.f(r).b()))
      {
        d(paramInt);
        paramn.b(localu);
        return;
      }
      e(paramInt);
      paramn.c(paramView);
    }
    
    private void a(RecyclerView.q paramq)
    {
      if (s == paramq) {
        s = null;
      }
    }
    
    private void a(View paramView, int paramInt, boolean paramBoolean)
    {
      RecyclerView.u localu = RecyclerView.b(paramView);
      RecyclerView.LayoutParams localLayoutParams;
      if ((paramBoolean) || (localu.p()))
      {
        r.e.b(paramView);
        localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
        if ((!localu.i()) && (!localu.g())) {
          break label126;
        }
        if (!localu.g()) {
          break label118;
        }
        localu.h();
        label67:
        q.a(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      for (;;)
      {
        if (d)
        {
          a.invalidate();
          d = false;
        }
        return;
        r.e.a(paramView);
        break;
        label118:
        localu.j();
        break label67;
        label126:
        if (paramView.getParent() == r)
        {
          int j = q.b(paramView);
          int i = paramInt;
          if (paramInt == -1) {
            i = q.b();
          }
          if (j == -1) {
            throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + r.indexOfChild(paramView));
          }
          if (j != i) {
            RecyclerView.d(r).a(j, i);
          }
        }
        else
        {
          q.a(paramView, paramInt, false);
          c = true;
          if ((s != null) && (s.c())) {
            s.b(paramView);
          }
        }
      }
    }
    
    public void A()
    {
      a = true;
    }
    
    public int a(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int a(RecyclerView.n paramn, RecyclerView.r paramr)
    {
      if ((r == null) || (RecyclerView.f(r) == null)) {}
      while (!e()) {
        return 1;
      }
      return RecyclerView.f(r).a();
    }
    
    public abstract RecyclerView.LayoutParams a();
    
    public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
    }
    
    public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
        return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.LayoutParams(paramLayoutParams);
    }
    
    public View a(View paramView, int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
    {
      return null;
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      View localView = f(paramInt1);
      if (localView == null) {
        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
      }
      e(paramInt1);
      c(localView, paramInt2);
    }
    
    public void a(int paramInt, RecyclerView.n paramn)
    {
      View localView = f(paramInt);
      d(paramInt);
      paramn.a(localView);
    }
    
    public void a(Parcelable paramParcelable) {}
    
    public void a(RecyclerView.a parama1, RecyclerView.a parama2) {}
    
    public void a(RecyclerView.n paramn)
    {
      int i = r() - 1;
      while (i >= 0)
      {
        a(paramn, i, f(i));
        i -= 1;
      }
    }
    
    public void a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2)
    {
      RecyclerView.b(r, paramInt1, paramInt2);
    }
    
    public void a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, c paramc)
    {
      int i;
      if (e())
      {
        i = d(paramView);
        if (!d()) {
          break label51;
        }
      }
      label51:
      for (int j = d(paramView);; j = 0)
      {
        paramc.c(c.l.a(i, 1, j, 1, false, false));
        return;
        i = 0;
        break;
      }
    }
    
    public void a(RecyclerView.n paramn, RecyclerView.r paramr, AccessibilityEvent paramAccessibilityEvent)
    {
      boolean bool2 = true;
      paramn = com.yelp.android.h.a.a(paramAccessibilityEvent);
      if ((r == null) || (paramn == null)) {
        return;
      }
      boolean bool1 = bool2;
      if (!ai.b(r, 1))
      {
        bool1 = bool2;
        if (!ai.b(r, -1))
        {
          bool1 = bool2;
          if (!ai.a(r, -1)) {
            if (!ai.a(r, 1)) {
              break label111;
            }
          }
        }
      }
      label111:
      for (bool1 = bool2;; bool1 = false)
      {
        paramn.a(bool1);
        if (RecyclerView.f(r) == null) {
          break;
        }
        paramn.a(RecyclerView.f(r).a());
        return;
      }
    }
    
    public void a(RecyclerView.n paramn, RecyclerView.r paramr, c paramc)
    {
      if ((ai.b(r, -1)) || (ai.a(r, -1)))
      {
        paramc.a(8192);
        paramc.i(true);
      }
      if ((ai.b(r, 1)) || (ai.a(r, 1)))
      {
        paramc.a(4096);
        paramc.i(true);
      }
      paramc.b(c.k.a(a(paramn, paramr), b(paramn, paramr), e(paramn, paramr), d(paramn, paramr)));
    }
    
    public void a(RecyclerView paramRecyclerView) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
    {
      c(paramRecyclerView, paramInt1, paramInt2);
    }
    
    public void a(RecyclerView paramRecyclerView, RecyclerView.n paramn)
    {
      e(paramRecyclerView);
    }
    
    public void a(View paramView)
    {
      a(paramView, -1);
    }
    
    public void a(View paramView, int paramInt)
    {
      a(paramView, paramInt, true);
    }
    
    public void a(View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = r.f(paramView);
      int i = left;
      int j = right;
      int k = top;
      int m = bottom;
      paramView.measure(a(s(), i + j + paramInt1 + (u() + w() + leftMargin + rightMargin), width, d()), a(t(), m + k + paramInt2 + (v() + x() + topMargin + bottomMargin), height, e()));
    }
    
    public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      Rect localRect = getLayoutParamsb;
      paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
    }
    
    public void a(View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
    {
      RecyclerView.u localu = RecyclerView.b(paramView);
      if (localu.p()) {
        r.e.b(paramView);
      }
      for (;;)
      {
        q.a(paramView, paramInt, paramLayoutParams, localu.p());
        return;
        r.e.a(paramView);
      }
    }
    
    public void a(View paramView, Rect paramRect)
    {
      if (r == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(r.f(paramView));
    }
    
    public void a(View paramView, RecyclerView.n paramn)
    {
      c(paramView);
      paramn.a(paramView);
    }
    
    void a(View paramView, c paramc)
    {
      RecyclerView.u localu = RecyclerView.b(paramView);
      if ((localu != null) && (!localu.p()) && (!q.c(a))) {
        a(r.a, r.e, paramView, paramc);
      }
    }
    
    public void a(AccessibilityEvent paramAccessibilityEvent)
    {
      a(r.a, r.e, paramAccessibilityEvent);
    }
    
    void a(c paramc)
    {
      a(r.a, r.e, paramc);
    }
    
    public void a(Runnable paramRunnable)
    {
      if (r != null) {
        ai.a(r, paramRunnable);
      }
    }
    
    public void a(String paramString)
    {
      if (r != null) {
        r.a(paramString);
      }
    }
    
    boolean a(int paramInt, Bundle paramBundle)
    {
      return a(r.a, r.e, paramInt, paramBundle);
    }
    
    public boolean a(RecyclerView.LayoutParams paramLayoutParams)
    {
      return paramLayoutParams != null;
    }
    
    public boolean a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt, Bundle paramBundle)
    {
      if (r == null) {}
      int i;
      do
      {
        return false;
        switch (paramInt)
        {
        default: 
          paramInt = 0;
          i = 0;
        }
      } while ((i == 0) && (paramInt == 0));
      r.scrollBy(paramInt, i);
      return true;
      if (ai.b(r, -1)) {}
      for (paramInt = -(t() - v() - x());; paramInt = 0)
      {
        i = paramInt;
        int j;
        if (ai.a(r, -1))
        {
          j = -(s() - u() - w());
          i = paramInt;
          paramInt = j;
          break;
          if (!ai.b(r, 1)) {
            break label207;
          }
        }
        label207:
        for (paramInt = t() - v() - x();; paramInt = 0)
        {
          i = paramInt;
          if (ai.a(r, 1))
          {
            j = s();
            int k = u();
            int m = w();
            i = paramInt;
            paramInt = j - k - m;
            break;
          }
          paramInt = 0;
          break;
        }
      }
    }
    
    public boolean a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    public boolean a(RecyclerView paramRecyclerView, RecyclerView.r paramr, View paramView1, View paramView2)
    {
      return a(paramRecyclerView, paramView1, paramView2);
    }
    
    public boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
    {
      int i2 = u();
      int m = v();
      int i3 = s() - w();
      int i1 = t();
      int i6 = x();
      int i4 = paramView.getLeft() + left;
      int n = paramView.getTop() + top;
      int i5 = i4 + paramRect.width();
      int i7 = paramRect.height();
      int i = Math.min(0, i4 - i2);
      int j = Math.min(0, n - m);
      int k = Math.max(0, i5 - i3);
      i1 = Math.max(0, n + i7 - (i1 - i6));
      if (p() == 1) {
        if (k != 0)
        {
          i = k;
          if (j == 0) {
            break label207;
          }
          label144:
          if ((i == 0) && (j == 0)) {
            break label233;
          }
          if (!paramBoolean) {
            break label222;
          }
          paramRecyclerView.scrollBy(i, j);
        }
      }
      for (;;)
      {
        return true;
        i = Math.max(i, i5 - i3);
        break;
        if (i != 0) {
          break;
        }
        for (;;)
        {
          i = Math.min(i4 - i2, k);
        }
        label207:
        j = Math.min(n - m, i1);
        break label144;
        label222:
        paramRecyclerView.a(i, j);
      }
      label233:
      return false;
    }
    
    @Deprecated
    public boolean a(RecyclerView paramRecyclerView, View paramView1, View paramView2)
    {
      return (o()) || (paramRecyclerView.j());
    }
    
    public boolean a(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
    {
      return false;
    }
    
    boolean a(View paramView, int paramInt, Bundle paramBundle)
    {
      return a(r.a, r.e, paramView, paramInt, paramBundle);
    }
    
    public int b(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int b(RecyclerView.n paramn, RecyclerView.r paramr)
    {
      if ((r == null) || (RecyclerView.f(r) == null)) {}
      while (!d()) {
        return 1;
      }
      return RecyclerView.f(r).a();
    }
    
    public int b(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public View b(int paramInt)
    {
      int j = r();
      int i = 0;
      if (i < j)
      {
        View localView = f(i);
        RecyclerView.u localu = RecyclerView.b(localView);
        if (localu == null) {}
        while ((localu.d() != paramInt) || (localu.c()) || ((!r.e.a()) && (localu.p())))
        {
          i += 1;
          break;
        }
        return localView;
      }
      return null;
    }
    
    void b(RecyclerView.n paramn)
    {
      int j = paramn.d();
      int i = j - 1;
      if (i >= 0)
      {
        View localView = paramn.e(i);
        RecyclerView.u localu = RecyclerView.b(localView);
        if (localu.c()) {}
        for (;;)
        {
          i -= 1;
          break;
          localu.a(false);
          if (localu.q()) {
            r.removeDetachedView(localView, false);
          }
          if (r.d != null) {
            r.d.c(localu);
          }
          localu.a(true);
          paramn.b(localView);
        }
      }
      paramn.e();
      if (j > 0) {
        r.invalidate();
      }
    }
    
    void b(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        r = null;
        q = null;
        return;
      }
      r = paramRecyclerView;
      q = c;
    }
    
    public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    void b(RecyclerView paramRecyclerView, RecyclerView.n paramn)
    {
      b = false;
      a(paramRecyclerView, paramn);
    }
    
    public void b(View paramView)
    {
      b(paramView, -1);
    }
    
    public void b(View paramView, int paramInt)
    {
      a(paramView, paramInt, false);
    }
    
    public boolean b()
    {
      return false;
    }
    
    public boolean b(Runnable paramRunnable)
    {
      if (r != null) {
        return r.removeCallbacks(paramRunnable);
      }
      return false;
    }
    
    public int c(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public Parcelable c()
    {
      return null;
    }
    
    public void c(int paramInt) {}
    
    public void c(RecyclerView.n paramn)
    {
      int i = r() - 1;
      while (i >= 0)
      {
        if (!RecyclerView.b(f(i)).c()) {
          a(i, paramn);
        }
        i -= 1;
      }
    }
    
    public void c(RecyclerView.n paramn, RecyclerView.r paramr)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    void c(RecyclerView paramRecyclerView)
    {
      b = true;
      d(paramRecyclerView);
    }
    
    public void c(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void c(View paramView)
    {
      q.a(paramView);
    }
    
    public void c(View paramView, int paramInt)
    {
      a(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
    }
    
    public int d(RecyclerView.n paramn, RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int d(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int d(View paramView)
    {
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e();
    }
    
    public View d(View paramView, int paramInt)
    {
      return null;
    }
    
    public void d(int paramInt)
    {
      if (f(paramInt) != null) {
        q.a(paramInt);
      }
    }
    
    public void d(RecyclerView paramRecyclerView) {}
    
    public boolean d()
    {
      return false;
    }
    
    public int e(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int e(View paramView)
    {
      Rect localRect = getLayoutParamsb;
      int i = paramView.getMeasuredWidth();
      int j = left;
      return right + (i + j);
    }
    
    public void e(int paramInt)
    {
      a(paramInt, f(paramInt));
    }
    
    @Deprecated
    public void e(RecyclerView paramRecyclerView) {}
    
    public boolean e()
    {
      return false;
    }
    
    public boolean e(RecyclerView.n paramn, RecyclerView.r paramr)
    {
      return false;
    }
    
    public int f(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int f(View paramView)
    {
      Rect localRect = getLayoutParamsb;
      int i = paramView.getMeasuredHeight();
      int j = top;
      return bottom + (i + j);
    }
    
    public View f(int paramInt)
    {
      if (q != null) {
        return q.b(paramInt);
      }
      return null;
    }
    
    public int g(RecyclerView.r paramr)
    {
      return 0;
    }
    
    public int g(View paramView)
    {
      return paramView.getLeft() - m(paramView);
    }
    
    public void g(int paramInt)
    {
      if (r != null) {
        r.b(paramInt);
      }
    }
    
    public int h(View paramView)
    {
      return paramView.getTop() - k(paramView);
    }
    
    public void h(int paramInt)
    {
      if (r != null) {
        r.a(paramInt);
      }
    }
    
    public int i(View paramView)
    {
      return paramView.getRight() + n(paramView);
    }
    
    public void i(int paramInt) {}
    
    public int j(View paramView)
    {
      return paramView.getBottom() + l(paramView);
    }
    
    public int k(View paramView)
    {
      return getLayoutParamsb.top;
    }
    
    public int l(View paramView)
    {
      return getLayoutParamsb.bottom;
    }
    
    public void l()
    {
      if (r != null) {
        r.requestLayout();
      }
    }
    
    public int m(View paramView)
    {
      return getLayoutParamsb.left;
    }
    
    public boolean m()
    {
      return b;
    }
    
    public int n(View paramView)
    {
      return getLayoutParamsb.right;
    }
    
    public boolean n()
    {
      return (r != null) && (RecyclerView.o(r));
    }
    
    public boolean o()
    {
      return (s != null) && (s.c());
    }
    
    public int p()
    {
      return ai.h(r);
    }
    
    public int q()
    {
      return -1;
    }
    
    public int r()
    {
      if (q != null) {
        return q.b();
      }
      return 0;
    }
    
    public int s()
    {
      if (r != null) {
        return r.getWidth();
      }
      return 0;
    }
    
    public int t()
    {
      if (r != null) {
        return r.getHeight();
      }
      return 0;
    }
    
    public int u()
    {
      if (r != null) {
        return r.getPaddingLeft();
      }
      return 0;
    }
    
    public int v()
    {
      if (r != null) {
        return r.getPaddingTop();
      }
      return 0;
    }
    
    public int w()
    {
      if (r != null) {
        return r.getPaddingRight();
      }
      return 0;
    }
    
    public int x()
    {
      if (r != null) {
        return r.getPaddingBottom();
      }
      return 0;
    }
    
    public View y()
    {
      if (r == null) {}
      View localView;
      do
      {
        return null;
        localView = r.getFocusedChild();
      } while ((localView == null) || (q.c(localView)));
      return localView;
    }
    
    void z()
    {
      if (s != null) {
        s.a();
      }
    }
  }
  
  public static abstract interface j
  {
    public abstract void a(View paramView);
    
    public abstract void b(View paramView);
  }
  
  public static abstract interface k
  {
    public abstract void a(boolean paramBoolean);
    
    public abstract boolean a(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
    
    public abstract void b(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
  }
  
  public static abstract class l
  {
    public void a(RecyclerView paramRecyclerView, int paramInt) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  public static class m
  {
    private SparseArray<ArrayList<RecyclerView.u>> a = new SparseArray();
    private SparseIntArray b = new SparseIntArray();
    private int c = 0;
    
    private ArrayList<RecyclerView.u> b(int paramInt)
    {
      ArrayList localArrayList2 = (ArrayList)a.get(paramInt);
      ArrayList localArrayList1 = localArrayList2;
      if (localArrayList2 == null)
      {
        localArrayList2 = new ArrayList();
        a.put(paramInt, localArrayList2);
        localArrayList1 = localArrayList2;
        if (b.indexOfKey(paramInt) < 0)
        {
          b.put(paramInt, 5);
          localArrayList1 = localArrayList2;
        }
      }
      return localArrayList1;
    }
    
    public RecyclerView.u a(int paramInt)
    {
      ArrayList localArrayList = (ArrayList)a.get(paramInt);
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        paramInt = localArrayList.size() - 1;
        RecyclerView.u localu = (RecyclerView.u)localArrayList.get(paramInt);
        localArrayList.remove(paramInt);
        return localu;
      }
      return null;
    }
    
    public void a()
    {
      a.clear();
    }
    
    void a(RecyclerView.a parama)
    {
      c += 1;
    }
    
    void a(RecyclerView.a parama1, RecyclerView.a parama2, boolean paramBoolean)
    {
      if (parama1 != null) {
        b();
      }
      if ((!paramBoolean) && (c == 0)) {
        a();
      }
      if (parama2 != null) {
        a(parama2);
      }
    }
    
    public void a(RecyclerView.u paramu)
    {
      int i = paramu.f();
      ArrayList localArrayList = b(i);
      if (b.get(i) <= localArrayList.size()) {
        return;
      }
      paramu.u();
      localArrayList.add(paramu);
    }
    
    void b()
    {
      c -= 1;
    }
  }
  
  public final class n
  {
    final ArrayList<RecyclerView.u> a = new ArrayList();
    final ArrayList<RecyclerView.u> b = new ArrayList();
    private ArrayList<RecyclerView.u> d = null;
    private final List<RecyclerView.u> e = Collections.unmodifiableList(a);
    private int f = 2;
    private RecyclerView.m g;
    private RecyclerView.s h;
    
    public n() {}
    
    private void a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      int i = paramViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = paramViewGroup.getChildAt(i);
        if ((localView instanceof ViewGroup)) {
          a((ViewGroup)localView, true);
        }
        i -= 1;
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
        return;
      }
      i = paramViewGroup.getVisibility();
      paramViewGroup.setVisibility(4);
      paramViewGroup.setVisibility(i);
    }
    
    private void d(View paramView)
    {
      if (i())
      {
        if (ai.e(paramView) == 0) {
          ai.c(paramView, 1);
        }
        if (!ai.b(paramView)) {
          ai.a(paramView, RecyclerView.m(RecyclerView.this).b());
        }
      }
    }
    
    private void f(RecyclerView.u paramu)
    {
      if ((a instanceof ViewGroup)) {
        a((ViewGroup)a, false);
      }
    }
    
    RecyclerView.u a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int j = 0;
      int k = a.size();
      int i = 0;
      Object localObject;
      if (i < k)
      {
        localObject = (RecyclerView.u)a.get(i);
        if ((((RecyclerView.u)localObject).i()) || (((RecyclerView.u)localObject).d() != paramInt1) || (((RecyclerView.u)localObject).l()) || ((!RecyclerView.r.d(e)) && (((RecyclerView.u)localObject).p()))) {
          break label269;
        }
        if ((paramInt2 != -1) && (((RecyclerView.u)localObject).f() != paramInt2)) {
          Log.e("RecyclerView", "Scrap view for position " + paramInt1 + " isn't dirty but has" + " wrong view type! (found " + ((RecyclerView.u)localObject).f() + " but expected " + paramInt2 + ")");
        }
      }
      else
      {
        if (!paramBoolean)
        {
          localObject = c.a(paramInt1, paramInt2);
          if (localObject != null) {
            d.c(a((View)localObject));
          }
        }
        i = b.size();
        paramInt2 = j;
      }
      for (;;)
      {
        if (paramInt2 >= i) {
          break label285;
        }
        localObject = (RecyclerView.u)b.get(paramInt2);
        if ((!((RecyclerView.u)localObject).l()) && (((RecyclerView.u)localObject).d() == paramInt1))
        {
          if (!paramBoolean) {
            b.remove(paramInt2);
          }
          return (RecyclerView.u)localObject;
          ((RecyclerView.u)localObject).b(32);
          return (RecyclerView.u)localObject;
          label269:
          i += 1;
          break;
        }
        paramInt2 += 1;
      }
      label285:
      return null;
    }
    
    RecyclerView.u a(long paramLong, int paramInt, boolean paramBoolean)
    {
      int i = a.size() - 1;
      RecyclerView.u localu2;
      RecyclerView.u localu1;
      while (i >= 0)
      {
        localu2 = (RecyclerView.u)a.get(i);
        if ((localu2.e() == paramLong) && (!localu2.i()))
        {
          if (paramInt == localu2.f())
          {
            localu2.b(32);
            localu1 = localu2;
            if (localu2.p())
            {
              localu1 = localu2;
              if (!e.a())
              {
                localu2.a(2, 14);
                localu1 = localu2;
              }
            }
            return localu1;
          }
          if (!paramBoolean)
          {
            a.remove(i);
            removeDetachedView(a, false);
            b(a);
          }
        }
        i -= 1;
      }
      i = b.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label245;
        }
        localu2 = (RecyclerView.u)b.get(i);
        if (localu2.e() == paramLong)
        {
          if (paramInt == localu2.f())
          {
            localu1 = localu2;
            if (paramBoolean) {
              break;
            }
            b.remove(i);
            return localu2;
          }
          if (!paramBoolean) {
            d(i);
          }
        }
        i -= 1;
      }
      label245:
      return null;
    }
    
    View a(int paramInt, boolean paramBoolean)
    {
      boolean bool = true;
      if ((paramInt < 0) || (paramInt >= e.e())) {
        throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + e.e());
      }
      Object localObject2;
      int i;
      if (e.a())
      {
        localObject2 = f(paramInt);
        if (localObject2 != null) {
          i = 1;
        }
      }
      for (;;)
      {
        Object localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = a(paramInt, -1, paramBoolean);
          localObject1 = localObject2;
          if (localObject2 != null) {
            if (!a((RecyclerView.u)localObject2)) {
              if (!paramBoolean)
              {
                ((RecyclerView.u)localObject2).b(4);
                if (((RecyclerView.u)localObject2).g())
                {
                  removeDetachedView(a, false);
                  ((RecyclerView.u)localObject2).h();
                  label174:
                  b((RecyclerView.u)localObject2);
                }
              }
              else
              {
                localObject1 = null;
              }
            }
          }
        }
        for (;;)
        {
          Object localObject3 = localObject1;
          int k = i;
          int j;
          if (localObject1 == null)
          {
            k = b.a(paramInt);
            if ((k < 0) || (k >= RecyclerView.f(RecyclerView.this).a()))
            {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + k + ")." + "state:" + e.e());
              i = 0;
              break;
              if (!((RecyclerView.u)localObject2).i()) {
                break label174;
              }
              ((RecyclerView.u)localObject2).j();
              break label174;
              i = 1;
              localObject1 = localObject2;
              continue;
            }
            int m = RecyclerView.f(RecyclerView.this).a(k);
            localObject2 = localObject1;
            j = i;
            if (RecyclerView.f(RecyclerView.this).b())
            {
              localObject1 = a(RecyclerView.f(RecyclerView.this).b(k), m, paramBoolean);
              localObject2 = localObject1;
              j = i;
              if (localObject1 != null)
              {
                b = k;
                j = 1;
                localObject2 = localObject1;
              }
            }
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (h != null)
              {
                localObject3 = h.a(this, paramInt, m);
                localObject1 = localObject2;
                if (localObject3 != null)
                {
                  localObject2 = a((View)localObject3);
                  if (localObject2 == null) {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                  }
                  localObject1 = localObject2;
                  if (((RecyclerView.u)localObject2).c()) {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                  }
                }
              }
            }
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject1 = f().a(m);
              localObject2 = localObject1;
              if (localObject1 != null)
              {
                ((RecyclerView.u)localObject1).u();
                localObject2 = localObject1;
                if (RecyclerView.s())
                {
                  f((RecyclerView.u)localObject1);
                  localObject2 = localObject1;
                }
              }
            }
            localObject3 = localObject2;
            k = j;
            if (localObject2 == null)
            {
              localObject2 = RecyclerView.f(RecyclerView.this).b(RecyclerView.this, m);
              i = j;
            }
          }
          for (;;)
          {
            if ((e.a()) && (((RecyclerView.u)localObject2).o()))
            {
              f = paramInt;
              paramInt = 0;
            }
            for (;;)
            {
              localObject1 = a.getLayoutParams();
              if (localObject1 == null)
              {
                localObject1 = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
                a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                label645:
                a = ((RecyclerView.u)localObject2);
                if ((i == 0) || (paramInt == 0)) {
                  break label817;
                }
              }
              label817:
              for (paramBoolean = bool;; paramBoolean = false)
              {
                d = paramBoolean;
                return a;
                if ((((RecyclerView.u)localObject2).o()) && (!((RecyclerView.u)localObject2).m()) && (!((RecyclerView.u)localObject2).l())) {
                  break label822;
                }
                j = b.a(paramInt);
                k = RecyclerView.this;
                RecyclerView.f(RecyclerView.this).b((RecyclerView.u)localObject2, j);
                d(a);
                if (e.a()) {
                  f = paramInt;
                }
                paramInt = 1;
                break;
                if (!checkLayoutParams((ViewGroup.LayoutParams)localObject1))
                {
                  localObject1 = (RecyclerView.LayoutParams)generateLayoutParams((ViewGroup.LayoutParams)localObject1);
                  a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  break label645;
                }
                localObject1 = (RecyclerView.LayoutParams)localObject1;
                break label645;
              }
              label822:
              paramInt = 0;
            }
            i = k;
            localObject2 = localObject3;
          }
        }
        localObject2 = null;
        i = 0;
      }
    }
    
    public void a()
    {
      a.clear();
      c();
    }
    
    public void a(int paramInt)
    {
      f = paramInt;
      int i = b.size() - 1;
      while ((i >= 0) && (b.size() > paramInt))
      {
        d(i);
        i -= 1;
      }
    }
    
    void a(int paramInt1, int paramInt2)
    {
      int i;
      int j;
      int k;
      int m;
      label25:
      RecyclerView.u localu;
      if (paramInt1 < paramInt2)
      {
        i = -1;
        j = paramInt2;
        k = paramInt1;
        int n = b.size();
        m = 0;
        if (m >= n) {
          return;
        }
        localu = (RecyclerView.u)b.get(m);
        if ((localu != null) && (b >= k) && (b <= j)) {
          break label91;
        }
      }
      for (;;)
      {
        m += 1;
        break label25;
        i = 1;
        j = paramInt1;
        k = paramInt2;
        break;
        label91:
        if (b == paramInt1) {
          localu.a(paramInt2 - paramInt1, false);
        } else {
          localu.a(i, false);
        }
      }
    }
    
    void a(RecyclerView.a parama1, RecyclerView.a parama2, boolean paramBoolean)
    {
      a();
      f().a(parama1, parama2, paramBoolean);
    }
    
    void a(RecyclerView.m paramm)
    {
      if (g != null) {
        g.b();
      }
      g = paramm;
      if (paramm != null) {
        g.a(getAdapter());
      }
    }
    
    void a(RecyclerView.s params)
    {
      h = params;
    }
    
    public void a(View paramView)
    {
      RecyclerView.u localu = RecyclerView.b(paramView);
      if (localu.q()) {
        removeDetachedView(paramView, false);
      }
      if (localu.g()) {
        localu.h();
      }
      for (;;)
      {
        b(localu);
        return;
        if (localu.i()) {
          localu.j();
        }
      }
    }
    
    boolean a(RecyclerView.u paramu)
    {
      if (paramu.p()) {}
      do
      {
        return true;
        if ((b < 0) || (b >= RecyclerView.f(RecyclerView.this).a())) {
          throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramu);
        }
        if ((!e.a()) && (RecyclerView.f(RecyclerView.this).a(b) != paramu.f())) {
          return false;
        }
      } while ((!RecyclerView.f(RecyclerView.this).b()) || (paramu.e() == RecyclerView.f(RecyclerView.this).b(b)));
      return false;
    }
    
    public int b(int paramInt)
    {
      if ((paramInt < 0) || (paramInt >= e.e())) {
        throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State " + "item count is " + e.e());
      }
      if (!e.a()) {
        return paramInt;
      }
      return b.a(paramInt);
    }
    
    public List<RecyclerView.u> b()
    {
      return e;
    }
    
    void b(int paramInt1, int paramInt2)
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.u localu = (RecyclerView.u)b.get(i);
        if ((localu != null) && (localu.d() >= paramInt1)) {
          localu.a(paramInt2, true);
        }
        i += 1;
      }
    }
    
    void b(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int i = b.size() - 1;
      if (i >= 0)
      {
        RecyclerView.u localu = (RecyclerView.u)b.get(i);
        if (localu != null)
        {
          if (localu.d() < paramInt1 + paramInt2) {
            break label63;
          }
          localu.a(-paramInt2, paramBoolean);
        }
        for (;;)
        {
          i -= 1;
          break;
          label63:
          if (localu.d() >= paramInt1)
          {
            localu.b(8);
            d(i);
          }
        }
      }
    }
    
    void b(RecyclerView.u paramu)
    {
      boolean bool = true;
      int j = 0;
      if ((paramu.g()) || (a.getParent() != null))
      {
        StringBuilder localStringBuilder = new StringBuilder().append("Scrapped or attached views may not be recycled. isScrap:").append(paramu.g()).append(" isAttached:");
        if (a.getParent() != null) {}
        for (;;)
        {
          throw new IllegalArgumentException(bool);
          bool = false;
        }
      }
      if (paramu.q()) {
        throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramu);
      }
      if (paramu.c()) {
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
      }
      bool = RecyclerView.u.c(paramu);
      int i;
      if ((RecyclerView.f(RecyclerView.this) != null) && (bool) && (RecyclerView.f(RecyclerView.this).b(paramu)))
      {
        i = 1;
        if ((i == 0) && (!paramu.v())) {
          break label292;
        }
        if (paramu.a(78)) {
          break label287;
        }
        i = b.size();
        if ((i == f) && (i > 0)) {
          d(0);
        }
        if (i >= f) {
          break label287;
        }
        b.add(paramu);
        i = 1;
        label238:
        if (i != 0) {
          break label284;
        }
        c(paramu);
        j = 1;
      }
      for (;;)
      {
        e.a(paramu);
        if ((i == 0) && (j == 0) && (bool)) {
          k = null;
        }
        return;
        i = 0;
        break;
        label284:
        continue;
        label287:
        i = 0;
        break label238;
        label292:
        i = 0;
      }
    }
    
    void b(View paramView)
    {
      paramView = RecyclerView.b(paramView);
      RecyclerView.u.a(paramView, null);
      paramView.j();
      b(paramView);
    }
    
    public View c(int paramInt)
    {
      return a(paramInt, false);
    }
    
    void c()
    {
      int i = b.size() - 1;
      while (i >= 0)
      {
        d(i);
        i -= 1;
      }
      b.clear();
    }
    
    void c(int paramInt1, int paramInt2)
    {
      int i = b.size() - 1;
      if (i >= 0)
      {
        RecyclerView.u localu = (RecyclerView.u)b.get(i);
        if (localu == null) {}
        for (;;)
        {
          i -= 1;
          break;
          int j = localu.d();
          if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
          {
            localu.b(2);
            d(i);
          }
        }
      }
    }
    
    void c(RecyclerView.u paramu)
    {
      ai.a(a, null);
      e(paramu);
      k = null;
      f().a(paramu);
    }
    
    void c(View paramView)
    {
      paramView = RecyclerView.b(paramView);
      paramView.a(this);
      if ((!paramView.n()) || (!RecyclerView.h(RecyclerView.this)))
      {
        if ((paramView.l()) && (!paramView.p()) && (!RecyclerView.f(RecyclerView.this).b())) {
          throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
        }
        a.add(paramView);
        return;
      }
      if (d == null) {
        d = new ArrayList();
      }
      d.add(paramView);
    }
    
    int d()
    {
      return a.size();
    }
    
    void d(int paramInt)
    {
      c((RecyclerView.u)b.get(paramInt));
      b.remove(paramInt);
    }
    
    void d(RecyclerView.u paramu)
    {
      if ((!paramu.n()) || (!RecyclerView.h(RecyclerView.this)) || (d == null)) {
        a.remove(paramu);
      }
      for (;;)
      {
        RecyclerView.u.a(paramu, null);
        paramu.j();
        return;
        d.remove(paramu);
      }
    }
    
    View e(int paramInt)
    {
      return a.get(paramInt)).a;
    }
    
    void e()
    {
      a.clear();
    }
    
    void e(RecyclerView.u paramu)
    {
      if (RecyclerView.n(RecyclerView.this) != null) {
        RecyclerView.n(RecyclerView.this).a(paramu);
      }
      if (RecyclerView.f(RecyclerView.this) != null) {
        RecyclerView.f(RecyclerView.this).a(paramu);
      }
      if (e != null) {
        e.a(paramu);
      }
    }
    
    RecyclerView.m f()
    {
      if (g == null) {
        g = new RecyclerView.m();
      }
      return g;
    }
    
    RecyclerView.u f(int paramInt)
    {
      int j = 0;
      int k;
      if (d != null)
      {
        k = d.size();
        if (k != 0) {}
      }
      else
      {
        return null;
      }
      int i = 0;
      RecyclerView.u localu;
      while (i < k)
      {
        localu = (RecyclerView.u)d.get(i);
        if ((!localu.i()) && (localu.d() == paramInt))
        {
          localu.b(32);
          return localu;
        }
        i += 1;
      }
      if (RecyclerView.f(RecyclerView.this).b())
      {
        paramInt = b.a(paramInt);
        if ((paramInt > 0) && (paramInt < RecyclerView.f(RecyclerView.this).a()))
        {
          long l = RecyclerView.f(RecyclerView.this).b(paramInt);
          paramInt = j;
          while (paramInt < k)
          {
            localu = (RecyclerView.u)d.get(paramInt);
            if ((!localu.i()) && (localu.e() == l))
            {
              localu.b(32);
              return localu;
            }
            paramInt += 1;
          }
        }
      }
      return null;
    }
    
    void g()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.u localu = (RecyclerView.u)b.get(i);
        if (localu != null) {
          localu.b(512);
        }
        i += 1;
      }
    }
    
    void h()
    {
      int j;
      int i;
      if ((RecyclerView.f(RecyclerView.this) != null) && (RecyclerView.f(RecyclerView.this).b()))
      {
        j = b.size();
        i = 0;
      }
      while (i < j)
      {
        RecyclerView.u localu = (RecyclerView.u)b.get(i);
        if (localu != null)
        {
          localu.b(6);
          localu.a(null);
        }
        i += 1;
        continue;
        c();
      }
    }
    
    void i()
    {
      int j = 0;
      int k = b.size();
      int i = 0;
      while (i < k)
      {
        ((RecyclerView.u)b.get(i)).a();
        i += 1;
      }
      k = a.size();
      i = 0;
      while (i < k)
      {
        ((RecyclerView.u)a.get(i)).a();
        i += 1;
      }
      if (d != null)
      {
        k = d.size();
        i = j;
        while (i < k)
        {
          ((RecyclerView.u)d.get(i)).a();
          i += 1;
        }
      }
    }
    
    void j()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)b.get(i)).a.getLayoutParams();
        if (localLayoutParams != null) {
          c = true;
        }
        i += 1;
      }
    }
  }
  
  public static abstract interface o
  {
    public abstract void a(RecyclerView.u paramu);
  }
  
  private class p
    extends RecyclerView.c
  {
    private p() {}
    
    public void a()
    {
      a(null);
      if (RecyclerView.f(RecyclerView.this).b())
      {
        RecyclerView.r.a(e, true);
        RecyclerView.l(RecyclerView.this);
      }
      for (;;)
      {
        if (!b.d()) {
          requestLayout();
        }
        return;
        RecyclerView.r.a(e, true);
        RecyclerView.l(RecyclerView.this);
      }
    }
  }
  
  public static abstract class q
  {
    private int a;
    private RecyclerView b;
    private RecyclerView.i c;
    private boolean d;
    private boolean e;
    private View f;
    private final a g;
    
    private void a(int paramInt1, int paramInt2)
    {
      RecyclerView localRecyclerView = b;
      if ((!e) || (a == -1) || (localRecyclerView == null)) {
        a();
      }
      d = false;
      if (f != null)
      {
        if (a(f) != a) {
          break label151;
        }
        a(f, e, g);
        a.a(g, localRecyclerView);
        a();
      }
      for (;;)
      {
        if (e)
        {
          a(paramInt1, paramInt2, e, g);
          boolean bool = g.a();
          a.a(g, localRecyclerView);
          if (bool)
          {
            if (!e) {
              break;
            }
            d = true;
            RecyclerView.p(localRecyclerView).a();
          }
        }
        return;
        label151:
        Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
        f = null;
      }
      a();
    }
    
    public int a(View paramView)
    {
      return b.c(paramView);
    }
    
    protected final void a()
    {
      if (!e) {
        return;
      }
      e();
      RecyclerView.r.d(b.e, -1);
      f = null;
      a = -1;
      d = false;
      e = false;
      RecyclerView.i.a(c, this);
      c = null;
      b = null;
    }
    
    public void a(int paramInt)
    {
      a = paramInt;
    }
    
    protected abstract void a(int paramInt1, int paramInt2, RecyclerView.r paramr, a parama);
    
    protected abstract void a(View paramView, RecyclerView.r paramr, a parama);
    
    protected void b(View paramView)
    {
      if (a(paramView) == d()) {
        f = paramView;
      }
    }
    
    public boolean b()
    {
      return d;
    }
    
    public boolean c()
    {
      return e;
    }
    
    public int d()
    {
      return a;
    }
    
    protected abstract void e();
    
    public static class a
    {
      private int a;
      private int b;
      private int c;
      private int d;
      private Interpolator e;
      private boolean f;
      private int g;
      
      private void a(RecyclerView paramRecyclerView)
      {
        if (d >= 0)
        {
          int i = d;
          d = -1;
          RecyclerView.c(paramRecyclerView, i);
          f = false;
          return;
        }
        if (f)
        {
          b();
          if (e == null) {
            if (c == Integer.MIN_VALUE) {
              RecyclerView.p(paramRecyclerView).b(a, b);
            }
          }
          for (;;)
          {
            g += 1;
            if (g > 10) {
              Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            f = false;
            return;
            RecyclerView.p(paramRecyclerView).a(a, b, c);
            continue;
            RecyclerView.p(paramRecyclerView).a(a, b, c, e);
          }
        }
        g = 0;
      }
      
      private void b()
      {
        if ((e != null) && (c < 1)) {
          throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        if (c < 1) {
          throw new IllegalStateException("Scroll duration must be a positive number");
        }
      }
      
      boolean a()
      {
        return d >= 0;
      }
    }
  }
  
  public static class r
  {
    com.yelp.android.g.a<RecyclerView.u, RecyclerView.h> a = new com.yelp.android.g.a();
    com.yelp.android.g.a<RecyclerView.u, RecyclerView.h> b = new com.yelp.android.g.a();
    com.yelp.android.g.a<Long, RecyclerView.u> c = new com.yelp.android.g.a();
    final List<View> d = new ArrayList();
    int e = 0;
    private int f = -1;
    private SparseArray<Object> g;
    private int h = 0;
    private int i = 0;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    
    private void a(com.yelp.android.g.a<Long, RecyclerView.u> parama, RecyclerView.u paramu)
    {
      int n = parama.size() - 1;
      for (;;)
      {
        if (n >= 0)
        {
          if (paramu == parama.c(n)) {
            parama.d(n);
          }
        }
        else {
          return;
        }
        n -= 1;
      }
    }
    
    void a(RecyclerView.u paramu)
    {
      a.remove(paramu);
      b.remove(paramu);
      if (c != null) {
        a(c, paramu);
      }
      d.remove(a);
    }
    
    void a(View paramView)
    {
      d.remove(paramView);
    }
    
    public boolean a()
    {
      return k;
    }
    
    void b(View paramView)
    {
      if (!d.contains(paramView)) {
        d.add(paramView);
      }
    }
    
    public boolean b()
    {
      return m;
    }
    
    public int c()
    {
      return f;
    }
    
    public boolean d()
    {
      return f != -1;
    }
    
    public int e()
    {
      if (k) {
        return h - i;
      }
      return e;
    }
    
    public String toString()
    {
      return "State{mTargetPosition=" + f + ", mPreLayoutHolderMap=" + a + ", mPostLayoutHolderMap=" + b + ", mData=" + g + ", mItemCount=" + e + ", mPreviousLayoutItemCount=" + h + ", mDeletedInvisibleItemCountSincePreviousLayout=" + i + ", mStructureChanged=" + j + ", mInPreLayout=" + k + ", mRunSimpleAnimations=" + l + ", mRunPredictiveAnimations=" + m + '}';
    }
  }
  
  public static abstract class s
  {
    public abstract View a(RecyclerView.n paramn, int paramInt1, int paramInt2);
  }
  
  private class t
    implements Runnable
  {
    private int b;
    private int c;
    private v d = v.a(getContext(), RecyclerView.r());
    private Interpolator e = RecyclerView.r();
    private boolean f = false;
    private boolean g = false;
    
    public t() {}
    
    private float a(float paramFloat)
    {
      return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
    }
    
    private int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int j = Math.abs(paramInt1);
      int k = Math.abs(paramInt2);
      int i;
      if (j > k)
      {
        i = 1;
        paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
        paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
        if (i == 0) {
          break label140;
        }
      }
      label140:
      for (paramInt1 = getWidth();; paramInt1 = getHeight())
      {
        paramInt4 = paramInt1 / 2;
        float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
        float f1 = paramInt4;
        float f2 = paramInt4;
        f3 = a(f3);
        if (paramInt3 <= 0) {
          break label151;
        }
        paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / paramInt3)) * 4;
        return Math.min(paramInt1, 2000);
        i = 0;
        break;
      }
      label151:
      if (i != 0) {}
      for (paramInt2 = j;; paramInt2 = k)
      {
        paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
        break;
      }
    }
    
    private void c()
    {
      g = false;
      f = true;
    }
    
    private void d()
    {
      f = false;
      if (g) {
        a();
      }
    }
    
    void a()
    {
      if (f)
      {
        g = true;
        return;
      }
      removeCallbacks(this);
      ai.a(RecyclerView.this, this);
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      RecyclerView.b(RecyclerView.this, 2);
      c = 0;
      b = 0;
      d.a(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
      a();
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3)
    {
      a(paramInt1, paramInt2, paramInt3, RecyclerView.r());
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a(paramInt1, paramInt2, b(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (e != paramInterpolator)
      {
        e = paramInterpolator;
        d = v.a(getContext(), paramInterpolator);
      }
      RecyclerView.b(RecyclerView.this, 2);
      c = 0;
      b = 0;
      d.a(0, 0, paramInt1, paramInt2, paramInt3);
      a();
    }
    
    public void b()
    {
      removeCallbacks(this);
      d.h();
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      a(paramInt1, paramInt2, 0, 0);
    }
    
    public void run()
    {
      c();
      RecyclerView.e(RecyclerView.this);
      v localv = d;
      RecyclerView.q localq = ds;
      int i6;
      int i7;
      int i4;
      int i5;
      int i1;
      int k;
      int j;
      int i3;
      int i;
      int n;
      int m;
      if (localv.g())
      {
        i6 = localv.b();
        i7 = localv.c();
        i4 = i6 - b;
        i5 = i7 - c;
        i1 = 0;
        k = 0;
        i2 = 0;
        j = 0;
        b = i6;
        c = i7;
        i3 = 0;
        i = 0;
        n = 0;
        m = 0;
        if (RecyclerView.f(RecyclerView.this) == null) {
          break label849;
        }
        RecyclerView.this.b();
        RecyclerView.g(RecyclerView.this);
        i.a("RV Scroll");
        if (i4 != 0)
        {
          k = RecyclerView.d(RecyclerView.this).a(i4, a, e);
          i = i4 - k;
        }
        if (i5 != 0)
        {
          j = RecyclerView.d(RecyclerView.this).b(i5, a, e);
          m = i5 - j;
        }
        i.a();
        if (RecyclerView.h(RecyclerView.this))
        {
          i1 = c.b();
          n = 0;
          while (n < i1)
          {
            View localView = c.b(n);
            Object localObject = a(localView);
            if ((localObject != null) && (h != null))
            {
              localObject = h.a;
              i2 = localView.getLeft();
              i3 = localView.getTop();
              if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
              }
            }
            n += 1;
          }
        }
        RecyclerView.i(RecyclerView.this);
        a(false);
        n = m;
        i2 = j;
        i3 = i;
        i1 = k;
        if (localq == null) {
          break label849;
        }
        n = m;
        i2 = j;
        i3 = i;
        i1 = k;
        if (localq.b()) {
          break label849;
        }
        n = m;
        i2 = j;
        i3 = i;
        i1 = k;
        if (!localq.c()) {
          break label849;
        }
        n = e.e();
        if (n != 0) {
          break label781;
        }
        localq.a();
        n = j;
        j = i;
        if (!RecyclerView.j(RecyclerView.this).isEmpty()) {
          invalidate();
        }
        if (ai.a(RecyclerView.this) != 2) {
          RecyclerView.a(RecyclerView.this, i4, i5);
        }
        if ((j != 0) || (m != 0))
        {
          i1 = (int)localv.f();
          if (j == i6) {
            break label921;
          }
          if (j >= 0) {
            break label866;
          }
          i = -i1;
        }
      }
      label532:
      label551:
      label678:
      label704:
      label724:
      label781:
      label849:
      label866:
      label899:
      label904:
      label909:
      label921:
      for (int i2 = i;; i2 = 0)
      {
        if (m != i7) {
          if (m < 0) {
            i = -i1;
          }
        }
        for (;;)
        {
          if (ai.a(RecyclerView.this) != 2) {
            c(i2, i);
          }
          if (((i2 != 0) || (j == i6) || (localv.d() == 0)) && ((i != 0) || (m == i7) || (localv.e() == 0))) {
            localv.h();
          }
          if ((k != 0) || (n != 0)) {
            g(k, n);
          }
          if (!RecyclerView.k(RecyclerView.this)) {
            invalidate();
          }
          if ((i5 != 0) && (RecyclerView.d(RecyclerView.this).e()) && (n == i5))
          {
            i = 1;
            if ((i4 == 0) || (!RecyclerView.d(RecyclerView.this).d()) || (k != i4)) {
              break label899;
            }
            j = 1;
            if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
              break label904;
            }
            i = 1;
            if ((!localv.a()) && (i != 0)) {
              break label909;
            }
            RecyclerView.b(RecyclerView.this, 0);
          }
          for (;;)
          {
            if (localq != null)
            {
              if (localq.b()) {
                RecyclerView.q.a(localq, 0, 0);
              }
              if (!g) {
                localq.a();
              }
            }
            d();
            return;
            if (localq.d() >= n)
            {
              localq.a(n - 1);
              RecyclerView.q.a(localq, i4 - i, i5 - m);
              n = j;
              j = i;
              break;
            }
            RecyclerView.q.a(localq, i4 - i, i5 - m);
            i1 = k;
            i3 = i;
            i2 = j;
            n = m;
            j = i3;
            m = n;
            n = i2;
            k = i1;
            break;
            if (j > 0)
            {
              i = i1;
              break label532;
            }
            i = 0;
            break label532;
            i = i1;
            if (m > 0) {
              break label551;
            }
            i = 0;
            break label551;
            i = 0;
            break label678;
            j = 0;
            break label704;
            i = 0;
            break label724;
            a();
          }
          i = 0;
        }
      }
    }
  }
  
  public static abstract class u
  {
    private static final List<Object> m = Collections.EMPTY_LIST;
    public final View a;
    int b = -1;
    int c = -1;
    long d = -1L;
    int e = -1;
    int f = -1;
    u g = null;
    u h = null;
    List<Object> i = null;
    List<Object> j = null;
    RecyclerView k;
    private int l;
    private int n = 0;
    private RecyclerView.n o = null;
    private int p = 0;
    
    public u(View paramView)
    {
      if (paramView == null) {
        throw new IllegalArgumentException("itemView may not be null");
      }
      a = paramView;
    }
    
    private boolean A()
    {
      return ((l & 0x10) == 0) && (ai.c(a));
    }
    
    private void w()
    {
      if (i == null)
      {
        i = new ArrayList();
        j = Collections.unmodifiableList(i);
      }
    }
    
    private void x()
    {
      p = ai.e(a);
      ai.c(a, 4);
    }
    
    private void y()
    {
      ai.c(a, p);
      p = 0;
    }
    
    private boolean z()
    {
      return (l & 0x10) != 0;
    }
    
    void a()
    {
      c = -1;
      f = -1;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      l = (l & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
    }
    
    void a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      b(8);
      a(paramInt2, paramBoolean);
      b = paramInt1;
    }
    
    void a(int paramInt, boolean paramBoolean)
    {
      if (c == -1) {
        c = b;
      }
      if (f == -1) {
        f = b;
      }
      if (paramBoolean) {
        f += paramInt;
      }
      b += paramInt;
      if (a.getLayoutParams() != null) {
        a.getLayoutParams()).c = true;
      }
    }
    
    void a(RecyclerView.n paramn)
    {
      o = paramn;
    }
    
    void a(Object paramObject)
    {
      if (paramObject == null) {
        b(1024);
      }
      while ((l & 0x400) != 0) {
        return;
      }
      w();
      i.add(paramObject);
    }
    
    public final void a(boolean paramBoolean)
    {
      int i1;
      if (paramBoolean)
      {
        i1 = n - 1;
        n = i1;
        if (n >= 0) {
          break label64;
        }
        n = 0;
        Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      }
      label64:
      do
      {
        return;
        i1 = n + 1;
        break;
        if ((!paramBoolean) && (n == 1))
        {
          l |= 0x10;
          return;
        }
      } while ((!paramBoolean) || (n != 0));
      l &= 0xFFFFFFEF;
    }
    
    boolean a(int paramInt)
    {
      return (l & paramInt) != 0;
    }
    
    void b()
    {
      if (c == -1) {
        c = b;
      }
    }
    
    void b(int paramInt)
    {
      l |= paramInt;
    }
    
    boolean c()
    {
      return (l & 0x80) != 0;
    }
    
    public final int d()
    {
      if (f == -1) {
        return b;
      }
      return f;
    }
    
    public final long e()
    {
      return d;
    }
    
    public final int f()
    {
      return e;
    }
    
    boolean g()
    {
      return o != null;
    }
    
    void h()
    {
      o.d(this);
    }
    
    boolean i()
    {
      return (l & 0x20) != 0;
    }
    
    void j()
    {
      l &= 0xFFFFFFDF;
    }
    
    void k()
    {
      l &= 0xFEFF;
    }
    
    boolean l()
    {
      return (l & 0x4) != 0;
    }
    
    boolean m()
    {
      return (l & 0x2) != 0;
    }
    
    boolean n()
    {
      return (l & 0x40) != 0;
    }
    
    boolean o()
    {
      return (l & 0x1) != 0;
    }
    
    boolean p()
    {
      return (l & 0x8) != 0;
    }
    
    boolean q()
    {
      return (l & 0x100) != 0;
    }
    
    boolean r()
    {
      return ((l & 0x200) != 0) || (l());
    }
    
    void s()
    {
      if (i != null) {
        i.clear();
      }
      l &= 0xFBFF;
    }
    
    List<Object> t()
    {
      if ((l & 0x400) == 0)
      {
        if ((i == null) || (i.size() == 0)) {
          return m;
        }
        return j;
      }
      return m;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + b + " id=" + d + ", oldPos=" + c + ", pLpos:" + f);
      if (g()) {
        localStringBuilder.append(" scrap");
      }
      if (l()) {
        localStringBuilder.append(" invalid");
      }
      if (!o()) {
        localStringBuilder.append(" unbound");
      }
      if (m()) {
        localStringBuilder.append(" update");
      }
      if (p()) {
        localStringBuilder.append(" removed");
      }
      if (c()) {
        localStringBuilder.append(" ignored");
      }
      if (n()) {
        localStringBuilder.append(" changed");
      }
      if (q()) {
        localStringBuilder.append(" tmpDetached");
      }
      if (!v()) {
        localStringBuilder.append(" not recyclable(" + n + ")");
      }
      if (r()) {
        localStringBuilder.append("undefined adapter position");
      }
      if (a.getParent() == null) {
        localStringBuilder.append(" no parent");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    void u()
    {
      l = 0;
      b = -1;
      c = -1;
      d = -1L;
      f = -1;
      n = 0;
      g = null;
      h = null;
      s();
      p = 0;
    }
    
    public final boolean v()
    {
      return ((l & 0x10) == 0) && (!ai.c(a));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */