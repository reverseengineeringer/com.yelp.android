package android.support.v7.app;

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
import android.support.v4.app.NavUtils;
import android.support.v4.view.ce;
import android.support.v4.view.cx;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.TintAutoCompleteTextView;
import android.support.v7.internal.widget.TintButton;
import android.support.v7.internal.widget.TintCheckBox;
import android.support.v7.internal.widget.TintCheckedTextView;
import android.support.v7.internal.widget.TintEditText;
import android.support.v7.internal.widget.TintMultiAutoCompleteTextView;
import android.support.v7.internal.widget.TintRadioButton;
import android.support.v7.internal.widget.TintRatingBar;
import android.support.v7.internal.widget.TintSpinner;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.ag;
import android.support.v7.internal.widget.aj;
import android.support.v7.internal.widget.bm;
import android.support.v7.widget.Toolbar;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.yelp.android.g.d;

class ActionBarActivityDelegateBase
  extends c
  implements android.support.v7.internal.view.menu.j
{
  private boolean A;
  private Rect B;
  private Rect C;
  com.yelp.android.m.a g;
  ActionBarContextView h;
  PopupWindow i;
  Runnable j;
  private ag k;
  private j l;
  private n m;
  private boolean n;
  private ViewGroup o;
  private ViewGroup p;
  private View q;
  private CharSequence r;
  private boolean s;
  private boolean t;
  private boolean u;
  private ActionBarActivityDelegateBase.PanelFeatureState[] v;
  private ActionBarActivityDelegateBase.PanelFeatureState w;
  private boolean x;
  private int y;
  private final Runnable z = new f(this);
  
  ActionBarActivityDelegateBase(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }
  
  private ActionBarActivityDelegateBase.PanelFeatureState a(int paramInt, boolean paramBoolean)
  {
    Object localObject2 = v;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new ActionBarActivityDelegateBase.PanelFeatureState[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      v = ((ActionBarActivityDelegateBase.PanelFeatureState[])localObject1);
    }
    localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      localObject2 = new ActionBarActivityDelegateBase.PanelFeatureState(paramInt);
      localObject1[paramInt] = localObject2;
      return (ActionBarActivityDelegateBase.PanelFeatureState)localObject2;
    }
    return (ActionBarActivityDelegateBase.PanelFeatureState)localObject2;
  }
  
  private ActionBarActivityDelegateBase.PanelFeatureState a(Menu paramMenu)
  {
    ActionBarActivityDelegateBase.PanelFeatureState[] arrayOfPanelFeatureState = v;
    int i1;
    int i2;
    if (arrayOfPanelFeatureState != null)
    {
      i1 = arrayOfPanelFeatureState.length;
      i2 = 0;
    }
    for (;;)
    {
      if (i2 >= i1) {
        break label57;
      }
      ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = arrayOfPanelFeatureState[i2];
      if ((localPanelFeatureState != null) && (j == paramMenu))
      {
        return localPanelFeatureState;
        i1 = 0;
        break;
      }
      i2 += 1;
    }
    label57:
    return null;
  }
  
  private void a(int paramInt, ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState, Menu paramMenu)
  {
    Object localObject1 = paramPanelFeatureState;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = paramPanelFeatureState;
      if (paramPanelFeatureState == null)
      {
        localPanelFeatureState = paramPanelFeatureState;
        if (paramInt >= 0)
        {
          localPanelFeatureState = paramPanelFeatureState;
          if (paramInt < v.length) {
            localPanelFeatureState = v[paramInt];
          }
        }
      }
      localObject1 = localPanelFeatureState;
      localObject2 = paramMenu;
      if (localPanelFeatureState != null)
      {
        localObject2 = j;
        localObject1 = localPanelFeatureState;
      }
    }
    if ((localObject1 != null) && (!o)) {
      return;
    }
    n().b(paramInt, (Menu)localObject2);
  }
  
  private void a(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    int i3 = -1;
    if ((o) || (p())) {}
    Object localObject;
    int i1;
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
            i1 = 1;
            if (getApplicationInfotargetSdkVersion < 11) {
              break label117;
            }
          }
          for (int i2 = 1;; i2 = 0)
          {
            if ((i1 != 0) && (i2 != 0)) {
              break label121;
            }
            localObject = n();
            if ((localObject == null) || (((com.yelp.android.i.h)localObject).c(a, j))) {
              break label123;
            }
            a(paramPanelFeatureState, true);
            return;
            i1 = 0;
            break;
          }
        }
        localObject = (WindowManager)a.getSystemService("window");
      } while ((localObject == null) || (!b(paramPanelFeatureState, paramKeyEvent)));
      if ((g != null) && (!q)) {
        break label398;
      }
      if (g != null) {
        break;
      }
    } while ((!a(paramPanelFeatureState)) || (g == null));
    label187:
    if ((c(paramPanelFeatureState)) && (paramPanelFeatureState.a()))
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
      i1 = b;
      g.setBackgroundResource(i1);
      ViewParent localViewParent = h.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(h);
      }
      g.addView(h, paramKeyEvent);
      if (!h.hasFocus()) {
        h.requestFocus();
      }
      i1 = -2;
      for (;;)
      {
        n = false;
        paramKeyEvent = new WindowManager.LayoutParams(i1, -2, d, e, 1002, 8519680, -3);
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
            i1 = i3;
            if (width == -1) {
              continue;
            }
          }
        }
        i1 = -2;
      }
    }
  }
  
  private void a(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState, boolean paramBoolean)
  {
    if ((paramBoolean) && (a == 0) && (k != null) && (k.e())) {
      b(j);
    }
    do
    {
      return;
      WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
      if ((localWindowManager != null) && (o))
      {
        if (g != null) {
          localWindowManager.removeView(g);
        }
        if (paramBoolean) {
          a(a, paramPanelFeatureState, null);
        }
      }
      m = false;
      n = false;
      o = false;
      h = null;
      q = true;
    } while (w != paramPanelFeatureState);
    w = null;
  }
  
  private void a(android.support.v7.internal.view.menu.i parami, boolean paramBoolean)
  {
    if ((k != null) && (k.d()) && ((!cx.b(ViewConfiguration.get(a))) || (k.f())))
    {
      parami = n();
      if ((!k.e()) || (!paramBoolean)) {
        if ((parami != null) && (!p()))
        {
          if ((x) && ((y & 0x1) != 0))
          {
            o.removeCallbacks(z);
            z.run();
          }
          ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = a(0, true);
          if ((j != null) && (!r) && (parami.a(0, i, j)))
          {
            parami.c(8, j);
            k.g();
          }
        }
      }
      do
      {
        return;
        k.h();
      } while (p());
      parami.b(8, a0j);
      return;
    }
    parami = a(0, true);
    q = true;
    a(parami, false);
    a(parami, null);
  }
  
  private boolean a(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState)
  {
    paramPanelFeatureState.a(m());
    g = new l(this, l);
    c = 81;
    return true;
  }
  
  private void b(android.support.v7.internal.view.menu.i parami)
  {
    if (u) {
      return;
    }
    u = true;
    k.j();
    com.yelp.android.i.h localh = n();
    if ((localh != null) && (!p())) {
      localh.b(8, parami);
    }
    u = false;
  }
  
  private boolean b(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState)
  {
    ActionBarActivity localActionBarActivity = a;
    TypedValue localTypedValue;
    Resources.Theme localTheme;
    Object localObject1;
    if (((a == 0) || (a == 8)) && (k != null))
    {
      localTypedValue = new TypedValue();
      localTheme = localActionBarActivity.getTheme();
      localTheme.resolveAttribute(com.yelp.android.g.b.actionBarTheme, localTypedValue, true);
      localObject1 = null;
      if (resourceId != 0)
      {
        localObject1 = localActionBarActivity.getResources().newTheme();
        ((Resources.Theme)localObject1).setTo(localTheme);
        ((Resources.Theme)localObject1).applyStyle(resourceId, true);
        ((Resources.Theme)localObject1).resolveAttribute(com.yelp.android.g.b.actionBarWidgetTheme, localTypedValue, true);
        Object localObject2 = localObject1;
        if (resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localActionBarActivity.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(resourceId, true);
        }
        if (localObject2 == null) {
          break label203;
        }
        localObject1 = new ContextThemeWrapper(localActionBarActivity, 0);
        ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
      }
    }
    for (;;)
    {
      localObject1 = new android.support.v7.internal.view.menu.i((Context)localObject1);
      ((android.support.v7.internal.view.menu.i)localObject1).a(this);
      paramPanelFeatureState.a((android.support.v7.internal.view.menu.i)localObject1);
      return true;
      localTheme.resolveAttribute(com.yelp.android.g.b.actionBarWidgetTheme, localTypedValue, true);
      break;
      label203:
      localObject1 = localActionBarActivity;
    }
  }
  
  private boolean b(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if (p()) {
      return false;
    }
    if (m) {
      return true;
    }
    if ((w != null) && (w != paramPanelFeatureState)) {
      a(w, false);
    }
    com.yelp.android.i.h localh = n();
    if (localh != null) {
      i = localh.a(a);
    }
    if ((a == 0) || (a == 8)) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (k != null)) {
        k.i();
      }
      if (i != null) {
        break label396;
      }
      if ((j != null) && (!r)) {
        break label266;
      }
      if ((j == null) && ((!b(paramPanelFeatureState)) || (j == null))) {
        break;
      }
      if ((i1 != 0) && (k != null))
      {
        if (l == null) {
          l = new j(this, null);
        }
        k.a(j, l);
      }
      j.g();
      if (n().a(a, j)) {
        break label261;
      }
      paramPanelFeatureState.a(null);
      if ((i1 == 0) || (k == null)) {
        break;
      }
      k.a(null, l);
      return false;
    }
    label261:
    r = false;
    label266:
    j.g();
    if (s != null)
    {
      j.b(s);
      s = null;
    }
    if (!localh.a(0, i, j))
    {
      if ((i1 != 0) && (k != null)) {
        k.a(null, l);
      }
      j.h();
      return false;
    }
    if (paramKeyEvent != null)
    {
      i1 = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(i1).getKeyboardType() == 1) {
        break label418;
      }
    }
    label396:
    label418:
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      j.setQwertyMode(p);
      j.h();
      m = true;
      n = false;
      w = paramPanelFeatureState;
      return true;
      i1 = -1;
      break;
    }
  }
  
  private boolean c(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState)
  {
    if (i != null)
    {
      h = i;
      return true;
    }
    if (j == null) {
      return false;
    }
    if (m == null) {
      m = new n(this, null);
    }
    h = ((View)paramPanelFeatureState.a(m));
    if (h != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private void d(int paramInt)
  {
    a(a(paramInt, true), true);
  }
  
  private boolean d(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = a(paramInt, true);
      if (!o) {
        return b(localPanelFeatureState, paramKeyEvent);
      }
    }
    return false;
  }
  
  private void e(int paramInt)
  {
    y |= 1 << paramInt;
    if ((!x) && (o != null))
    {
      ce.a(o, z);
      x = true;
    }
  }
  
  private void e(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool2 = true;
    if (g != null) {
      return;
    }
    ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = a(paramInt, true);
    if ((paramInt == 0) && (k != null) && (k.d()) && (!cx.b(ViewConfiguration.get(a)))) {
      if (!k.e())
      {
        if ((p()) || (!b(localPanelFeatureState, paramKeyEvent))) {
          break label225;
        }
        bool1 = k.g();
      }
    }
    for (;;)
    {
      label94:
      if (bool1)
      {
        paramKeyEvent = (AudioManager)a.getSystemService("audio");
        if (paramKeyEvent != null)
        {
          paramKeyEvent.playSoundEffect(0);
          return;
          bool1 = k.h();
          continue;
          if ((o) || (n))
          {
            bool1 = o;
            a(localPanelFeatureState, true);
            continue;
          }
          if (!m) {
            break label225;
          }
          if (!r) {
            break label230;
          }
          m = false;
        }
      }
    }
    label225:
    label230:
    for (boolean bool1 = b(localPanelFeatureState, paramKeyEvent);; bool1 = true)
    {
      if (bool1)
      {
        a(localPanelFeatureState, paramKeyEvent);
        bool1 = bool2;
        break label94;
        Log.w("ActionBarActivityDelegateBase", "Couldn't get audio manager");
        return;
      }
      bool1 = false;
      break label94;
      break;
    }
  }
  
  private void f(int paramInt)
  {
    ActionBarActivityDelegateBase.PanelFeatureState localPanelFeatureState = a(paramInt, true);
    if (j != null)
    {
      Bundle localBundle = new Bundle();
      j.a(localBundle);
      if (localBundle.size() > 0) {
        s = localBundle;
      }
      j.g();
      j.clear();
    }
    r = true;
    q = true;
    if (((paramInt == 8) || (paramInt == 0)) && (k != null))
    {
      localPanelFeatureState = a(0, false);
      if (localPanelFeatureState != null)
      {
        m = false;
        b(localPanelFeatureState, null);
      }
    }
  }
  
  private int g(int paramInt)
  {
    int i2 = 1;
    int i3 = 1;
    int i4 = 0;
    Object localObject1;
    Object localObject2;
    int i1;
    if ((h != null) && ((h.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)h.getLayoutParams();
      if (h.isShown())
      {
        if (B == null)
        {
          B = new Rect();
          C = new Rect();
        }
        localObject2 = B;
        Rect localRect = C;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        bm.a(p, (Rect)localObject2, localRect);
        if (top == 0)
        {
          i1 = paramInt;
          if (topMargin == i1) {
            break label355;
          }
          topMargin = paramInt;
          if (q != null) {
            break label279;
          }
          q = new View(a);
          q.setBackgroundColor(a.getResources().getColor(d.abc_input_method_navigation_guard));
          p.addView(q, -1, new ViewGroup.LayoutParams(-1, paramInt));
          i1 = 1;
          label201:
          if (q == null) {
            break label317;
          }
          label208:
          i2 = paramInt;
          if (!d)
          {
            i2 = paramInt;
            if (i3 != 0) {
              i2 = 0;
            }
          }
          paramInt = i2;
          i2 = i1;
          i1 = i3;
          label233:
          if (i2 != 0) {
            h.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          }
        }
      }
    }
    for (;;)
    {
      if (q != null)
      {
        localObject1 = q;
        if (i1 == 0) {
          break label342;
        }
      }
      label279:
      label317:
      label342:
      for (i1 = i4;; i1 = 8)
      {
        ((View)localObject1).setVisibility(i1);
        return paramInt;
        i1 = 0;
        break;
        localObject2 = q.getLayoutParams();
        if (height != paramInt)
        {
          height = paramInt;
          q.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        i1 = 1;
        break label201;
        i3 = 0;
        break label208;
        if (topMargin == 0) {
          break label348;
        }
        topMargin = 0;
        i1 = 0;
        break label233;
      }
      label348:
      i2 = 0;
      i1 = 0;
      break label233;
      label355:
      i1 = 0;
      break label201;
      i1 = 0;
    }
  }
  
  private void s()
  {
    Object localObject2 = null;
    DisplayMetrics localDisplayMetrics = null;
    TypedArray localTypedArray = a.obtainStyledAttributes(com.yelp.android.g.l.Theme);
    TypedValue localTypedValue1;
    if (localTypedArray.hasValue(com.yelp.android.g.l.Theme_windowFixedWidthMajor)) {
      if (0 == 0)
      {
        localTypedValue1 = new TypedValue();
        localTypedArray.getValue(com.yelp.android.g.l.Theme_windowFixedWidthMajor, localTypedValue1);
      }
    }
    for (;;)
    {
      TypedValue localTypedValue2;
      if (localTypedArray.hasValue(com.yelp.android.g.l.Theme_windowFixedWidthMinor)) {
        if (0 == 0)
        {
          localTypedValue2 = new TypedValue();
          localTypedArray.getValue(com.yelp.android.g.l.Theme_windowFixedWidthMinor, localTypedValue2);
        }
      }
      for (;;)
      {
        Object localObject1;
        if (localTypedArray.hasValue(com.yelp.android.g.l.Theme_windowFixedHeightMajor)) {
          if (0 == 0)
          {
            localObject1 = new TypedValue();
            localTypedArray.getValue(com.yelp.android.g.l.Theme_windowFixedHeightMajor, (TypedValue)localObject1);
          }
        }
        for (;;)
        {
          if (localTypedArray.hasValue(com.yelp.android.g.l.Theme_windowFixedHeightMinor))
          {
            localObject2 = localDisplayMetrics;
            if (0 == 0) {
              localObject2 = new TypedValue();
            }
            localTypedArray.getValue(com.yelp.android.g.l.Theme_windowFixedHeightMinor, (TypedValue)localObject2);
          }
          localDisplayMetrics = a.getResources().getDisplayMetrics();
          int i2;
          label191:
          int i1;
          if (widthPixels < heightPixels)
          {
            i2 = 1;
            if (i2 == 0) {
              break label290;
            }
            if ((localTypedValue2 == null) || (type == 0)) {
              break label372;
            }
            if (type != 5) {
              break label296;
            }
            i1 = (int)localTypedValue2.getDimension(localDisplayMetrics);
          }
          for (;;)
          {
            label222:
            if (i2 != 0)
            {
              label226:
              if ((localObject1 == null) || (type == 0)) {
                break label367;
              }
              if (type != 5) {
                break label335;
              }
              i2 = (int)((TypedValue)localObject1).getDimension(localDisplayMetrics);
            }
            for (;;)
            {
              if ((i1 != -1) || (i2 != -1)) {
                a.getWindow().setLayout(i1, i2);
              }
              localTypedArray.recycle();
              return;
              i2 = 0;
              break;
              label290:
              localTypedValue2 = localTypedValue1;
              break label191;
              label296:
              if (type != 6) {
                break label372;
              }
              i1 = (int)localTypedValue2.getFraction(widthPixels, widthPixels);
              break label222;
              localObject1 = localObject2;
              break label226;
              label335:
              if (type == 6) {
                i2 = (int)((TypedValue)localObject1).getFraction(heightPixels, heightPixels);
              } else {
                label367:
                i2 = -1;
              }
            }
            label372:
            i1 = -1;
          }
          localObject1 = null;
          break;
          localObject1 = null;
        }
        localTypedValue2 = null;
        break;
        localTypedValue2 = null;
      }
      localTypedValue1 = null;
      break;
      localTypedValue1 = null;
    }
  }
  
  private void t()
  {
    if (n) {
      throw new AndroidRuntimeException("supportRequestWindowFeature() must be called before adding content");
    }
  }
  
  public ActionBar a()
  {
    q();
    com.yelp.android.i.i locali = new com.yelp.android.i.i(a, c);
    locali.f(A);
    return locali;
  }
  
  View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    int i1;
    if (Build.VERSION.SDK_INT < 21)
    {
      i1 = -1;
      switch (paramString.hashCode())
      {
      }
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        return null;
        if (paramString.equals("EditText"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("Spinner"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("CheckBox"))
            {
              i1 = 2;
              continue;
              if (paramString.equals("RadioButton"))
              {
                i1 = 3;
                continue;
                if (paramString.equals("CheckedTextView"))
                {
                  i1 = 4;
                  continue;
                  if (paramString.equals("AutoCompleteTextView"))
                  {
                    i1 = 5;
                    continue;
                    if (paramString.equals("MultiAutoCompleteTextView"))
                    {
                      i1 = 6;
                      continue;
                      if (paramString.equals("RatingBar"))
                      {
                        i1 = 7;
                        continue;
                        if (paramString.equals("Button")) {
                          i1 = 8;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return new TintEditText(paramContext, paramAttributeSet);
    return new TintSpinner(paramContext, paramAttributeSet);
    return new TintCheckBox(paramContext, paramAttributeSet);
    return new TintRadioButton(paramContext, paramAttributeSet);
    return new TintCheckedTextView(paramContext, paramAttributeSet);
    return new TintAutoCompleteTextView(paramContext, paramAttributeSet);
    return new TintMultiAutoCompleteTextView(paramContext, paramAttributeSet);
    return new TintRatingBar(paramContext, paramAttributeSet);
    return new TintButton(paramContext, paramAttributeSet);
  }
  
  public com.yelp.android.m.a a(com.yelp.android.m.b paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("ActionMode callback can not be null.");
    }
    if (g != null) {
      g.c();
    }
    paramb = new k(this, paramb);
    ActionBar localActionBar = b();
    if (localActionBar != null)
    {
      g = localActionBar.a(paramb);
      if (g != null) {
        a.onSupportActionModeStarted(g);
      }
    }
    if (g == null) {
      g = b(paramb);
    }
    return g;
  }
  
  public void a(int paramInt)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    a.getLayoutInflater().inflate(paramInt, localViewGroup);
    a.onSupportContentChanged();
  }
  
  public void a(int paramInt, Menu paramMenu)
  {
    if (paramInt == 8)
    {
      paramMenu = b();
      if (paramMenu != null) {
        paramMenu.h(false);
      }
    }
    while (p()) {
      return;
    }
    a.superOnPanelClosed(paramInt, paramMenu);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if ((b) && (n))
    {
      ActionBar localActionBar = b();
      if (localActionBar != null) {
        localActionBar.a(paramConfiguration);
      }
    }
  }
  
  void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    o = ((ViewGroup)a.getWindow().getDecorView());
    if (NavUtils.getParentActivityName(a) != null)
    {
      paramBundle = c();
      if (paramBundle == null) {
        A = true;
      }
    }
    else
    {
      return;
    }
    paramBundle.f(true);
  }
  
  public void a(android.support.v7.internal.view.menu.i parami)
  {
    a(parami, true);
  }
  
  void a(Toolbar paramToolbar)
  {
    if ((b() instanceof com.yelp.android.i.i)) {
      throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }
    paramToolbar = new com.yelp.android.i.a(paramToolbar, a.getTitle(), a.getWindow(), f);
    a(paramToolbar);
    a(paramToolbar.i());
    paramToolbar.g();
  }
  
  public void a(View paramView)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    a.onSupportContentChanged();
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    q();
    ViewGroup localViewGroup = (ViewGroup)a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    a.onSupportContentChanged();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (k != null)
    {
      k.setWindowTitle(paramCharSequence);
      return;
    }
    if (b() != null)
    {
      b().b(paramCharSequence);
      return;
    }
    r = paramCharSequence;
  }
  
  void a(boolean paramBoolean) {}
  
  boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = b();
    if ((localObject != null) && (((ActionBar)localObject).a(paramInt, paramKeyEvent))) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if ((w == null) || (!a(w, paramKeyEvent.getKeyCode(), paramKeyEvent, 1))) {
          break;
        }
      } while (w == null);
      w.n = true;
      return true;
      if (w != null) {
        break;
      }
      localObject = a(0, true);
      b((ActionBarActivityDelegateBase.PanelFeatureState)localObject, paramKeyEvent);
      bool = a((ActionBarActivityDelegateBase.PanelFeatureState)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      m = false;
    } while (bool);
    return false;
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    if (paramInt != 0) {
      return n().a(paramInt, paramView, paramMenu);
    }
    return false;
  }
  
  final boolean a(ActionBarActivityDelegateBase.PanelFeatureState paramPanelFeatureState, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
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
            if (!b(paramPanelFeatureState, paramKeyEvent)) {}
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
    } while (k != null);
    a(paramPanelFeatureState, true);
    return bool1;
  }
  
  public boolean a(android.support.v7.internal.view.menu.i parami, MenuItem paramMenuItem)
  {
    com.yelp.android.i.h localh = n();
    if ((localh != null) && (!p()))
    {
      parami = a(parami.p());
      if (parami != null) {
        return localh.a(a, paramMenuItem);
      }
    }
    return false;
  }
  
  boolean a(KeyEvent paramKeyEvent)
  {
    int i2 = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() == 0) {}
    for (int i1 = 1; i1 != 0; i1 = 0) {
      return c(i2, paramKeyEvent);
    }
    return b(i2, paramKeyEvent);
  }
  
  com.yelp.android.m.a b(com.yelp.android.m.b paramb)
  {
    if (g != null) {
      g.c();
    }
    Object localObject1 = new k(this, paramb);
    Context localContext = m();
    Object localObject2;
    boolean bool;
    if (h == null)
    {
      if (e)
      {
        h = new ActionBarContextView(localContext);
        i = new PopupWindow(localContext, null, com.yelp.android.g.b.actionModePopupWindowStyle);
        i.setContentView(h);
        i.setWidth(-1);
        localObject2 = new TypedValue();
        a.getTheme().resolveAttribute(com.yelp.android.g.b.actionBarSize, (TypedValue)localObject2, true);
        int i1 = TypedValue.complexToDimensionPixelSize(data, a.getResources().getDisplayMetrics());
        h.setContentHeight(i1);
        i.setHeight(-2);
        j = new i(this);
      }
    }
    else if (h != null)
    {
      h.c();
      localObject2 = h;
      if (i != null) {
        break label389;
      }
      bool = true;
      label197:
      localObject1 = new com.yelp.android.l.b(localContext, (ActionBarContextView)localObject2, (com.yelp.android.m.b)localObject1, bool);
      if (!paramb.a((com.yelp.android.m.a)localObject1, ((com.yelp.android.m.a)localObject1).b())) {
        break label394;
      }
      ((com.yelp.android.m.a)localObject1).d();
      h.a((com.yelp.android.m.a)localObject1);
      h.setVisibility(0);
      g = ((com.yelp.android.m.a)localObject1);
      if (i != null) {
        a.getWindow().getDecorView().post(j);
      }
      h.sendAccessibilityEvent(32);
      if (h.getParent() != null) {
        ce.t((View)h.getParent());
      }
    }
    for (;;)
    {
      if ((g != null) && (a != null)) {
        a.onSupportActionModeStarted(g);
      }
      return g;
      localObject2 = (ViewStubCompat)a.findViewById(com.yelp.android.g.g.action_mode_bar_stub);
      if (localObject2 == null) {
        break;
      }
      ((ViewStubCompat)localObject2).setLayoutInflater(LayoutInflater.from(localContext));
      h = ((ActionBarContextView)((ViewStubCompat)localObject2).a());
      break;
      label389:
      bool = false;
      break label197;
      label394:
      g = null;
    }
  }
  
  void b(Bundle paramBundle)
  {
    q();
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    q();
    ((ViewGroup)a.findViewById(16908290)).addView(paramView, paramLayoutParams);
    a.onSupportContentChanged();
  }
  
  void b(boolean paramBoolean) {}
  
  public boolean b(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    case 4: 
    case 6: 
    case 7: 
    default: 
      return a.requestWindowFeature(paramInt);
    case 8: 
      t();
      b = true;
      return true;
    case 9: 
      t();
      c = true;
      return true;
    case 10: 
      t();
      d = true;
      return true;
    case 2: 
      t();
      s = true;
      return true;
    }
    t();
    t = true;
    return true;
  }
  
  protected boolean b(int paramInt, KeyEvent paramKeyEvent)
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
    } while ((paramKeyEvent == null) || (!o));
    a(paramKeyEvent, true);
    return true;
  }
  
  boolean b(int paramInt, Menu paramMenu)
  {
    if (paramInt == 8)
    {
      paramMenu = b();
      if (paramMenu != null) {
        paramMenu.h(true);
      }
      return true;
    }
    return a.superOnMenuOpened(paramInt, paramMenu);
  }
  
  void c(int paramInt) {}
  
  void c(boolean paramBoolean) {}
  
  protected boolean c(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 82)
    {
      d(0, paramKeyEvent);
      bool = true;
    }
    while (Build.VERSION.SDK_INT >= 11) {
      return bool;
    }
    return a(paramInt, paramKeyEvent);
  }
  
  public boolean c(int paramInt, Menu paramMenu)
  {
    if (paramInt != 0) {
      return n().a(paramInt, paramMenu);
    }
    return false;
  }
  
  public void e()
  {
    ActionBar localActionBar = b();
    if (localActionBar != null) {
      localActionBar.g(false);
    }
  }
  
  public void f()
  {
    ActionBar localActionBar = b();
    if (localActionBar != null) {
      localActionBar.g(true);
    }
  }
  
  public void g()
  {
    ActionBar localActionBar = b();
    if ((localActionBar != null) && (localActionBar.g())) {
      return;
    }
    e(0);
  }
  
  public boolean h()
  {
    if (g != null) {
      g.c();
    }
    ActionBar localActionBar;
    do
    {
      return true;
      localActionBar = b();
    } while ((localActionBar != null) && (localActionBar.h()));
    return false;
  }
  
  int k()
  {
    return com.yelp.android.g.b.homeAsUpIndicator;
  }
  
  public void l() {}
  
  final void q()
  {
    if (!n)
    {
      if (b)
      {
        localObject = new TypedValue();
        a.getTheme().resolveAttribute(com.yelp.android.g.b.actionBarTheme, (TypedValue)localObject, true);
        if (resourceId != 0)
        {
          localObject = new ContextThemeWrapper(a, resourceId);
          p = ((ViewGroup)LayoutInflater.from((Context)localObject).inflate(com.yelp.android.g.i.abc_screen_toolbar, null));
          k = ((ag)p.findViewById(com.yelp.android.g.g.decor_content_parent));
          k.setWindowCallback(n());
          if (c) {
            k.a(9);
          }
          if (s) {
            k.a(2);
          }
          if (t) {
            k.a(5);
          }
        }
      }
      ViewGroup localViewGroup;
      for (;;)
      {
        bm.b(p);
        localObject = (ViewGroup)a.findViewById(16908290);
        localViewGroup = (ViewGroup)p.findViewById(com.yelp.android.g.g.action_bar_activity_content);
        while (((ViewGroup)localObject).getChildCount() > 0)
        {
          View localView = ((ViewGroup)localObject).getChildAt(0);
          ((ViewGroup)localObject).removeViewAt(0);
          localViewGroup.addView(localView);
        }
        localObject = a;
        break;
        if (d) {}
        for (p = ((ViewGroup)LayoutInflater.from(a).inflate(com.yelp.android.g.i.abc_screen_simple_overlay_action_mode, null));; p = ((ViewGroup)LayoutInflater.from(a).inflate(com.yelp.android.g.i.abc_screen_simple, null)))
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label308;
          }
          ce.a(p, new g(this));
          break;
        }
        label308:
        ((aj)p).setOnFitSystemWindowsListener(new h(this));
      }
      a.superSetContentView(p);
      ((ViewGroup)localObject).setId(-1);
      localViewGroup.setId(16908290);
      if ((localObject instanceof FrameLayout)) {
        ((FrameLayout)localObject).setForeground(null);
      }
      if ((r != null) && (k != null))
      {
        k.setWindowTitle(r);
        r = null;
      }
      s();
      r();
      n = true;
      Object localObject = a(0, false);
      if ((!p()) && ((localObject == null) || (j == null))) {
        e(8);
      }
    }
  }
  
  void r() {}
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarActivityDelegateBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */