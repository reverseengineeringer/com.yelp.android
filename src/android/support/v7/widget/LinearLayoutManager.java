package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.a;
import java.util.List;

public class LinearLayoutManager
  extends br
{
  private ak a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  int j;
  ba k;
  boolean l = false;
  int m = -1;
  int n = Integer.MIN_VALUE;
  LinearLayoutManager.SavedState o = null;
  final ai p = new ai(this);
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    a(paramInt);
    a(paramBoolean);
  }
  
  private void A()
  {
    boolean bool = true;
    if ((j == 1) || (!g()))
    {
      l = c;
      return;
    }
    if (!c) {}
    for (;;)
    {
      l = bool;
      return;
      bool = false;
    }
  }
  
  private View B()
  {
    if (l) {}
    for (int i = q() - 1;; i = 0) {
      return e(i);
    }
  }
  
  private View C()
  {
    if (l) {}
    for (int i = 0;; i = q() - 1) {
      return e(i);
    }
  }
  
  private int a(int paramInt, bv parambv, cb paramcb, boolean paramBoolean)
  {
    int i = k.d() - paramInt;
    if (i > 0)
    {
      int i1 = -c(-i, parambv, paramcb);
      i = i1;
      if (paramBoolean)
      {
        paramInt = k.d() - (paramInt + i1);
        i = i1;
        if (paramInt > 0)
        {
          k.a(paramInt);
          i = i1 + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l) {
      return a(q() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return a(0, q(), paramBoolean1, paramBoolean2);
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, cb paramcb)
  {
    int i = -1;
    int i1 = 1;
    a.h = a(paramcb);
    a.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramcb = a;
      h += k.g();
      paramcb = C();
      localak = a;
      if (l) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        e = paramInt1;
        a.d = (d(paramcb) + a.e);
        a.b = k.b(paramcb);
        paramInt1 = k.b(paramcb) - k.d();
        a.c = paramInt2;
        if (paramBoolean)
        {
          paramcb = a;
          c -= paramInt1;
        }
        a.g = paramInt1;
        return;
      }
    }
    paramcb = B();
    ak localak = a;
    h += k.c();
    localak = a;
    if (l) {}
    for (paramInt1 = i1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.d = (d(paramcb) + a.e);
      a.b = k.a(paramcb);
      paramInt1 = -k.a(paramcb) + k.c();
      break;
    }
  }
  
  private void a(ai paramai)
  {
    b(a, b);
  }
  
  private void a(bv parambv, int paramInt)
  {
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int i1 = q();
      int i;
      View localView;
      if (l)
      {
        i = i1 - 1;
        while (i >= 0)
        {
          localView = e(i);
          if (k.b(localView) > paramInt)
          {
            a(parambv, i1 - 1, i);
            return;
          }
          i -= 1;
        }
      }
      else
      {
        i = 0;
        while (i < i1)
        {
          localView = e(i);
          if (k.b(localView) > paramInt)
          {
            a(parambv, 0, i);
            return;
          }
          i += 1;
        }
      }
    }
  }
  
  private void a(bv parambv, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, parambv);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          a(i, parambv);
          i -= 1;
        }
      }
    }
  }
  
  private void a(bv parambv, ak paramak)
  {
    if (!a) {
      return;
    }
    if (f == -1)
    {
      b(parambv, g);
      return;
    }
    a(parambv, g);
  }
  
  private int b(int paramInt, bv parambv, cb paramcb, boolean paramBoolean)
  {
    int i = paramInt - k.c();
    if (i > 0)
    {
      int i1 = -c(i, parambv, paramcb);
      i = i1;
      if (paramBoolean)
      {
        paramInt = paramInt + i1 - k.c();
        i = i1;
        if (paramInt > 0)
        {
          k.a(-paramInt);
          i = i1 - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l) {
      return a(0, q(), paramBoolean1, paramBoolean2);
    }
    return a(q() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    a.c = (k.d() - paramInt2);
    ak localak = a;
    if (l) {}
    for (int i = -1;; i = 1)
    {
      e = i;
      a.d = paramInt1;
      a.f = 1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void b(ai paramai)
  {
    c(a, b);
  }
  
  private void b(bv parambv, int paramInt)
  {
    int i = q();
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int i1 = k.e() - paramInt;
      View localView;
      if (l)
      {
        paramInt = 0;
        while (paramInt < i)
        {
          localView = e(paramInt);
          if (k.a(localView) < i1)
          {
            a(parambv, 0, paramInt);
            return;
          }
          paramInt += 1;
        }
      }
      else
      {
        paramInt = i - 1;
        while (paramInt >= 0)
        {
          localView = e(paramInt);
          if (k.a(localView) < i1)
          {
            a(parambv, i - 1, paramInt);
            return;
          }
          paramInt -= 1;
        }
      }
    }
  }
  
  private void b(bv parambv, cb paramcb, int paramInt1, int paramInt2)
  {
    if ((!paramcb.b()) || (q() == 0) || (paramcb.a()) || (!b())) {
      return;
    }
    int i = 0;
    int i1 = 0;
    List localList = parambv.b();
    int i4 = localList.size();
    int i5 = d(e(0));
    int i2 = 0;
    if (i2 < i4)
    {
      ce localce = (ce)localList.get(i2);
      int i3;
      if (localce.p())
      {
        i3 = i1;
        i1 = i;
        i = i3;
      }
      for (;;)
      {
        i3 = i2 + 1;
        i2 = i1;
        i1 = i;
        i = i2;
        i2 = i3;
        break;
        int i6;
        if (localce.d() < i5)
        {
          i6 = 1;
          label143:
          if (i6 == l) {
            break label195;
          }
        }
        label195:
        for (i3 = -1;; i3 = 1)
        {
          if (i3 != -1) {
            break label201;
          }
          i3 = k.c(a) + i;
          i = i1;
          i1 = i3;
          break;
          i6 = 0;
          break label143;
        }
        label201:
        i3 = k.c(a) + i1;
        i1 = i;
        i = i3;
      }
    }
    a.k = localList;
    if (i > 0)
    {
      c(d(B()), paramInt1);
      a.h = i;
      a.c = 0;
      a.a();
      a(parambv, a, paramcb, false);
    }
    if (i1 > 0)
    {
      b(d(C()), paramInt2);
      a.h = i1;
      a.c = 0;
      a.a();
      a(parambv, a, paramcb, false);
    }
    a.k = null;
  }
  
  private void b(cb paramcb, ai paramai)
  {
    if (d(paramcb, paramai)) {}
    while (c(paramcb, paramai)) {
      return;
    }
    paramai.b();
    if (d) {}
    for (int i = paramcb.e() - 1;; i = 0)
    {
      a = i;
      return;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    a.c = (paramInt2 - k.c());
    a.d = paramInt1;
    ak localak = a;
    if (l) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.f = -1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private boolean c(cb paramcb, ai paramai)
  {
    int i = 0;
    if (q() == 0) {}
    View localView;
    do
    {
      return false;
      localView = x();
      if ((localView != null) && (ai.a(paramai, localView, paramcb)))
      {
        paramai.a(localView);
        return true;
      }
    } while (b != d);
    if (c)
    {
      localView = k(paramcb);
      label65:
      if (localView == null) {
        break label164;
      }
      paramai.b(localView);
      if ((!paramcb.a()) && (b()))
      {
        if ((k.a(localView) >= k.d()) || (k.b(localView) < k.c())) {
          i = 1;
        }
        if (i != 0) {
          if (!c) {
            break label166;
          }
        }
      }
    }
    label164:
    label166:
    for (i = k.d();; i = k.c())
    {
      b = i;
      return true;
      localView = l(paramcb);
      break label65;
      break;
    }
  }
  
  private boolean d(cb paramcb, ai paramai)
  {
    boolean bool = false;
    if ((paramcb.a()) || (m == -1)) {
      return false;
    }
    if ((m < 0) || (m >= paramcb.e()))
    {
      m = -1;
      n = Integer.MIN_VALUE;
      return false;
    }
    a = m;
    if ((o != null) && (o.hasValidAnchor()))
    {
      c = o.mAnchorLayoutFromEnd;
      if (c)
      {
        b = (k.d() - o.mAnchorOffset);
        return true;
      }
      b = (k.c() + o.mAnchorOffset);
      return true;
    }
    if (n == Integer.MIN_VALUE)
    {
      paramcb = b(m);
      int i;
      if (paramcb != null)
      {
        if (k.c(paramcb) > k.f())
        {
          paramai.b();
          return true;
        }
        if (k.a(paramcb) - k.c() < 0)
        {
          b = k.c();
          c = false;
          return true;
        }
        if (k.d() - k.b(paramcb) < 0)
        {
          b = k.d();
          c = true;
          return true;
        }
        if (c) {}
        for (i = k.b(paramcb) + k.b();; i = k.a(paramcb))
        {
          b = i;
          return true;
        }
      }
      if (q() > 0)
      {
        i = d(e(0));
        if (m >= i) {
          break label351;
        }
      }
      label351:
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 == l) {
          bool = true;
        }
        c = bool;
        paramai.b();
        return true;
      }
    }
    c = l;
    if (l)
    {
      b = (k.d() - n);
      return true;
    }
    b = (k.c() + n);
    return true;
  }
  
  private int h(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    h();
    ba localba = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return ch.a(paramcb, localba, localView, b(bool1, true), this, e, l);
    }
  }
  
  private int i(int paramInt)
  {
    int i1 = -1;
    int i2 = 1;
    int i3 = Integer.MIN_VALUE;
    int i = i1;
    switch (paramInt)
    {
    default: 
      i = Integer.MIN_VALUE;
    case 1: 
    case 2: 
    case 33: 
    case 130: 
    case 17: 
      do
      {
        do
        {
          return i;
          return 1;
          i = i1;
        } while (j == 1);
        return Integer.MIN_VALUE;
        paramInt = i3;
        if (j == 1) {
          paramInt = 1;
        }
        return paramInt;
        i = i1;
      } while (j == 0);
      return Integer.MIN_VALUE;
    }
    if (j == 0) {}
    for (paramInt = i2;; paramInt = Integer.MIN_VALUE) {
      return paramInt;
    }
  }
  
  private int i(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    h();
    ba localba = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return ch.a(paramcb, localba, localView, b(bool1, true), this, e);
    }
  }
  
  private int j(cb paramcb)
  {
    boolean bool2 = false;
    if (q() == 0) {
      return 0;
    }
    h();
    ba localba = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return ch.b(paramcb, localba, localView, b(bool1, true), this, e);
    }
  }
  
  private View j(int paramInt)
  {
    return a(0, q(), paramInt);
  }
  
  private View k(int paramInt)
  {
    return a(q() - 1, -1, paramInt);
  }
  
  private View k(cb paramcb)
  {
    if (l) {
      return j(paramcb.e());
    }
    return k(paramcb.e());
  }
  
  private View l(cb paramcb)
  {
    if (l) {
      return k(paramcb.e());
    }
    return j(paramcb.e());
  }
  
  public int a(int paramInt, bv parambv, cb paramcb)
  {
    if (j == 1) {
      return 0;
    }
    return c(paramInt, parambv, paramcb);
  }
  
  int a(bv parambv, ak paramak, cb paramcb, boolean paramBoolean)
  {
    int i2 = c;
    if (g != Integer.MIN_VALUE)
    {
      if (c < 0) {
        g += c;
      }
      a(parambv, paramak);
    }
    int i = c + h;
    aj localaj = new aj();
    if ((i > 0) && (paramak.a(paramcb)))
    {
      localaj.a();
      a(parambv, paramcb, paramak, localaj);
      if (!b) {
        break label104;
      }
    }
    for (;;)
    {
      return i2 - c;
      label104:
      b += a * f;
      int i1;
      if ((c) && (a.k == null))
      {
        i1 = i;
        if (paramcb.a()) {}
      }
      else
      {
        c -= a;
        i1 = i - a;
      }
      if (g != Integer.MIN_VALUE)
      {
        g += a;
        if (c < 0) {
          g += c;
        }
        a(parambv, paramak);
      }
      i = i1;
      if (!paramBoolean) {
        break;
      }
      i = i1;
      if (!d) {
        break;
      }
    }
  }
  
  protected int a(cb paramcb)
  {
    if (paramcb.d()) {
      return k.f();
    }
    return 0;
  }
  
  public RecyclerView.LayoutParams a()
  {
    return new RecyclerView.LayoutParams(-2, -2);
  }
  
  View a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject2 = null;
    h();
    int i1 = k.c();
    int i2 = k.d();
    int i;
    Object localObject1;
    label36:
    Object localObject3;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject1 = null;
      if (paramInt1 == paramInt2) {
        break label168;
      }
      localObject3 = e(paramInt1);
      int i3 = d((View)localObject3);
      if ((i3 < 0) || (i3 >= paramInt3)) {
        break label187;
      }
      if (!((RecyclerView.LayoutParams)((View)localObject3).getLayoutParams()).c()) {
        break label120;
      }
      if (localObject1 != null) {
        break label187;
      }
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
    for (;;)
    {
      paramInt1 += i;
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break label36;
      i = -1;
      break;
      label120:
      Object localObject4;
      if (k.a((View)localObject3) < i2)
      {
        localObject4 = localObject3;
        if (k.b((View)localObject3) >= i1) {}
      }
      else
      {
        if (localObject2 != null) {
          break label187;
        }
        localObject2 = localObject1;
        localObject1 = localObject3;
        continue;
        label168:
        if (localObject2 == null) {
          break label180;
        }
      }
      for (;;)
      {
        localObject4 = localObject2;
        return (View)localObject4;
        label180:
        localObject2 = localObject1;
      }
      label187:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  View a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    h();
    int i1 = k.c();
    int i2 = k.d();
    if (paramInt2 > paramInt1) {}
    Object localObject;
    View localView;
    for (int i = 1;; i = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2) {
        break label130;
      }
      localView = e(paramInt1);
      int i3 = k.a(localView);
      int i4 = k.b(localView);
      if ((i3 >= i2) || (i4 <= i1)) {
        break label133;
      }
      if ((paramBoolean1) && ((i3 < i1) || (i4 > i2))) {
        break;
      }
      return localView;
    }
    if ((paramBoolean2) && (localObject == null)) {
      localObject = localView;
    }
    label130:
    label133:
    for (;;)
    {
      paramInt1 += i;
      break;
      return (View)localObject;
    }
  }
  
  public View a(View paramView, int paramInt, bv parambv, cb paramcb)
  {
    A();
    if (q() == 0) {}
    label41:
    label132:
    label134:
    label140:
    for (;;)
    {
      return null;
      paramInt = i(paramInt);
      if (paramInt != Integer.MIN_VALUE)
      {
        h();
        if (paramInt == -1)
        {
          paramView = l(paramcb);
          if (paramView == null) {
            break label132;
          }
          h();
          a(paramInt, (int)(0.33F * k.f()), false, paramcb);
          a.g = Integer.MIN_VALUE;
          a.a = false;
          a(parambv, a, paramcb, true);
          if (paramInt != -1) {
            break label134;
          }
        }
        for (parambv = B();; parambv = C())
        {
          if ((parambv == paramView) || (!parambv.isFocusable())) {
            break label140;
          }
          return parambv;
          paramView = k(paramcb);
          break label41;
          break;
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    a(null);
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    k = null;
    l();
  }
  
  public void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof LinearLayoutManager.SavedState))
    {
      o = ((LinearLayoutManager.SavedState)paramParcelable);
      l();
    }
  }
  
  public void a(RecyclerView paramRecyclerView, bv parambv)
  {
    super.a(paramRecyclerView, parambv);
    if (f)
    {
      c(parambv);
      parambv.a();
    }
  }
  
  void a(bv parambv, cb paramcb, ak paramak, aj paramaj)
  {
    parambv = paramak.a(parambv);
    if (parambv == null)
    {
      b = true;
      return;
    }
    paramcb = (RecyclerView.LayoutParams)parambv.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label61:
    int i;
    int i1;
    label120:
    int i2;
    int i3;
    if (k == null)
    {
      bool2 = l;
      if (f == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label215;
        }
        b(parambv);
        a(parambv, 0, 0);
        a = k.c(parambv);
        if (j != 1) {
          break label322;
        }
        if (!g()) {
          break label271;
        }
        i = r() - v();
        i1 = i - k.d(parambv);
        if (f != -1) {
          break label293;
        }
        i2 = b;
        i3 = b - a;
      }
    }
    for (;;)
    {
      a(parambv, i1 + leftMargin, i3 + topMargin, i - rightMargin, i2 - bottomMargin);
      if ((paramcb.c()) || (paramcb.d())) {
        c = true;
      }
      d = parambv.isFocusable();
      return;
      bool1 = false;
      break;
      label215:
      b(parambv, 0);
      break label61;
      bool2 = l;
      if (f == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label262;
        }
        a(parambv);
        break;
      }
      label262:
      a(parambv, 0);
      break label61;
      label271:
      i1 = t();
      i = k.d(parambv) + i1;
      break label120;
      label293:
      i3 = b;
      i2 = b;
      int i4 = a;
      i2 += i4;
      continue;
      label322:
      i3 = u();
      i2 = k.d(parambv) + i3;
      if (f == -1)
      {
        i = b;
        i1 = b - a;
      }
      else
      {
        i1 = b;
        i = b;
        i4 = a;
        i += i4;
      }
    }
  }
  
  void a(cb paramcb, ai paramai) {}
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    if (q() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      paramAccessibilityEvent.b(j());
      paramAccessibilityEvent.c(k());
    }
  }
  
  public void a(String paramString)
  {
    if (o == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if (paramBoolean == c) {
      return;
    }
    c = paramBoolean;
    l();
  }
  
  public int b(int paramInt, bv parambv, cb paramcb)
  {
    if (j == 0) {
      return 0;
    }
    return c(paramInt, parambv, paramcb);
  }
  
  public int b(cb paramcb)
  {
    return h(paramcb);
  }
  
  public View b(int paramInt)
  {
    int i = q();
    if (i == 0) {}
    do
    {
      return null;
      paramInt -= d(e(0));
    } while ((paramInt < 0) || (paramInt >= i));
    return e(paramInt);
  }
  
  public boolean b()
  {
    return (o == null) && (b == d);
  }
  
  int c(int paramInt, bv parambv, cb paramcb)
  {
    if ((q() == 0) || (paramInt == 0)) {
      return 0;
    }
    a.a = true;
    h();
    if (paramInt > 0) {}
    int i1;
    int i2;
    for (int i = 1;; i = -1)
    {
      i1 = Math.abs(paramInt);
      a(i, i1, true, paramcb);
      i2 = a.g + a(parambv, a, paramcb, false);
      if (i2 >= 0) {
        break;
      }
      return 0;
    }
    if (i1 > i2) {
      paramInt = i * i2;
    }
    k.a(-paramInt);
    a.j = paramInt;
    return paramInt;
  }
  
  public int c(cb paramcb)
  {
    return h(paramcb);
  }
  
  public Parcelable c()
  {
    if (o != null) {
      return new LinearLayoutManager.SavedState(o);
    }
    LinearLayoutManager.SavedState localSavedState = new LinearLayoutManager.SavedState();
    if (q() > 0)
    {
      h();
      boolean bool = b ^ l;
      mAnchorLayoutFromEnd = bool;
      if (bool)
      {
        localView = C();
        mAnchorOffset = (k.d() - k.b(localView));
        mAnchorPosition = d(localView);
        return localSavedState;
      }
      View localView = B();
      mAnchorPosition = d(localView);
      mAnchorOffset = (k.a(localView) - k.c());
      return localSavedState;
    }
    localSavedState.invalidateAnchor();
    return localSavedState;
  }
  
  public void c(bv parambv, cb paramcb)
  {
    if ((o != null) && (o.hasValidAnchor())) {
      m = o.mAnchorPosition;
    }
    h();
    a.a = false;
    A();
    p.a();
    p.c = (l ^ d);
    b(paramcb, p);
    int i = a(paramcb);
    int i1;
    int i2;
    int i3;
    Object localObject;
    label215:
    label228:
    int i4;
    if (a.j >= 0)
    {
      i1 = 0;
      i2 = i1 + k.c();
      i3 = i + k.g();
      i = i3;
      i1 = i2;
      if (paramcb.a())
      {
        i = i3;
        i1 = i2;
        if (m != -1)
        {
          i = i3;
          i1 = i2;
          if (n != Integer.MIN_VALUE)
          {
            localObject = b(m);
            i = i3;
            i1 = i2;
            if (localObject != null)
            {
              if (!l) {
                break label583;
              }
              i = k.d() - k.b((View)localObject) - n;
              if (i <= 0) {
                break label615;
              }
              i1 = i2 + i;
              i = i3;
            }
          }
        }
      }
      a(paramcb, p);
      a(parambv);
      a.i = paramcb.a();
      if (!p.c) {
        break label627;
      }
      b(p);
      a.h = i1;
      a(parambv, a, paramcb, false);
      i3 = a.b;
      i4 = a.d;
      i1 = i;
      if (a.c > 0) {
        i1 = i + a.c;
      }
      a(p);
      a.h = i1;
      localObject = a;
      d += a.e;
      a(parambv, a, paramcb, false);
      i2 = a.b;
      if (a.c <= 0) {
        break label871;
      }
      i = a.c;
      c(i4, i3);
      a.h = i;
      a(parambv, a, paramcb, false);
    }
    label456:
    label583:
    label615:
    label627:
    label826:
    label871:
    for (i = a.b;; i = i3)
    {
      i1 = i;
      i = i2;
      i2 = i;
      i3 = i1;
      if (q() > 0)
      {
        if (!(l ^ d)) {
          break label826;
        }
        i2 = a(i, parambv, paramcb, true);
        i3 = i1 + i2;
        i1 = b(i3, parambv, paramcb, false);
        i3 += i1;
      }
      for (i2 = i + i2 + i1;; i2 = i + i4)
      {
        b(parambv, paramcb, i3, i2);
        if (!paramcb.a())
        {
          m = -1;
          n = Integer.MIN_VALUE;
          k.a();
        }
        b = d;
        o = null;
        return;
        i1 = i;
        i = 0;
        break;
        i = k.a((View)localObject);
        i1 = k.c();
        i = n - (i - i1);
        break label215;
        i = i3 - i;
        i1 = i2;
        break label228;
        a(p);
        a.h = i;
        a(parambv, a, paramcb, false);
        i2 = a.b;
        i4 = a.d;
        i = i1;
        if (a.c > 0) {
          i = i1 + a.c;
        }
        b(p);
        a.h = i;
        localObject = a;
        d += a.e;
        a(parambv, a, paramcb, false);
        i3 = a.b;
        i = i2;
        i1 = i3;
        if (a.c <= 0) {
          break label456;
        }
        i = a.c;
        b(i4, i2);
        a.h = i;
        a(parambv, a, paramcb, false);
        i = a.b;
        i1 = i3;
        break label456;
        i2 = b(i1, parambv, paramcb, true);
        i += i2;
        i4 = a(i, parambv, paramcb, false);
        i3 = i1 + i2 + i4;
      }
    }
  }
  
  public int d(cb paramcb)
  {
    return i(paramcb);
  }
  
  public boolean d()
  {
    return j == 0;
  }
  
  public int e(cb paramcb)
  {
    return i(paramcb);
  }
  
  public boolean e()
  {
    return j == 1;
  }
  
  public int f()
  {
    return j;
  }
  
  public int f(cb paramcb)
  {
    return j(paramcb);
  }
  
  public int g(cb paramcb)
  {
    return j(paramcb);
  }
  
  protected boolean g()
  {
    return o() == 1;
  }
  
  void h()
  {
    if (a == null) {
      a = i();
    }
    if (k == null) {
      k = ba.a(this, j);
    }
  }
  
  ak i()
  {
    return new ak();
  }
  
  public int j()
  {
    View localView = a(0, q(), false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
  
  public int k()
  {
    View localView = a(q() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */