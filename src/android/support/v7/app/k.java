package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.s;
import android.support.v4.view.ab;
import android.support.v4.view.ai;
import android.support.v4.view.as;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v4.view.bg;
import android.support.v4.view.j;
import android.support.v4.view.n;
import android.support.v4.widget.p;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.h;
import android.support.v7.internal.widget.h.a;
import android.support.v7.internal.widget.o;
import android.support.v7.internal.widget.r;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.yelp.android.j.a.c;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.j;
import com.yelp.android.j.a.k;
import com.yelp.android.m.d;
import com.yelp.android.p.b;
import com.yelp.android.p.c;

class k
  extends g
  implements n, f.a
{
  private boolean A;
  private boolean B;
  private d[] C;
  private d D;
  private boolean E;
  private int F;
  private final Runnable G = new Runnable()
  {
    public void run()
    {
      if ((k.a(k.this) & 0x1) != 0) {
        k.a(k.this, 0);
      }
      if ((k.a(k.this) & 0x1000) != 0) {
        k.a(k.this, 108);
      }
      k.a(k.this, false);
      k.b(k.this, 0);
    }
  };
  private boolean H;
  private Rect I;
  private Rect J;
  private com.yelp.android.m.a K;
  com.yelp.android.r.a m;
  ActionBarContextView n;
  PopupWindow o;
  Runnable p;
  az q = null;
  private android.support.v7.internal.widget.e r;
  private a s;
  private e t;
  private boolean u;
  private ViewGroup v;
  private ViewGroup w;
  private TextView x;
  private View y;
  private boolean z;
  
  k(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
  }
  
  private d a(int paramInt, boolean paramBoolean)
  {
    Object localObject2 = C;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new d[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      C = ((d[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new d(paramInt);
      localObject1[paramInt] = localObject2;
      return (d)localObject2;
    }
    return (d)localObject2;
  }
  
  private d a(Menu paramMenu)
  {
    d[] arrayOfd = C;
    int i;
    int j;
    if (arrayOfd != null)
    {
      i = arrayOfd.length;
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label57;
      }
      d locald = arrayOfd[j];
      if ((locald != null) && (j == paramMenu))
      {
        return locald;
        i = 0;
        break;
      }
      j += 1;
    }
    label57:
    return null;
  }
  
  private void a(int paramInt, d paramd, Menu paramMenu)
  {
    Object localObject1 = paramd;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      d locald = paramd;
      if (paramd == null)
      {
        locald = paramd;
        if (paramInt >= 0)
        {
          locald = paramd;
          if (paramInt < C.length) {
            locald = C[paramInt];
          }
        }
      }
      localObject1 = locald;
      localObject2 = paramMenu;
      if (locald != null)
      {
        localObject2 = j;
        localObject1 = locald;
      }
    }
    if ((localObject1 != null) && (!o)) {}
    while (m()) {
      return;
    }
    c.onPanelClosed(paramInt, (Menu)localObject2);
  }
  
  private void a(d paramd, KeyEvent paramKeyEvent)
  {
    int k = -1;
    if ((o) || (m())) {}
    Object localObject;
    int i;
    label112:
    label117:
    label121:
    label123:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if (a == 0)
          {
            localObject = a;
            if ((getResourcesgetConfigurationscreenLayout & 0xF) != 4) {
              break label112;
            }
            i = 1;
            if (getApplicationInfotargetSdkVersion < 11) {
              break label117;
            }
          }
          for (int j = 1;; j = 0)
          {
            if ((i != 0) && (j != 0)) {
              break label121;
            }
            localObject = n();
            if ((localObject == null) || (((Window.Callback)localObject).onMenuOpened(a, j))) {
              break label123;
            }
            a(paramd, true);
            return;
            i = 0;
            break;
          }
        }
        localObject = (WindowManager)a.getSystemService("window");
      } while ((localObject == null) || (!b(paramd, paramKeyEvent)));
      if ((g != null) && (!q)) {
        break label398;
      }
      if (g != null) {
        break;
      }
    } while ((!a(paramd)) || (g == null));
    label187:
    if ((c(paramd)) && (paramd.a()))
    {
      paramKeyEvent = h.getLayoutParams();
      if (paramKeyEvent != null) {
        break label434;
      }
      paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
    }
    label398:
    label434:
    for (;;)
    {
      i = b;
      g.setBackgroundResource(i);
      ViewParent localViewParent = h.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(h);
      }
      g.addView(h, paramKeyEvent);
      if (!h.hasFocus()) {
        h.requestFocus();
      }
      i = -2;
      for (;;)
      {
        n = false;
        paramKeyEvent = new WindowManager.LayoutParams(i, -2, d, e, 1002, 8519680, -3);
        gravity = c;
        windowAnimations = f;
        ((WindowManager)localObject).addView(g, paramKeyEvent);
        o = true;
        return;
        if ((!q) || (g.getChildCount() <= 0)) {
          break label187;
        }
        g.removeAllViews();
        break label187;
        break;
        if (i != null)
        {
          paramKeyEvent = i.getLayoutParams();
          if (paramKeyEvent != null)
          {
            i = k;
            if (width == -1) {
              continue;
            }
          }
        }
        i = -2;
      }
    }
  }
  
  private void a(d paramd, boolean paramBoolean)
  {
    if ((paramBoolean) && (a == 0) && (r != null) && (r.e())) {
      b(j);
    }
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
      if ((localWindowManager != null) && (o) && (g != null))
      {
        localWindowManager.removeView(g);
        if (paramBoolean) {
          a(a, paramd, null);
        }
      }
      m = false;
      n = false;
      o = false;
      h = null;
      q = true;
    } while (D != paramd);
    D = null;
  }
  
  private void a(f paramf, boolean paramBoolean)
  {
    if ((r != null) && (r.d()) && ((!as.b(ViewConfiguration.get(a))) || (r.f())))
    {
      paramf = n();
      if ((!r.e()) || (!paramBoolean)) {
        if ((paramf != null) && (!m()))
        {
          if ((E) && ((F & 0x1) != 0))
          {
            v.removeCallbacks(G);
            G.run();
          }
          d locald = a(0, true);
          if ((j != null) && (!r) && (paramf.onPreparePanel(0, i, j)))
          {
            paramf.onMenuOpened(108, j);
            r.g();
          }
        }
      }
      do
      {
        return;
        r.h();
      } while (m());
      paramf.onPanelClosed(108, a0j);
      return;
    }
    paramf = a(0, true);
    q = true;
    a(paramf, false);
    a(paramf, null);
  }
  
  private boolean a(d paramd)
  {
    paramd.a(k());
    g = new c(l);
    c = 81;
    return true;
  }
  
  private boolean a(d paramd, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramKeyEvent.isSystem()) {
      bool2 = bool1;
    }
    do
    {
      do
      {
        do
        {
          return bool2;
          if (!m)
          {
            bool1 = bool2;
            if (!b(paramd, paramKeyEvent)) {}
          }
          else
          {
            bool1 = bool2;
            if (j != null) {
              bool1 = j.performShortcut(paramInt1, paramKeyEvent, paramInt2);
            }
          }
          bool2 = bool1;
        } while (!bool1);
        bool2 = bool1;
      } while ((paramInt2 & 0x1) != 0);
      bool2 = bool1;
    } while (r != null);
    a(paramd, true);
    return bool1;
  }
  
  private boolean a(ViewParent paramViewParent)
  {
    if (paramViewParent == null)
    {
      return false;
      paramViewParent = paramViewParent.getParent();
    }
    for (;;)
    {
      if (paramViewParent == null) {
        return true;
      }
      if ((paramViewParent != v) && ((paramViewParent instanceof View)) && (!ai.F((View)paramViewParent))) {
        break;
      }
      return false;
    }
  }
  
  private void b(f paramf)
  {
    if (B) {
      return;
    }
    B = true;
    r.j();
    Window.Callback localCallback = n();
    if ((localCallback != null) && (!m())) {
      localCallback.onPanelClosed(108, paramf);
    }
    B = false;
  }
  
  private boolean b(d paramd)
  {
    Context localContext = a;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if (((a == 0) || (a == 108)) && (r != null))
    {
      localTypedValue = new TypedValue();
      localTheme = localContext.getTheme();
      localTheme.resolveAttribute(com.yelp.android.j.a.a.actionBarTheme, localTypedValue, true);
      localObject1 = null;
      if (resourceId != 0)
      {
        localObject1 = localContext.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(com.yelp.android.j.a.a.actionBarWidgetTheme, localTypedValue, true);
        Object localObject2 = localObject1;
        if (resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(resourceId, true);
        }
        if (localObject2 == null) {
          break label203;
        }
        localObject1 = new b(localContext, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    for (;;)
    {
      localObject1 = new f((Context)localObject1);
      ((f)localObject1).a(this);
      paramd.a((f)localObject1);
      return true;
      localTheme.resolveAttribute(com.yelp.android.j.a.a.actionBarWidgetTheme, localTypedValue, true);
      break;
      label203:
      localObject1 = localContext;
    }
  }
  
  private boolean b(d paramd, KeyEvent paramKeyEvent)
  {
    if (m()) {
      return false;
    }
    if (m) {
      return true;
    }
    if ((D != null) && (D != paramd)) {
      a(D, false);
    }
    Window.Callback localCallback = n();
    if (localCallback != null) {
      i = localCallback.onCreatePanelView(a);
    }
    if ((a == 0) || (a == 108)) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && (r != null)) {
        r.i();
      }
      if ((i != null) || ((i != 0) && ((j() instanceof d)))) {
        break label408;
      }
      if ((j != null) && (!r)) {
        break label278;
      }
      if ((j == null) && ((!b(paramd)) || (j == null))) {
        break;
      }
      if ((i != 0) && (r != null))
      {
        if (s == null) {
          s = new a(null);
        }
        r.a(j, s);
      }
      j.g();
      if (localCallback.onCreatePanelMenu(a, j)) {
        break label273;
      }
      paramd.a(null);
      if ((i == 0) || (r == null)) {
        break;
      }
      r.a(null, s);
      return false;
    }
    label273:
    r = false;
    label278:
    j.g();
    if (s != null)
    {
      j.d(s);
      s = null;
    }
    if (!localCallback.onPreparePanel(0, i, j))
    {
      if ((i != 0) && (r != null)) {
        r.a(null, s);
      }
      j.h();
      return false;
    }
    if (paramKeyEvent != null)
    {
      i = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(i).getKeyboardType() == 1) {
        break label430;
      }
    }
    label408:
    label430:
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      j.setQwertyMode(p);
      j.h();
      m = true;
      n = false;
      D = paramd;
      return true;
      i = -1;
      break;
    }
  }
  
  private void c(int paramInt)
  {
    a(a(paramInt, true), true);
  }
  
  private boolean c(d paramd)
  {
    if (i != null)
    {
      h = i;
      return true;
    }
    if (j == null) {
      return false;
    }
    if (t == null) {
      t = new e(null);
    }
    h = ((View)paramd.a(t));
    if (h != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private void d(int paramInt)
  {
    F |= 1 << paramInt;
    if ((!E) && (v != null))
    {
      ai.a(v, G);
      E = true;
    }
  }
  
  private boolean d(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      d locald = a(paramInt, true);
      if (!o) {
        return b(locald, paramKeyEvent);
      }
    }
    return false;
  }
  
  private void e(int paramInt)
  {
    d locald = a(paramInt, true);
    if (j != null)
    {
      Bundle localBundle = new Bundle();
      j.c(localBundle);
      if (localBundle.size() > 0) {
        s = localBundle;
      }
      j.g();
      j.clear();
    }
    r = true;
    q = true;
    if (((paramInt == 108) || (paramInt == 0)) && (r != null))
    {
      locald = a(0, false);
      if (locald != null)
      {
        m = false;
        b(locald, null);
      }
    }
  }
  
  private boolean e(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool2 = true;
    if (m != null) {
      return false;
    }
    d locald = a(paramInt, true);
    if ((paramInt == 0) && (r != null) && (r.d()) && (!as.b(ViewConfiguration.get(a)))) {
      if (!r.e())
      {
        if ((m()) || (!b(locald, paramKeyEvent))) {
          break label229;
        }
        bool1 = r.g();
      }
    }
    for (;;)
    {
      if (bool1)
      {
        paramKeyEvent = (AudioManager)a.getSystemService("audio");
        if (paramKeyEvent == null) {
          break label216;
        }
        paramKeyEvent.playSoundEffect(0);
      }
      label122:
      return bool1;
      bool1 = r.h();
      continue;
      if ((!o) && (!n)) {
        break;
      }
      bool1 = o;
      a(locald, true);
    }
    if (m)
    {
      if (!r) {
        break label234;
      }
      m = false;
    }
    label216:
    label229:
    label234:
    for (boolean bool1 = b(locald, paramKeyEvent);; bool1 = true)
    {
      if (bool1)
      {
        a(locald, paramKeyEvent);
        bool1 = bool2;
        break;
        Log.w("AppCompatDelegate", "Couldn't get audio manager");
        break label122;
      }
      bool1 = false;
      break;
    }
  }
  
  private int f(int paramInt)
  {
    int j = 1;
    int k = 1;
    int i1 = 0;
    Object localObject1;
    Object localObject2;
    int i;
    if ((n != null) && ((n.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)n.getLayoutParams();
      if (n.isShown())
      {
        if (I == null)
        {
          I = new Rect();
          J = new Rect();
        }
        localObject2 = I;
        Rect localRect = J;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        r.a(w, (Rect)localObject2, localRect);
        if (top == 0)
        {
          i = paramInt;
          if (topMargin == i) {
            break label355;
          }
          topMargin = paramInt;
          if (y != null) {
            break label279;
          }
          y = new View(a);
          y.setBackgroundColor(a.getResources().getColor(a.c.abc_input_method_navigation_guard));
          w.addView(y, -1, new ViewGroup.LayoutParams(-1, paramInt));
          i = 1;
          label201:
          if (y == null) {
            break label317;
          }
          label208:
          j = paramInt;
          if (!this.j)
          {
            j = paramInt;
            if (k != 0) {
              j = 0;
            }
          }
          paramInt = j;
          j = i;
          i = k;
          label233:
          if (j != 0) {
            n.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          }
        }
      }
    }
    for (;;)
    {
      if (y != null)
      {
        localObject1 = y;
        if (i == 0) {
          break label342;
        }
      }
      label279:
      label317:
      label342:
      for (i = i1;; i = 8)
      {
        ((View)localObject1).setVisibility(i);
        return paramInt;
        i = 0;
        break;
        localObject2 = y.getLayoutParams();
        if (height != paramInt)
        {
          height = paramInt;
          y.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        i = 1;
        break label201;
        k = 0;
        break label208;
        if (topMargin == 0) {
          break label348;
        }
        topMargin = 0;
        i = 0;
        break label233;
      }
      label348:
      j = 0;
      i = 0;
      break label233;
      label355:
      i = 0;
      break label201;
      i = 0;
    }
  }
  
  private int g(int paramInt)
  {
    int i;
    if (paramInt == 8)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      i = 108;
    }
    do
    {
      return i;
      i = paramInt;
    } while (paramInt != 9);
    Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
    return 109;
  }
  
  private void q()
  {
    if (!u)
    {
      w = r();
      Object localObject = o();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        b((CharSequence)localObject);
      }
      s();
      a(w);
      u = true;
      localObject = a(0, false);
      if ((!m()) && ((localObject == null) || (j == null))) {
        d(108);
      }
    }
  }
  
  private ViewGroup r()
  {
    Object localObject = a.obtainStyledAttributes(a.k.Theme);
    if (!((TypedArray)localObject).hasValue(a.k.Theme_windowActionBar))
    {
      ((TypedArray)localObject).recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    if (((TypedArray)localObject).getBoolean(a.k.Theme_windowNoTitle, false))
    {
      b(1);
      if (((TypedArray)localObject).getBoolean(a.k.Theme_windowActionBarOverlay, false)) {
        b(109);
      }
      if (((TypedArray)localObject).getBoolean(a.k.Theme_windowActionModeOverlay, false)) {
        b(10);
      }
      k = ((TypedArray)localObject).getBoolean(a.k.Theme_android_windowIsFloating, false);
      ((TypedArray)localObject).recycle();
      localObject = LayoutInflater.from(a);
      if (l) {
        break label422;
      }
      if (!k) {
        break label263;
      }
      localObject = (ViewGroup)((LayoutInflater)localObject).inflate(a.h.abc_dialog_title_material, null);
      i = false;
      h = false;
    }
    for (;;)
    {
      if (localObject == null)
      {
        throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + h + ", windowActionBarOverlay: " + i + ", android:windowIsFloating: " + k + ", windowActionModeOverlay: " + j + ", windowNoTitle: " + l + " }");
        if (!((TypedArray)localObject).getBoolean(a.k.Theme_windowActionBar, false)) {
          break;
        }
        b(108);
        break;
        label263:
        if (!h) {
          break label614;
        }
        localObject = new TypedValue();
        a.getTheme().resolveAttribute(com.yelp.android.j.a.a.actionBarTheme, (TypedValue)localObject, true);
        if (resourceId != 0) {}
        for (localObject = new b(a, resourceId);; localObject = a)
        {
          localObject = (ViewGroup)LayoutInflater.from((Context)localObject).inflate(a.h.abc_screen_toolbar, null);
          r = ((android.support.v7.internal.widget.e)((ViewGroup)localObject).findViewById(a.f.decor_content_parent));
          r.setWindowCallback(n());
          if (i) {
            r.a(109);
          }
          if (z) {
            r.a(2);
          }
          if (A) {
            r.a(5);
          }
          break;
        }
        label422:
        if (j) {}
        for (localObject = (ViewGroup)((LayoutInflater)localObject).inflate(a.h.abc_screen_simple_overlay_action_mode, null);; localObject = (ViewGroup)((LayoutInflater)localObject).inflate(a.h.abc_screen_simple, null))
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label479;
          }
          ai.a((View)localObject, new ab()
          {
            public bg a(View paramAnonymousView, bg paramAnonymousbg)
            {
              int i = paramAnonymousbg.b();
              int j = k.c(k.this, i);
              bg localbg = paramAnonymousbg;
              if (i != j) {
                localbg = paramAnonymousbg.a(paramAnonymousbg.a(), j, paramAnonymousbg.c(), paramAnonymousbg.d());
              }
              return ai.a(paramAnonymousView, localbg);
            }
          });
          break;
        }
        label479:
        ((h)localObject).setOnFitSystemWindowsListener(new h.a()
        {
          public void a(Rect paramAnonymousRect)
          {
            top = k.c(k.this, top);
          }
        });
        continue;
      }
      if (r == null) {
        x = ((TextView)((ViewGroup)localObject).findViewById(a.f.title));
      }
      r.b((View)localObject);
      ViewGroup localViewGroup = (ViewGroup)b.findViewById(16908290);
      ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)((ViewGroup)localObject).findViewById(a.f.action_bar_activity_content);
      while (localViewGroup.getChildCount() > 0)
      {
        View localView = localViewGroup.getChildAt(0);
        localViewGroup.removeViewAt(0);
        localContentFrameLayout.addView(localView);
      }
      b.setContentView((View)localObject);
      localViewGroup.setId(-1);
      localContentFrameLayout.setId(16908290);
      if ((localViewGroup instanceof FrameLayout)) {
        ((FrameLayout)localViewGroup).setForeground(null);
      }
      return (ViewGroup)localObject;
      label614:
      localObject = null;
    }
  }
  
  private void s()
  {
    ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)w.findViewById(16908290);
    localContentFrameLayout.a(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), v.getPaddingBottom());
    TypedArray localTypedArray = a.obtainStyledAttributes(a.k.Theme);
    localTypedArray.getValue(a.k.Theme_windowMinWidthMajor, localContentFrameLayout.getMinWidthMajor());
    localTypedArray.getValue(a.k.Theme_windowMinWidthMinor, localContentFrameLayout.getMinWidthMinor());
    if (localTypedArray.hasValue(a.k.Theme_windowFixedWidthMajor)) {
      localTypedArray.getValue(a.k.Theme_windowFixedWidthMajor, localContentFrameLayout.getFixedWidthMajor());
    }
    if (localTypedArray.hasValue(a.k.Theme_windowFixedWidthMinor)) {
      localTypedArray.getValue(a.k.Theme_windowFixedWidthMinor, localContentFrameLayout.getFixedWidthMinor());
    }
    if (localTypedArray.hasValue(a.k.Theme_windowFixedHeightMajor)) {
      localTypedArray.getValue(a.k.Theme_windowFixedHeightMajor, localContentFrameLayout.getFixedHeightMajor());
    }
    if (localTypedArray.hasValue(a.k.Theme_windowFixedHeightMinor)) {
      localTypedArray.getValue(a.k.Theme_windowFixedHeightMinor, localContentFrameLayout.getFixedHeightMinor());
    }
    localTypedArray.recycle();
    localContentFrameLayout.requestLayout();
  }
  
  private void t()
  {
    if (q != null) {
      q.b();
    }
  }
  
  private void u()
  {
    if (u) {
      throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }
  }
  
  public final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = b(paramView, paramString, paramContext, paramAttributeSet);
    if (localView != null) {
      return localView;
    }
    return c(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public com.yelp.android.r.a a(com.yelp.android.r.a.a parama)
  {
    if (parama == null) {
      throw new IllegalArgumentException("ActionMode callback can not be null.");
    }
    if (m != null) {
      m.c();
    }
    parama = new b(parama);
    ActionBar localActionBar = a();
    if (localActionBar != null)
    {
      m = localActionBar.a(parama);
      if ((m != null) && (e != null)) {
        e.onSupportActionModeStarted(m);
      }
    }
    if (m == null) {
      m = b(parama);
    }
    return m;
  }
  
  public void a(int paramInt)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)w.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(a).inflate(paramInt, localViewGroup);
    c.onContentChanged();
  }
  
  void a(int paramInt, Menu paramMenu)
  {
    if (paramInt == 108)
    {
      paramMenu = a();
      if (paramMenu != null) {
        paramMenu.h(false);
      }
    }
    do
    {
      do
      {
        return;
      } while (paramInt != 0);
      paramMenu = a(paramInt, true);
    } while (!o);
    a(paramMenu, false);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((h) && (u))
    {
      ActionBar localActionBar = a();
      if (localActionBar != null) {
        localActionBar.a(paramConfiguration);
      }
    }
  }
  
  public void a(Bundle paramBundle)
  {
    v = ((ViewGroup)b.getDecorView());
    if (((c instanceof Activity)) && (s.b((Activity)c) != null))
    {
      paramBundle = j();
      if (paramBundle == null) {
        H = true;
      }
    }
    else
    {
      return;
    }
    paramBundle.f(true);
  }
  
  public void a(f paramf)
  {
    a(paramf, true);
  }
  
  public void a(Toolbar paramToolbar)
  {
    if (!(c instanceof Activity)) {
      return;
    }
    if ((a() instanceof com.yelp.android.m.e)) {
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }
    g = null;
    paramToolbar = new d(paramToolbar, ((Activity)a).getTitle(), d);
    f = paramToolbar;
    b.setCallback(paramToolbar.i());
    paramToolbar.g();
  }
  
  public void a(View paramView)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)w.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    c.onContentChanged();
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)w.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  void a(ViewGroup paramViewGroup) {}
  
  boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = a();
    if ((localObject != null) && (((ActionBar)localObject).a(paramInt, paramKeyEvent))) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((D == null) || (!a(D, paramKeyEvent.getKeyCode(), paramKeyEvent, 1))) {
          break;
        }
      } while (D == null);
      D.n = true;
      return true;
      if (D != null) {
        break;
      }
      localObject = a(0, true);
      b((d)localObject, paramKeyEvent);
      bool = a((d)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      m = false;
    } while (bool);
    return false;
  }
  
  public boolean a(f paramf, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = n();
    if ((localCallback != null) && (!m()))
    {
      paramf = a(paramf.p());
      if (paramf != null) {
        return localCallback.onMenuItemSelected(a, paramMenuItem);
      }
    }
    return false;
  }
  
  boolean a(KeyEvent paramKeyEvent)
  {
    int i = 1;
    if ((paramKeyEvent.getKeyCode() == 82) && (c.dispatchKeyEvent(paramKeyEvent))) {
      return true;
    }
    int j = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() == 0) {}
    while (i != 0)
    {
      return c(j, paramKeyEvent);
      i = 0;
    }
    return b(j, paramKeyEvent);
  }
  
  View b(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((c instanceof LayoutInflater.Factory))
    {
      paramView = ((LayoutInflater.Factory)c).onCreateView(paramString, paramContext, paramAttributeSet);
      if (paramView != null) {
        return paramView;
      }
    }
    return null;
  }
  
  com.yelp.android.r.a b(com.yelp.android.r.a.a parama)
  {
    t();
    if (m != null) {
      m.c();
    }
    b localb = new b(parama);
    if ((e != null) && (!m())) {}
    for (;;)
    {
      try
      {
        com.yelp.android.r.a locala = e.onWindowStartingSupportActionMode(localb);
        if (locala != null)
        {
          m = locala;
          if ((m != null) && (e != null)) {
            e.onSupportActionModeStarted(m);
          }
          return m;
        }
      }
      catch (AbstractMethodError localAbstractMethodError)
      {
        localObject1 = null;
        continue;
        Object localObject2;
        if (n == null)
        {
          if (!k) {
            continue;
          }
          localObject2 = new TypedValue();
          localObject1 = a.getTheme();
          ((Resources.Theme)localObject1).resolveAttribute(com.yelp.android.j.a.a.actionBarTheme, (TypedValue)localObject2, true);
          if (resourceId != 0)
          {
            Resources.Theme localTheme = a.getResources().newTheme();
            localTheme.setTo((Resources.Theme)localObject1);
            localTheme.applyStyle(resourceId, true);
            localObject1 = new b(a, 0);
            ((Context)localObject1).getTheme().setTo(localTheme);
            n = new ActionBarContextView((Context)localObject1);
            o = new PopupWindow((Context)localObject1, null, com.yelp.android.j.a.a.actionModePopupWindowStyle);
            p.a(o, 2);
            o.setContentView(n);
            o.setWidth(-1);
            ((Context)localObject1).getTheme().resolveAttribute(com.yelp.android.j.a.a.actionBarSize, (TypedValue)localObject2, true);
            int i = TypedValue.complexToDimensionPixelSize(data, ((Context)localObject1).getResources().getDisplayMetrics());
            n.setContentHeight(i);
            o.setHeight(-2);
            p = new Runnable()
            {
              public void run()
              {
                o.showAtLocation(n, 55, 0, 0);
                k.b(k.this);
                ai.c(n, 0.0F);
                q = ai.s(n).a(1.0F);
                q.a(new be()
                {
                  public void a(View paramAnonymous2View)
                  {
                    n.setVisibility(0);
                  }
                  
                  public void b(View paramAnonymous2View)
                  {
                    ai.c(n, 1.0F);
                    q.a(null);
                    q = null;
                  }
                });
              }
            };
          }
        }
        else
        {
          if (n == null) {
            continue;
          }
          t();
          n.c();
          localObject1 = n.getContext();
          localObject2 = n;
          if (o != null) {
            continue;
          }
          bool = true;
          localObject1 = new c((Context)localObject1, (ActionBarContextView)localObject2, localb, bool);
          if (!parama.a((com.yelp.android.r.a)localObject1, ((com.yelp.android.r.a)localObject1).b())) {
            continue;
          }
          ((com.yelp.android.r.a)localObject1).d();
          n.a((com.yelp.android.r.a)localObject1);
          m = ((com.yelp.android.r.a)localObject1);
          ai.c(n, 0.0F);
          q = ai.s(n).a(1.0F);
          q.a(new be()
          {
            public void a(View paramAnonymousView)
            {
              n.setVisibility(0);
              n.sendAccessibilityEvent(32);
              if (n.getParent() != null) {
                ai.w((View)n.getParent());
              }
            }
            
            public void b(View paramAnonymousView)
            {
              ai.c(n, 1.0F);
              q.a(null);
              q = null;
            }
          });
          if (o == null) {
            continue;
          }
          b.getDecorView().post(p);
          continue;
        }
        localObject1 = a;
        continue;
        localObject1 = (ViewStubCompat)w.findViewById(a.f.action_mode_bar_stub);
        if (localObject1 == null) {
          continue;
        }
        ((ViewStubCompat)localObject1).setLayoutInflater(LayoutInflater.from(k()));
        n = ((ActionBarContextView)((ViewStubCompat)localObject1).a());
        continue;
        boolean bool = false;
        continue;
        m = null;
        continue;
      }
      Object localObject1 = null;
    }
  }
  
  public void b(Bundle paramBundle)
  {
    q();
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    q();
    ((ViewGroup)w.findViewById(16908290)).addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  void b(CharSequence paramCharSequence)
  {
    if (r != null) {
      r.setWindowTitle(paramCharSequence);
    }
    do
    {
      return;
      if (j() != null)
      {
        j().b(paramCharSequence);
        return;
      }
    } while (x == null);
    x.setText(paramCharSequence);
  }
  
  public boolean b(int paramInt)
  {
    paramInt = g(paramInt);
    if ((l) && (paramInt == 108)) {
      return false;
    }
    if ((h) && (paramInt == 1)) {
      h = false;
    }
    switch (paramInt)
    {
    default: 
      return b.requestFeature(paramInt);
    case 108: 
      u();
      h = true;
      return true;
    case 109: 
      u();
      i = true;
      return true;
    case 10: 
      u();
      j = true;
      return true;
    case 2: 
      u();
      z = true;
      return true;
    case 5: 
      u();
      A = true;
      return true;
    }
    u();
    l = true;
    return true;
  }
  
  boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    }
    do
    {
      return false;
      e(0, paramKeyEvent);
      return true;
      paramKeyEvent = a(0, false);
      if ((paramKeyEvent != null) && (o))
      {
        a(paramKeyEvent, true);
        return true;
      }
    } while (!p());
    return true;
  }
  
  boolean b(int paramInt, Menu paramMenu)
  {
    if (paramInt == 108)
    {
      paramMenu = a();
      if (paramMenu != null) {
        paramMenu.h(true);
      }
      return true;
    }
    return false;
  }
  
  public View c(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    boolean bool1;
    if (Build.VERSION.SDK_INT < 21)
    {
      bool1 = true;
      if (K == null) {
        K = new com.yelp.android.m.a();
      }
      if ((!bool1) || (!u) || (!a((ViewParent)paramView))) {
        break label79;
      }
    }
    label79:
    for (boolean bool2 = true;; bool2 = false)
    {
      return K.a(paramView, paramString, paramContext, paramAttributeSet, bool2, bool1, true);
      bool1 = false;
      break;
    }
  }
  
  public void c()
  {
    ActionBar localActionBar = a();
    if (localActionBar != null) {
      localActionBar.g(false);
    }
  }
  
  boolean c(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT < 11) {
        a(paramInt, paramKeyEvent);
      }
      return false;
      d(0, paramKeyEvent);
    }
  }
  
  public void d()
  {
    ActionBar localActionBar = a();
    if (localActionBar != null) {
      localActionBar.g(true);
    }
  }
  
  public void e()
  {
    ActionBar localActionBar = a();
    if ((localActionBar != null) && (localActionBar.g())) {
      return;
    }
    d(0);
  }
  
  public void h()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(a);
    if (localLayoutInflater.getFactory() == null)
    {
      j.a(localLayoutInflater, this);
      return;
    }
    Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
  }
  
  public void i()
  {
    q();
    if ((!h) || (f != null)) {}
    for (;;)
    {
      return;
      if ((c instanceof Activity)) {
        f = new com.yelp.android.m.e((Activity)c, i);
      }
      while (f != null)
      {
        f.f(H);
        return;
        if ((c instanceof Dialog)) {
          f = new com.yelp.android.m.e((Dialog)c);
        }
      }
    }
  }
  
  boolean p()
  {
    if (m != null) {
      m.c();
    }
    ActionBar localActionBar;
    do
    {
      return true;
      localActionBar = a();
    } while ((localActionBar != null) && (localActionBar.h()));
    return false;
  }
  
  private final class a
    implements l.a
  {
    private a() {}
    
    public void a(f paramf, boolean paramBoolean)
    {
      k.a(k.this, paramf);
    }
    
    public boolean a(f paramf)
    {
      Window.Callback localCallback = n();
      if (localCallback != null) {
        localCallback.onMenuOpened(108, paramf);
      }
      return true;
    }
  }
  
  class b
    implements com.yelp.android.r.a.a
  {
    private com.yelp.android.r.a.a b;
    
    public b(com.yelp.android.r.a.a parama)
    {
      b = parama;
    }
    
    public void a(com.yelp.android.r.a parama)
    {
      b.a(parama);
      if (o != null) {
        b.getDecorView().removeCallbacks(p);
      }
      if (n != null)
      {
        k.b(k.this);
        q = ai.s(n).a(0.0F);
        q.a(new be()
        {
          public void b(View paramAnonymousView)
          {
            n.setVisibility(8);
            if (o != null) {
              o.dismiss();
            }
            for (;;)
            {
              n.removeAllViews();
              q.a(null);
              q = null;
              return;
              if ((n.getParent() instanceof View)) {
                ai.w((View)n.getParent());
              }
            }
          }
        });
      }
      if (e != null) {
        e.onSupportActionModeFinished(m);
      }
      m = null;
    }
    
    public boolean a(com.yelp.android.r.a parama, Menu paramMenu)
    {
      return b.a(parama, paramMenu);
    }
    
    public boolean a(com.yelp.android.r.a parama, MenuItem paramMenuItem)
    {
      return b.a(parama, paramMenuItem);
    }
    
    public boolean b(com.yelp.android.r.a parama, Menu paramMenu)
    {
      return b.b(parama, paramMenu);
    }
  }
  
  private class c
    extends FrameLayout
  {
    public c(Context paramContext)
    {
      super();
    }
    
    private boolean a(int paramInt1, int paramInt2)
    {
      return (paramInt1 < -5) || (paramInt2 < -5) || (paramInt1 > getWidth() + 5) || (paramInt2 > getHeight() + 5);
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      if ((paramMotionEvent.getAction() == 0) && (a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())))
      {
        k.d(k.this, 0);
        return true;
      }
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    
    public void setBackgroundResource(int paramInt)
    {
      setBackgroundDrawable(o.a(getContext(), paramInt));
    }
  }
  
  private static final class d
  {
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    ViewGroup g;
    View h;
    View i;
    f j;
    android.support.v7.internal.view.menu.e k;
    Context l;
    boolean m;
    boolean n;
    boolean o;
    public boolean p;
    boolean q;
    boolean r;
    Bundle s;
    
    d(int paramInt)
    {
      a = paramInt;
      q = false;
    }
    
    m a(l.a parama)
    {
      if (j == null) {
        return null;
      }
      if (k == null)
      {
        k = new android.support.v7.internal.view.menu.e(l, a.h.abc_list_menu_item_layout);
        k.a(parama);
        j.a(k);
      }
      return k.a(g);
    }
    
    void a(Context paramContext)
    {
      TypedValue localTypedValue = new TypedValue();
      Resources.Theme localTheme = paramContext.getResources().newTheme();
      localTheme.setTo(paramContext.getTheme());
      localTheme.resolveAttribute(com.yelp.android.j.a.a.actionBarPopupTheme, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      }
      localTheme.resolveAttribute(com.yelp.android.j.a.a.panelMenuListTheme, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      }
      for (;;)
      {
        paramContext = new b(paramContext, 0);
        paramContext.getTheme().setTo(localTheme);
        l = paramContext;
        paramContext = paramContext.obtainStyledAttributes(a.k.Theme);
        b = paramContext.getResourceId(a.k.Theme_panelBackground, 0);
        f = paramContext.getResourceId(a.k.Theme_android_windowAnimationStyle, 0);
        paramContext.recycle();
        return;
        localTheme.applyStyle(a.j.Theme_AppCompat_CompactMenu, true);
      }
    }
    
    void a(f paramf)
    {
      if (paramf == j) {}
      do
      {
        return;
        if (j != null) {
          j.b(k);
        }
        j = paramf;
      } while ((paramf == null) || (k == null));
      paramf.a(k);
    }
    
    public boolean a()
    {
      boolean bool2 = true;
      boolean bool1;
      if (h == null) {
        bool1 = false;
      }
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (i != null);
        bool1 = bool2;
      } while (k.d().getCount() > 0);
      return false;
    }
  }
  
  private final class e
    implements l.a
  {
    private e() {}
    
    public void a(f paramf, boolean paramBoolean)
    {
      f localf = paramf.p();
      if (localf != paramf) {}
      for (int i = 1;; i = 0)
      {
        k localk = k.this;
        if (i != 0) {
          paramf = localf;
        }
        paramf = k.a(localk, paramf);
        if (paramf != null)
        {
          if (i == 0) {
            break;
          }
          k.a(k.this, a, paramf, localf);
          k.a(k.this, paramf, true);
        }
        return;
      }
      k.a(k.this, paramf, paramBoolean);
    }
    
    public boolean a(f paramf)
    {
      if ((paramf == null) && (h))
      {
        Window.Callback localCallback = n();
        if ((localCallback != null) && (!m())) {
          localCallback.onMenuOpened(108, paramf);
        }
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */