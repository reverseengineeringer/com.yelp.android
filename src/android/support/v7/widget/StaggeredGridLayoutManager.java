package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.a;
import com.yelp.android.f.aj;
import com.yelp.android.f.g;
import com.yelp.android.f.q;
import java.util.ArrayList;
import java.util.BitSet;

public class StaggeredGridLayoutManager
  extends br
{
  private boolean A;
  private final Runnable B;
  ba a;
  ba b;
  boolean c;
  int d;
  int e;
  StaggeredGridLayoutManager.LazySpanLookup f;
  private int g;
  private db[] h;
  private int i;
  private int j;
  private ah k;
  private boolean l;
  private BitSet m;
  private int n;
  private boolean o;
  private boolean p;
  private StaggeredGridLayoutManager.SavedState t;
  private int u;
  private int v;
  private int w;
  private final Rect x;
  private final cy y;
  private boolean z;
  
  private boolean A()
  {
    if ((q() == 0) || (n == 0) || (!m())) {
      return false;
    }
    int i2;
    if (c) {
      i2 = D();
    }
    for (int i1 = E(); (i2 == 0) && (f() != null); i1 = D())
    {
      f.a();
      z();
      l();
      return true;
      i2 = E();
    }
    if (!z) {
      return false;
    }
    if (c) {}
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem1;
    for (int i3 = -1;; i3 = 1)
    {
      localFullSpanItem1 = f.a(i2, i1 + 1, i3, true);
      if (localFullSpanItem1 != null) {
        break;
      }
      z = false;
      f.a(i1 + 1);
      return false;
    }
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem2 = f.a(i2, mPosition, i3 * -1, true);
    if (localFullSpanItem2 == null) {
      f.a(mPosition);
    }
    for (;;)
    {
      z();
      l();
      return true;
      f.a(mPosition + 1);
    }
  }
  
  private void B()
  {
    if (a == null)
    {
      a = ba.a(this, i);
      b = ba.a(this, 1 - i);
      k = new ah();
    }
  }
  
  private void C()
  {
    boolean bool = true;
    if ((i == 1) || (!g()))
    {
      c = l;
      return;
    }
    if (!l) {}
    for (;;)
    {
      c = bool;
      return;
      bool = false;
    }
  }
  
  private int D()
  {
    int i1 = q();
    if (i1 == 0) {
      return 0;
    }
    return d(e(i1 - 1));
  }
  
  private int E()
  {
    if (q() == 0) {
      return 0;
    }
    return d(e(0));
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i1;
    do
    {
      return paramInt1;
      i1 = View.MeasureSpec.getMode(paramInt1);
    } while ((i1 != Integer.MIN_VALUE) && (i1 != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i1);
  }
  
  private int a(bv parambv, ah paramah, cb paramcb)
  {
    m.set(0, g, true);
    int i1;
    int i2;
    int i4;
    int i3;
    int i5;
    label96:
    View localView;
    StaggeredGridLayoutManager.LayoutParams localLayoutParams;
    int i8;
    int i6;
    label158:
    db localdb;
    label179:
    label190:
    label211:
    label243:
    int i7;
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (d == 1)
    {
      i1 = a.d() + k.a;
      i2 = k.e;
      i4 = a.g();
      i3 = i1;
      i4 = i2 + i1 + i4;
      c(d, i4);
      if (!c) {
        break label481;
      }
      i5 = a.d();
      if ((!paramah.a(paramcb)) || (m.isEmpty())) {
        break label779;
      }
      localView = paramah.a(parambv);
      localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      i8 = localLayoutParams.e();
      i1 = f.c(i8);
      if (i1 != -1) {
        break label493;
      }
      i6 = 1;
      if (i6 == 0) {
        break label509;
      }
      if (!f) {
        break label499;
      }
      localdb = h[0];
      f.a(i8, localdb);
      e = localdb;
      if (d != 1) {
        break label521;
      }
      b(localView);
      a(localView, localLayoutParams);
      if (d != 1) {
        break label543;
      }
      if (!f) {
        break label531;
      }
      i1 = l(i5);
      i7 = i1 + a.c(localView);
      if ((i6 == 0) || (!f)) {
        break label844;
      }
      localFullSpanItem = a(i1);
      mGapDir = -1;
      mPosition = i8;
      f.a(localFullSpanItem);
      i2 = i1;
    }
    for (;;)
    {
      if ((f) && (c == -1))
      {
        if (i6 != 0) {
          z = true;
        }
      }
      else
      {
        label330:
        a(localView, localLayoutParams, paramah);
        if (!f) {
          break label713;
        }
        i1 = b.c();
        label356:
        i6 = i1 + b.c(localView);
        if (i != 1) {
          break label744;
        }
        b(localView, i1, i2, i6, i7);
        label392:
        if (!f) {
          break label761;
        }
        c(k.d, i4);
      }
      for (;;)
      {
        a(parambv, k, localdb, i3);
        break label96;
        i1 = a.c() - k.a;
        i2 = k.e;
        i4 = a.c();
        i3 = i1;
        i4 = i1 - i2 - i4;
        break;
        label481:
        i5 = a.c();
        break label96;
        label493:
        i6 = 0;
        break label158;
        label499:
        localdb = a(paramah);
        break label179;
        label509:
        localdb = h[i1];
        break label190;
        label521:
        b(localView, 0);
        break label211;
        label531:
        i1 = localdb.b(i5);
        break label243;
        label543:
        if (f) {}
        for (i1 = k(i5);; i1 = localdb.a(i5))
        {
          i2 = i1 - a.c(localView);
          if ((i6 != 0) && (f))
          {
            localFullSpanItem = i(i1);
            mGapDir = 1;
            mPosition = i8;
            f.a(localFullSpanItem);
          }
          i7 = i1;
          break;
        }
        if (d == 1) {
          if (!j()) {
            i1 = 1;
          }
        }
        for (;;)
        {
          if (i1 == 0) {
            break label711;
          }
          localFullSpanItem = f.f(i8);
          if (localFullSpanItem != null) {
            mHasUnwantedGapAfter = true;
          }
          z = true;
          break;
          i1 = 0;
          continue;
          if (!k()) {
            i1 = 1;
          } else {
            i1 = 0;
          }
        }
        label711:
        break label330;
        label713:
        i1 = d;
        i6 = j;
        i1 = b.c() + i1 * i6;
        break label356;
        label744:
        b(localView, i2, i1, i7, i6);
        break label392;
        label761:
        a(localdb, k.d, i4);
      }
      label779:
      if (k.d == -1) {
        return Math.max(0, i3 - k(a.c()) + k.a);
      }
      return Math.max(0, l(a.d()) - i3 + k.a);
      label844:
      i2 = i1;
    }
  }
  
  private int a(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    B();
    ba localba = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return ch.a(paramcb, localba, localView, b(bool1, true), this, A, c);
    }
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    mGapPerSpan = new int[g];
    int i1 = 0;
    while (i1 < g)
    {
      mGapPerSpan[i1] = (paramInt - h[i1].b(paramInt));
      i1 += 1;
    }
    return localFullSpanItem;
  }
  
  private db a(ah paramah)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    int i2 = -1;
    int i1;
    int i3;
    int i6;
    int i5;
    int i4;
    if (n(d))
    {
      i1 = g - 1;
      i3 = -1;
      if (d != 1) {
        break label122;
      }
      i6 = a.c();
      i5 = Integer.MAX_VALUE;
      i4 = i1;
      paramah = (ah)localObject1;
      i1 = i5;
      label60:
      localObject1 = paramah;
      if (i4 == i3) {
        break label193;
      }
      localObject1 = h[i4];
      i5 = ((db)localObject1).b(i6);
      if (i5 >= i1) {
        break label199;
      }
      paramah = (ah)localObject1;
      i1 = i5;
    }
    label122:
    label193:
    label196:
    label199:
    for (;;)
    {
      i4 += i2;
      break label60;
      i3 = g;
      i1 = 0;
      i2 = 1;
      break;
      i6 = a.d();
      i5 = Integer.MIN_VALUE;
      i4 = i1;
      paramah = (ah)localObject2;
      i1 = i5;
      localObject1 = paramah;
      if (i4 != i3)
      {
        localObject1 = h[i4];
        i5 = ((db)localObject1).a(i6);
        if (i5 <= i1) {
          break label196;
        }
        paramah = (ah)localObject1;
        i1 = i5;
      }
      for (;;)
      {
        i4 += i2;
        break;
        return (db)localObject1;
      }
    }
  }
  
  private void a(int paramInt, cb paramcb)
  {
    int i1 = 1;
    k.a = 0;
    k.b = paramInt;
    boolean bool1;
    if (n())
    {
      int i2 = paramcb.c();
      boolean bool2 = c;
      if (i2 < paramInt)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label95;
        }
        k.e = 0;
        label61:
        k.d = -1;
        paramcb = k;
        if (!c) {
          break label123;
        }
      }
    }
    label95:
    label123:
    for (paramInt = i1;; paramInt = -1)
    {
      c = paramInt;
      return;
      bool1 = false;
      break;
      k.e = a.f();
      break label61;
      k.e = 0;
      break label61;
    }
  }
  
  private void a(bv parambv, int paramInt)
  {
    while (q() > 0)
    {
      View localView = e(0);
      if (a.b(localView) >= paramInt) {
        break;
      }
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      if (f)
      {
        int i1 = 0;
        while (i1 < g)
        {
          h[i1].h();
          i1 += 1;
        }
      }
      e.h();
      a(localView, parambv);
    }
  }
  
  private void a(bv parambv, ah paramah, db paramdb, int paramInt)
  {
    if (d == -1)
    {
      b(parambv, Math.max(paramInt, j(paramdb.b())) + (a.e() - a.c()));
      return;
    }
    a(parambv, Math.min(paramInt, m(paramdb.d())) - (a.e() - a.c()));
  }
  
  private void a(bv parambv, cb paramcb, boolean paramBoolean)
  {
    int i1 = l(a.d());
    i1 = a.d() - i1;
    if (i1 > 0)
    {
      i1 -= -c(-i1, parambv, paramcb);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(i1);
      }
    }
  }
  
  private void a(cy paramcy)
  {
    if (t.mSpanOffsetsSize > 0) {
      if (t.mSpanOffsetsSize == g)
      {
        int i2 = 0;
        if (i2 < g)
        {
          h[i2].e();
          int i3 = t.mSpanOffsets[i2];
          int i1 = i3;
          if (i3 != Integer.MIN_VALUE) {
            if (!t.mAnchorLayoutFromEnd) {
              break label102;
            }
          }
          label102:
          for (i1 = i3 + a.d();; i1 = i3 + a.c())
          {
            h[i2].c(i1);
            i2 += 1;
            break;
          }
        }
      }
      else
      {
        t.invalidateSpanInfo();
        t.mAnchorPosition = t.mVisibleAnchorPosition;
      }
    }
    p = t.mLastLayoutRTL;
    a(t.mReverseLayout);
    C();
    if (t.mAnchorPosition != -1) {
      d = t.mAnchorPosition;
    }
    for (c = t.mAnchorLayoutFromEnd;; c = c)
    {
      if (t.mSpanLookupSize > 1)
      {
        f.a = t.mSpanLookup;
        f.b = t.mFullSpanItems;
      }
      return;
    }
  }
  
  private void a(db paramdb, int paramInt1, int paramInt2)
  {
    int i1 = paramdb.i();
    if (paramInt1 == -1) {
      if (i1 + paramdb.b() < paramInt2) {
        m.set(d, false);
      }
    }
    while (paramdb.d() - i1 <= paramInt2) {
      return;
    }
    m.set(d, false);
  }
  
  private void a(View paramView, StaggeredGridLayoutManager.LayoutParams paramLayoutParams)
  {
    if (f)
    {
      if (i == 1)
      {
        b(paramView, u, b(height, w));
        return;
      }
      b(paramView, b(width, v), u);
      return;
    }
    if (i == 1)
    {
      b(paramView, v, b(height, w));
      return;
    }
    b(paramView, b(width, v), w);
  }
  
  private void a(View paramView, StaggeredGridLayoutManager.LayoutParams paramLayoutParams, ah paramah)
  {
    if (d == 1)
    {
      if (f)
      {
        o(paramView);
        return;
      }
      e.b(paramView);
      return;
    }
    if (f)
    {
      p(paramView);
      return;
    }
    e.a(paramView);
  }
  
  private boolean a(db paramdb)
  {
    if (c)
    {
      if (paramdb.d() >= a.d()) {}
    }
    else {
      while (paramdb.b() > a.c()) {
        return true;
      }
    }
    return false;
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      return paramInt2;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i3;
    int i2;
    int i1;
    if (c)
    {
      i3 = D();
      if (paramInt3 != 3) {
        break label100;
      }
      if (paramInt1 >= paramInt2) {
        break label89;
      }
      i2 = paramInt2 + 1;
      i1 = paramInt1;
      label31:
      f.b(i1);
      switch (paramInt3)
      {
      case 2: 
      default: 
        label72:
        if (i2 > i3) {
          break;
        }
      }
    }
    for (;;)
    {
      return;
      i3 = E();
      break;
      label89:
      i2 = paramInt1 + 1;
      i1 = paramInt2;
      break label31;
      label100:
      i2 = paramInt1 + paramInt2;
      i1 = paramInt1;
      break label31;
      f.b(paramInt1, paramInt2);
      break label72;
      f.a(paramInt1, paramInt2);
      break label72;
      f.a(paramInt1, 1);
      f.b(paramInt2, 1);
      break label72;
      if (c) {}
      for (paramInt1 = E(); i1 <= paramInt1; paramInt1 = D())
      {
        l();
        return;
      }
    }
  }
  
  private void b(int paramInt, cb paramcb)
  {
    int i1 = 1;
    k.a = 0;
    k.b = paramInt;
    boolean bool1;
    if (n())
    {
      int i2 = paramcb.c();
      boolean bool2 = c;
      if (i2 > paramInt)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label97;
        }
        k.e = 0;
      }
    }
    for (;;)
    {
      k.d = 1;
      paramcb = k;
      paramInt = i1;
      if (c) {
        paramInt = -1;
      }
      c = paramInt;
      return;
      bool1 = false;
      break;
      label97:
      k.e = a.f();
      continue;
      k.e = 0;
    }
  }
  
  private void b(bv parambv, int paramInt)
  {
    int i1 = q() - 1;
    while (i1 >= 0)
    {
      View localView = e(i1);
      if (a.a(localView) <= paramInt) {
        break;
      }
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      if (f)
      {
        int i2 = 0;
        while (i2 < g)
        {
          h[i2].g();
          i2 += 1;
        }
      }
      e.g();
      a(localView, parambv);
      i1 -= 1;
    }
  }
  
  private void b(bv parambv, cb paramcb, boolean paramBoolean)
  {
    int i1 = k(a.c()) - a.c();
    if (i1 > 0)
    {
      i1 -= c(i1, parambv, paramcb);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(-i1);
      }
    }
  }
  
  private void b(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView, x);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    paramView.measure(a(paramInt1, leftMargin + x.left, rightMargin + x.right), a(paramInt2, topMargin + x.top, bottomMargin + x.bottom));
  }
  
  private void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    a(paramView, paramInt1 + leftMargin, paramInt2 + topMargin, paramInt3 - rightMargin, paramInt4 - bottomMargin);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (i1 < g)
    {
      if (db.a(h[i1]).isEmpty()) {}
      for (;;)
      {
        i1 += 1;
        break;
        a(h[i1], paramInt1, paramInt2);
      }
    }
  }
  
  private boolean c(cb paramcb, cy paramcy)
  {
    if (o) {}
    for (int i1 = q(paramcb.e());; i1 = p(paramcb.e()))
    {
      a = i1;
      b = Integer.MIN_VALUE;
      return true;
    }
  }
  
  private int h(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    B();
    ba localba = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return ch.a(paramcb, localba, localView, b(bool1, true), this, A);
    }
  }
  
  private int i(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    B();
    ba localba = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return ch.b(paramcb, localba, localView, b(bool1, true), this, A);
    }
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem i(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    mGapPerSpan = new int[g];
    int i1 = 0;
    while (i1 < g)
    {
      mGapPerSpan[i1] = (h[i1].a(paramInt) - paramInt);
      i1 += 1;
    }
    return localFullSpanItem;
  }
  
  private int j(int paramInt)
  {
    int i2 = h[0].a(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].a(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int k(int paramInt)
  {
    int i2 = h[0].a(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].a(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int l(int paramInt)
  {
    int i2 = h[0].b(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].b(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int m(int paramInt)
  {
    int i2 = h[0].b(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].b(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private boolean n(int paramInt)
  {
    int i1;
    if (i == 0) {
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 == c) {
          break label29;
        }
      }
    }
    label29:
    label63:
    label66:
    for (;;)
    {
      return true;
      i1 = 0;
      break;
      return false;
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 != c) {
          break label63;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == g()) {
          break label66;
        }
        return false;
        i1 = 0;
        break;
      }
    }
  }
  
  private int o(int paramInt)
  {
    int i1 = -1;
    if (q() == 0)
    {
      if (c) {
        return 1;
      }
      return -1;
    }
    int i2;
    if (paramInt < E())
    {
      i2 = 1;
      if (i2 == c) {
        break label47;
      }
    }
    label47:
    for (paramInt = i1;; paramInt = 1)
    {
      return paramInt;
      i2 = 0;
      break;
    }
  }
  
  private void o(View paramView)
  {
    int i1 = g - 1;
    while (i1 >= 0)
    {
      h[i1].b(paramView);
      i1 -= 1;
    }
  }
  
  private int p(int paramInt)
  {
    int i2 = q();
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = d(e(i1));
      if ((i3 >= 0) && (i3 < paramInt)) {
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }
  
  private void p(View paramView)
  {
    int i1 = g - 1;
    while (i1 >= 0)
    {
      h[i1].a(paramView);
      i1 -= 1;
    }
  }
  
  private int q(int paramInt)
  {
    int i1 = q() - 1;
    while (i1 >= 0)
    {
      int i2 = d(e(i1));
      if ((i2 >= 0) && (i2 < paramInt)) {
        return i2;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  public int a(int paramInt, bv parambv, cb paramcb)
  {
    return c(paramInt, parambv, paramcb);
  }
  
  public int a(bv parambv, cb paramcb)
  {
    if (i == 0) {
      return g;
    }
    return super.a(parambv, paramcb);
  }
  
  public RecyclerView.LayoutParams a()
  {
    return new StaggeredGridLayoutManager.LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new StaggeredGridLayoutManager.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new StaggeredGridLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new StaggeredGridLayoutManager.LayoutParams(paramLayoutParams);
  }
  
  View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    B();
    int i2 = a.c();
    int i3 = a.d();
    int i4 = q();
    int i1 = 0;
    Object localObject1 = null;
    if (i1 < i4)
    {
      View localView = e(i1);
      int i5 = a.a(localView);
      Object localObject2 = localObject1;
      if (a.b(localView) > i2)
      {
        if (i5 < i3) {
          break label97;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i1 += 1;
        localObject1 = localObject2;
        break;
        label97:
        if ((i5 >= i2) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  public void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof StaggeredGridLayoutManager.SavedState))
    {
      t = ((StaggeredGridLayoutManager.SavedState)paramParcelable);
      l();
    }
  }
  
  public void a(RecyclerView paramRecyclerView)
  {
    f.a();
    l();
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 0);
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    b(paramInt1, paramInt2, 3);
  }
  
  public void a(RecyclerView paramRecyclerView, bv parambv)
  {
    b(B);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].e();
      i1 += 1;
    }
  }
  
  public void a(bv parambv, cb paramcb, View paramView, g paramg)
  {
    parambv = paramView.getLayoutParams();
    if (!(parambv instanceof StaggeredGridLayoutManager.LayoutParams))
    {
      super.a(paramView, paramg);
      return;
    }
    parambv = (StaggeredGridLayoutManager.LayoutParams)parambv;
    if (i == 0)
    {
      i2 = parambv.a();
      if (f) {}
      for (i1 = g;; i1 = 1)
      {
        paramg.c(q.a(i2, i1, -1, -1, f, false));
        return;
      }
    }
    int i2 = parambv.a();
    if (f) {}
    for (int i1 = g;; i1 = 1)
    {
      paramg.c(q.a(-1, -1, i2, i1, f, false));
      return;
    }
  }
  
  void a(cb paramcb, cy paramcy)
  {
    if (b(paramcb, paramcy)) {}
    while (c(paramcb, paramcy)) {
      return;
    }
    paramcy.b();
    a = 0;
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (q() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      localView1 = a(false, true);
      localView2 = b(false, true);
      if ((localView1 != null) && (localView2 != null)) {}
    }
    else
    {
      return;
    }
    int i1 = d(localView1);
    int i2 = d(localView2);
    if (i1 < i2)
    {
      paramAccessibilityEvent.b(i1);
      paramAccessibilityEvent.c(i2);
      return;
    }
    paramAccessibilityEvent.b(i2);
    paramAccessibilityEvent.c(i1);
  }
  
  public void a(String paramString)
  {
    if (t == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if ((t != null) && (t.mReverseLayout != paramBoolean)) {
      t.mReverseLayout = paramBoolean;
    }
    l = paramBoolean;
    l();
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof StaggeredGridLayoutManager.LayoutParams;
  }
  
  public int b(int paramInt, bv parambv, cb paramcb)
  {
    return c(paramInt, parambv, paramcb);
  }
  
  public int b(bv parambv, cb paramcb)
  {
    if (i == 1) {
      return g;
    }
    return super.b(parambv, paramcb);
  }
  
  public int b(cb paramcb)
  {
    return a(paramcb);
  }
  
  View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    B();
    int i2 = a.c();
    int i3 = a.d();
    int i1 = q() - 1;
    Object localObject1 = null;
    if (i1 >= 0)
    {
      View localView = e(i1);
      int i4 = a.a(localView);
      int i5 = a.b(localView);
      Object localObject2 = localObject1;
      if (i5 > i2)
      {
        if (i4 < i3) {
          break label98;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i1 -= 1;
        localObject1 = localObject2;
        break;
        label98:
        if ((i5 <= i3) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 1);
  }
  
  public boolean b()
  {
    return t == null;
  }
  
  boolean b(cb paramcb, cy paramcy)
  {
    boolean bool = false;
    if ((paramcb.a()) || (d == -1)) {
      return false;
    }
    if ((d < 0) || (d >= paramcb.e()))
    {
      d = -1;
      e = Integer.MIN_VALUE;
      return false;
    }
    if ((t == null) || (t.mAnchorPosition == -1) || (t.mSpanOffsetsSize < 1))
    {
      paramcb = b(d);
      if (paramcb != null)
      {
        if (c) {}
        for (int i1 = D();; i1 = E())
        {
          a = i1;
          if (e == Integer.MIN_VALUE) {
            break label188;
          }
          if (!c) {
            break;
          }
          b = (a.d() - e - a.b(paramcb));
          return true;
        }
        b = (a.c() + e - a.a(paramcb));
        return true;
        label188:
        if (a.c(paramcb) > a.f())
        {
          if (c) {}
          for (i1 = a.d();; i1 = a.c())
          {
            b = i1;
            return true;
          }
        }
        i1 = a.a(paramcb) - a.c();
        if (i1 < 0)
        {
          b = (-i1);
          return true;
        }
        i1 = a.d() - a.b(paramcb);
        if (i1 < 0)
        {
          b = i1;
          return true;
        }
        b = Integer.MIN_VALUE;
        return true;
      }
      a = d;
      if (e == Integer.MIN_VALUE)
      {
        if (o(a) == 1) {
          bool = true;
        }
        c = bool;
        paramcy.b();
      }
      for (;;)
      {
        d = true;
        return true;
        paramcy.a(e);
      }
    }
    b = Integer.MIN_VALUE;
    a = d;
    return true;
  }
  
  int c(int paramInt, bv parambv, cb paramcb)
  {
    int i1 = 1;
    int i2 = -1;
    B();
    ah localah;
    if (paramInt > 0)
    {
      k.d = 1;
      localah = k;
      if (c)
      {
        i1 = i2;
        c = i1;
        i1 = D();
        k.b = (i1 + k.c);
        i2 = Math.abs(paramInt);
        k.a = i2;
        localah = k;
        if (!n()) {
          break label200;
        }
        i1 = a.f();
        label106:
        e = i1;
        i1 = a(parambv, k, paramcb);
        if (i2 >= i1) {
          break label206;
        }
      }
    }
    for (;;)
    {
      a.a(-paramInt);
      o = c;
      return paramInt;
      i1 = 1;
      break;
      k.d = -1;
      localah = k;
      if (c) {}
      for (;;)
      {
        c = i1;
        i1 = E();
        break;
        i1 = -1;
      }
      label200:
      i1 = 0;
      break label106;
      label206:
      if (paramInt < 0) {
        paramInt = -i1;
      } else {
        paramInt = i1;
      }
    }
  }
  
  public int c(cb paramcb)
  {
    return a(paramcb);
  }
  
  public Parcelable c()
  {
    if (t != null) {
      return new StaggeredGridLayoutManager.SavedState(t);
    }
    StaggeredGridLayoutManager.SavedState localSavedState = new StaggeredGridLayoutManager.SavedState();
    mReverseLayout = l;
    mAnchorLayoutFromEnd = o;
    mLastLayoutRTL = p;
    int i1;
    label130:
    int i2;
    label167:
    int i3;
    if ((f != null) && (f.a != null))
    {
      mSpanLookup = f.a;
      mSpanLookupSize = mSpanLookup.length;
      mFullSpanItems = f.b;
      if (q() <= 0) {
        break label277;
      }
      B();
      if (!o) {
        break label236;
      }
      i1 = D();
      mAnchorPosition = i1;
      mVisibleAnchorPosition = i();
      mSpanOffsetsSize = g;
      mSpanOffsets = new int[g];
      i2 = 0;
      if (i2 >= g) {
        break label295;
      }
      if (!o) {
        break label244;
      }
      i3 = h[i2].b(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.d();
      }
    }
    for (;;)
    {
      mSpanOffsets[i2] = i1;
      i2 += 1;
      break label167;
      mSpanLookupSize = 0;
      break;
      label236:
      i1 = E();
      break label130;
      label244:
      i3 = h[i2].a(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.c();
      }
    }
    label277:
    mAnchorPosition = -1;
    mVisibleAnchorPosition = -1;
    mSpanOffsetsSize = 0;
    label295:
    return localSavedState;
  }
  
  public void c(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 2);
  }
  
  public void c(bv parambv, cb paramcb)
  {
    int i2 = 0;
    B();
    cy localcy = y;
    localcy.a();
    if (t != null) {
      a(localcy);
    }
    for (;;)
    {
      a(paramcb, localcy);
      if ((t == null) && ((c != o) || (g() != p)))
      {
        f.a();
        d = true;
      }
      if ((q() <= 0) || ((t != null) && (t.mSpanOffsetsSize >= 1))) {
        break label215;
      }
      if (!d) {
        break;
      }
      i1 = 0;
      while (i1 < g)
      {
        h[i1].e();
        if (b != Integer.MIN_VALUE) {
          h[i1].c(b);
        }
        i1 += 1;
      }
      C();
      c = c;
    }
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].a(c, b);
      i1 += 1;
    }
    label215:
    a(parambv);
    z = false;
    h();
    ah localah;
    if (c)
    {
      a(a, paramcb);
      a(parambv, k, paramcb);
      b(a, paramcb);
      localah = k;
      b += k.c;
      a(parambv, k, paramcb);
      if (q() > 0)
      {
        if (!c) {
          break label501;
        }
        a(parambv, paramcb, true);
        b(parambv, paramcb, false);
      }
    }
    for (;;)
    {
      if (!paramcb.a())
      {
        i1 = i2;
        if (n != 0)
        {
          i1 = i2;
          if (q() > 0) {
            if (!z)
            {
              i1 = i2;
              if (f() == null) {}
            }
            else
            {
              i1 = 1;
            }
          }
        }
        if (i1 != 0)
        {
          b(B);
          a(B);
        }
        d = -1;
        e = Integer.MIN_VALUE;
      }
      o = c;
      p = g();
      t = null;
      return;
      b(a, paramcb);
      a(parambv, k, paramcb);
      a(a, paramcb);
      localah = k;
      b += k.c;
      a(parambv, k, paramcb);
      break;
      label501:
      b(parambv, paramcb, true);
      a(parambv, paramcb, false);
    }
  }
  
  public int d(cb paramcb)
  {
    return h(paramcb);
  }
  
  public boolean d()
  {
    return i == 0;
  }
  
  public int e(cb paramcb)
  {
    return h(paramcb);
  }
  
  public boolean e()
  {
    return i == 1;
  }
  
  public int f(cb paramcb)
  {
    return i(paramcb);
  }
  
  View f()
  {
    int i1 = q() - 1;
    BitSet localBitSet = new BitSet(g);
    localBitSet.set(0, g, true);
    int i2;
    int i3;
    if ((i == 1) && (g()))
    {
      i2 = 1;
      if (!c) {
        break label128;
      }
      i3 = -1;
      label57:
      if (i1 >= i3) {
        break label137;
      }
    }
    int i5;
    View localView;
    StaggeredGridLayoutManager.LayoutParams localLayoutParams;
    label128:
    label137:
    for (int i4 = 1;; i4 = -1)
    {
      i5 = i1;
      if (i5 == i3) {
        break label343;
      }
      localView = e(i5);
      localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
      if (!localBitSet.get(e.d)) {
        break label156;
      }
      if (!a(e)) {
        break label143;
      }
      return localView;
      i2 = -1;
      break;
      i3 = i1 + 1;
      i1 = 0;
      break label57;
    }
    label143:
    localBitSet.clear(e.d);
    label156:
    if (f) {}
    label275:
    label337:
    label341:
    label343:
    label345:
    label348:
    for (;;)
    {
      i5 += i4;
      break;
      if (i5 + i4 != i3)
      {
        Object localObject = e(i5 + i4);
        int i6;
        if (c)
        {
          i1 = a.b(localView);
          i6 = a.b((View)localObject);
          if (i1 < i6) {
            return localView;
          }
          if (i1 != i6) {
            break label345;
          }
          i1 = 1;
        }
        for (;;)
        {
          if (i1 == 0) {
            break label348;
          }
          localObject = (StaggeredGridLayoutManager.LayoutParams)((View)localObject).getLayoutParams();
          if (e.d - e.d < 0)
          {
            i1 = 1;
            if (i2 >= 0) {
              break label337;
            }
          }
          for (i6 = 1;; i6 = 0)
          {
            if (i1 == i6) {
              break label341;
            }
            return localView;
            i1 = a.a(localView);
            i6 = a.a((View)localObject);
            if (i1 > i6) {
              return localView;
            }
            if (i1 != i6) {
              break label345;
            }
            i1 = 1;
            break;
            i1 = 0;
            break label275;
          }
          break;
          return null;
          i1 = 0;
        }
      }
    }
  }
  
  public void f(int paramInt)
  {
    super.f(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  public int g(cb paramcb)
  {
    return i(paramcb);
  }
  
  public void g(int paramInt)
  {
    super.g(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  boolean g()
  {
    return o() == 1;
  }
  
  void h()
  {
    j = (b.f() / g);
    u = View.MeasureSpec.makeMeasureSpec(b.f(), 1073741824);
    if (i == 1)
    {
      v = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      w = View.MeasureSpec.makeMeasureSpec(0, 0);
      return;
    }
    w = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
    v = View.MeasureSpec.makeMeasureSpec(0, 0);
  }
  
  public void h(int paramInt)
  {
    if (paramInt == 0) {
      A();
    }
  }
  
  int i()
  {
    if (c) {}
    for (View localView = b(true, true); localView == null; localView = a(true, true)) {
      return -1;
    }
    return d(localView);
  }
  
  boolean j()
  {
    boolean bool2 = true;
    int i2 = h[0].b(Integer.MIN_VALUE);
    int i1 = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < g)
      {
        if (h[i1].b(Integer.MIN_VALUE) != i2) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  boolean k()
  {
    boolean bool2 = true;
    int i2 = h[0].a(Integer.MIN_VALUE);
    int i1 = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < g)
      {
        if (h[i1].a(Integer.MIN_VALUE) != i2) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */