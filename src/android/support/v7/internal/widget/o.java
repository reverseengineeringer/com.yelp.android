package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.v4.content.d;
import android.util.SparseArray;
import android.view.View;
import com.yelp.android.g.e;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.e;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class o
{
  public static final boolean a;
  private static final PorterDuff.Mode b;
  private static final WeakHashMap<Context, o> c;
  private static final a d;
  private static final int[] e;
  private static final int[] f;
  private static final int[] g;
  private static final int[] h;
  private static final int[] i;
  private static final int[] j;
  private final WeakReference<Context> k;
  private SparseArray<ColorStateList> l;
  private ColorStateList m;
  
  static
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = PorterDuff.Mode.SRC_IN;
      c = new WeakHashMap();
      d = new a(6);
      e = new int[] { a.e.abc_textfield_search_default_mtrl_alpha, a.e.abc_textfield_default_mtrl_alpha, a.e.abc_ab_share_pack_mtrl_alpha };
      f = new int[] { a.e.abc_ic_ab_back_mtrl_am_alpha, a.e.abc_ic_go_search_api_mtrl_alpha, a.e.abc_ic_search_api_mtrl_alpha, a.e.abc_ic_commit_search_api_mtrl_alpha, a.e.abc_ic_clear_mtrl_alpha, a.e.abc_ic_menu_share_mtrl_alpha, a.e.abc_ic_menu_copy_mtrl_am_alpha, a.e.abc_ic_menu_cut_mtrl_alpha, a.e.abc_ic_menu_selectall_mtrl_alpha, a.e.abc_ic_menu_paste_mtrl_am_alpha, a.e.abc_ic_menu_moreoverflow_mtrl_alpha, a.e.abc_ic_voice_search_api_mtrl_alpha };
      g = new int[] { a.e.abc_textfield_activated_mtrl_alpha, a.e.abc_textfield_search_activated_mtrl_alpha, a.e.abc_cab_background_top_mtrl_alpha, a.e.abc_text_cursor_material };
      h = new int[] { a.e.abc_popup_background_mtrl_mult, a.e.abc_cab_background_internal_bg, a.e.abc_menu_hardkey_panel_mtrl_mult };
      i = new int[] { a.e.abc_edit_text_material, a.e.abc_tab_indicator_material, a.e.abc_textfield_search_material, a.e.abc_spinner_mtrl_am_alpha, a.e.abc_spinner_textfield_background_material, a.e.abc_ratingbar_full_material, a.e.abc_switch_track_mtrl_alpha, a.e.abc_switch_thumb_material, a.e.abc_btn_default_mtrl_shape, a.e.abc_btn_borderless_material };
      j = new int[] { a.e.abc_btn_check_material, a.e.abc_btn_radio_material };
      return;
    }
  }
  
  private o(Context paramContext)
  {
    k = new WeakReference(paramContext);
  }
  
  private static PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    PorterDuffColorFilter localPorterDuffColorFilter2 = d.a(paramInt, paramMode);
    PorterDuffColorFilter localPorterDuffColorFilter1 = localPorterDuffColorFilter2;
    if (localPorterDuffColorFilter2 == null)
    {
      localPorterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
      d.a(paramInt, paramMode, localPorterDuffColorFilter1);
    }
    return localPorterDuffColorFilter1;
  }
  
  private static PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int[] paramArrayOfInt)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return a(paramColorStateList.getColorForState(paramArrayOfInt, 0), paramMode);
  }
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    if (d(paramInt)) {
      return a(paramContext).a(paramInt);
    }
    return d.a(paramContext, paramInt);
  }
  
  public static o a(Context paramContext)
  {
    o localo2 = (o)c.get(paramContext);
    o localo1 = localo2;
    if (localo2 == null)
    {
      localo1 = new o(paramContext);
      c.put(paramContext, localo1);
    }
    return localo1;
  }
  
  public static void a(View paramView, n paramn)
  {
    Drawable localDrawable = paramView.getBackground();
    ColorStateList localColorStateList;
    if ((d) || (c)) {
      if (d)
      {
        localColorStateList = a;
        if (!c) {
          break label74;
        }
        paramn = b;
        label43:
        localDrawable.setColorFilter(a(localColorStateList, paramn, paramView.getDrawableState()));
      }
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT <= 10) {
        paramView.invalidate();
      }
      return;
      localColorStateList = null;
      break;
      label74:
      paramn = b;
      break label43;
      localDrawable.clearColorFilter();
    }
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int i1 = paramArrayOfInt.length;
    int n = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (n < i1)
      {
        if (paramArrayOfInt[n] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      n += 1;
    }
  }
  
  private ColorStateList b(Context paramContext)
  {
    if (m == null)
    {
      int n = l.a(paramContext, a.a.colorControlNormal);
      int i1 = l.a(paramContext, a.a.colorControlActivated);
      int[] arrayOfInt = l.a;
      int i2 = l.c(paramContext, a.a.colorControlNormal);
      m = new ColorStateList(new int[][] { arrayOfInt, l.b, l.c, l.d, l.e, l.f, l.h }, new int[] { i2, i1, i1, i1, i1, i1, n });
    }
    return m;
  }
  
  private ColorStateList b(Context paramContext, int paramInt)
  {
    paramInt = l.a(paramContext, paramInt);
    int i2 = l.a(paramContext, a.a.colorControlHighlight);
    int[] arrayOfInt1 = l.a;
    int n = l.c(paramContext, a.a.colorButtonNormal);
    paramContext = l.d;
    int i1 = com.yelp.android.c.a.a(i2, paramInt);
    int[] arrayOfInt2 = l.b;
    i2 = com.yelp.android.c.a.a(i2, paramInt);
    return new ColorStateList(new int[][] { arrayOfInt1, paramContext, arrayOfInt2, l.h }, new int[] { n, i1, i2, paramInt });
  }
  
  private ColorStateList c(Context paramContext)
  {
    int[] arrayOfInt1 = l.a;
    int n = l.c(paramContext, a.a.colorControlNormal);
    int[] arrayOfInt2 = l.e;
    int i1 = l.a(paramContext, a.a.colorControlActivated);
    int[] arrayOfInt3 = l.h;
    int i2 = l.a(paramContext, a.a.colorControlNormal);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3 }, new int[] { n, i1, i2 });
  }
  
  private ColorStateList d(Context paramContext)
  {
    int[] arrayOfInt1 = l.a;
    int n = l.a(paramContext, 16842800, 0.1F);
    int[] arrayOfInt2 = l.e;
    int i1 = l.a(paramContext, a.a.colorControlActivated, 0.3F);
    int[] arrayOfInt3 = l.h;
    int i2 = l.a(paramContext, 16842800, 0.3F);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3 }, new int[] { n, i1, i2 });
  }
  
  private static boolean d(int paramInt)
  {
    return (a(f, paramInt)) || (a(e, paramInt)) || (a(g, paramInt)) || (a(i, paramInt)) || (a(h, paramInt)) || (a(j, paramInt)) || (paramInt == a.e.abc_cab_background_top_material);
  }
  
  private ColorStateList e(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    ColorStateList localColorStateList = l.b(paramContext, a.a.colorSwitchThumbNormal);
    if ((localColorStateList != null) && (localColorStateList.isStateful()))
    {
      arrayOfInt[0] = l.a;
      arrayOfInt1[0] = localColorStateList.getColorForState(arrayOfInt[0], 0);
      arrayOfInt[1] = l.e;
      arrayOfInt1[1] = l.a(paramContext, a.a.colorControlActivated);
      arrayOfInt[2] = l.h;
      arrayOfInt1[2] = localColorStateList.getDefaultColor();
    }
    for (;;)
    {
      return new ColorStateList(arrayOfInt, arrayOfInt1);
      arrayOfInt[0] = l.a;
      arrayOfInt1[0] = l.c(paramContext, a.a.colorSwitchThumbNormal);
      arrayOfInt[1] = l.e;
      arrayOfInt1[1] = l.a(paramContext, a.a.colorControlActivated);
      arrayOfInt[2] = l.h;
      arrayOfInt1[2] = l.a(paramContext, a.a.colorSwitchThumbNormal);
    }
  }
  
  private ColorStateList f(Context paramContext)
  {
    int[] arrayOfInt1 = l.a;
    int n = l.c(paramContext, a.a.colorControlNormal);
    int[] arrayOfInt2 = l.g;
    int i1 = l.a(paramContext, a.a.colorControlNormal);
    int[] arrayOfInt3 = l.h;
    int i2 = l.a(paramContext, a.a.colorControlActivated);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3 }, new int[] { n, i1, i2 });
  }
  
  private ColorStateList g(Context paramContext)
  {
    return b(paramContext, a.a.colorButtonNormal);
  }
  
  private ColorStateList h(Context paramContext)
  {
    return b(paramContext, a.a.colorAccent);
  }
  
  private ColorStateList i(Context paramContext)
  {
    int[] arrayOfInt1 = l.a;
    int n = l.c(paramContext, a.a.colorControlNormal);
    int[] arrayOfInt2 = l.g;
    int i1 = l.a(paramContext, a.a.colorControlNormal);
    int[] arrayOfInt3 = l.h;
    int i2 = l.a(paramContext, a.a.colorControlActivated);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3 }, new int[] { n, i1, i2 });
  }
  
  public Drawable a(int paramInt)
  {
    return a(paramInt, false);
  }
  
  public Drawable a(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = (Context)k.get();
    if (localObject1 == null) {
      return null;
    }
    Object localObject3 = d.a((Context)localObject1, paramInt);
    localObject1 = localObject3;
    Object localObject2;
    if (localObject3 != null)
    {
      localObject2 = localObject3;
      if (Build.VERSION.SDK_INT >= 8) {
        localObject2 = ((Drawable)localObject3).mutate();
      }
      localObject1 = c(paramInt);
      if (localObject1 == null) {
        break label101;
      }
      localObject2 = com.yelp.android.d.a.c((Drawable)localObject2);
      com.yelp.android.d.a.a((Drawable)localObject2, (ColorStateList)localObject1);
      localObject3 = b(paramInt);
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        com.yelp.android.d.a.a((Drawable)localObject2, (PorterDuff.Mode)localObject3);
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      return (Drawable)localObject1;
      label101:
      if (paramInt == a.e.abc_cab_background_top_material) {
        return new LayerDrawable(new Drawable[] { a(a.e.abc_cab_background_internal_bg), a(a.e.abc_cab_background_top_mtrl_alpha) });
      }
      localObject1 = localObject2;
      if (!a(paramInt, (Drawable)localObject2))
      {
        localObject1 = localObject2;
        if (paramBoolean) {
          localObject1 = null;
        }
      }
    }
  }
  
  public final boolean a(int paramInt, Drawable paramDrawable)
  {
    Context localContext = (Context)k.get();
    if (localContext == null) {
      return false;
    }
    PorterDuff.Mode localMode = b;
    int n;
    int i1;
    if (a(e, paramInt))
    {
      n = a.a.colorControlNormal;
      i1 = 1;
      paramInt = -1;
    }
    for (;;)
    {
      if (i1 != 0)
      {
        paramDrawable.setColorFilter(a(l.a(localContext, n), localMode));
        if (paramInt != -1) {
          paramDrawable.setAlpha(paramInt);
        }
        return true;
        if (a(g, paramInt))
        {
          n = a.a.colorControlActivated;
          i1 = 1;
          paramInt = -1;
          continue;
        }
        if (a(h, paramInt))
        {
          localMode = PorterDuff.Mode.MULTIPLY;
          i1 = 1;
          n = 16842801;
          paramInt = -1;
          continue;
        }
        if (paramInt == a.e.abc_list_divider_mtrl_alpha)
        {
          n = 16842800;
          paramInt = Math.round(40.8F);
          i1 = 1;
        }
      }
      else
      {
        return false;
      }
      paramInt = -1;
      n = 0;
      i1 = 0;
    }
  }
  
  final PorterDuff.Mode b(int paramInt)
  {
    PorterDuff.Mode localMode = null;
    if (paramInt == a.e.abc_switch_thumb_material) {
      localMode = PorterDuff.Mode.MULTIPLY;
    }
    return localMode;
  }
  
  public final ColorStateList c(int paramInt)
  {
    ColorStateList localColorStateList = null;
    Object localObject = (Context)k.get();
    if (localObject == null)
    {
      localObject = null;
      return (ColorStateList)localObject;
    }
    if (l != null) {
      localColorStateList = (ColorStateList)l.get(paramInt);
    }
    if (localColorStateList == null)
    {
      if (paramInt == a.e.abc_edit_text_material) {
        localColorStateList = f((Context)localObject);
      }
      for (;;)
      {
        localObject = localColorStateList;
        if (localColorStateList == null) {
          break;
        }
        if (l == null) {
          l = new SparseArray();
        }
        l.append(paramInt, localColorStateList);
        return localColorStateList;
        if (paramInt == a.e.abc_switch_track_mtrl_alpha) {
          localColorStateList = d((Context)localObject);
        } else if (paramInt == a.e.abc_switch_thumb_material) {
          localColorStateList = e((Context)localObject);
        } else if ((paramInt == a.e.abc_btn_default_mtrl_shape) || (paramInt == a.e.abc_btn_borderless_material)) {
          localColorStateList = g((Context)localObject);
        } else if (paramInt == a.e.abc_btn_colored_material) {
          localColorStateList = h((Context)localObject);
        } else if ((paramInt == a.e.abc_spinner_mtrl_am_alpha) || (paramInt == a.e.abc_spinner_textfield_background_material)) {
          localColorStateList = i((Context)localObject);
        } else if (a(f, paramInt)) {
          localColorStateList = l.b((Context)localObject, a.a.colorControlNormal);
        } else if (a(i, paramInt)) {
          localColorStateList = b((Context)localObject);
        } else if (a(j, paramInt)) {
          localColorStateList = c((Context)localObject);
        }
      }
    }
    return localColorStateList;
  }
  
  private static class a
    extends e<Integer, PorterDuffColorFilter>
  {
    public a(int paramInt)
    {
      super();
    }
    
    private static int b(int paramInt, PorterDuff.Mode paramMode)
    {
      return (paramInt + 31) * 31 + paramMode.hashCode();
    }
    
    PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
    {
      return (PorterDuffColorFilter)get(Integer.valueOf(b(paramInt, paramMode)));
    }
    
    PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
    {
      return (PorterDuffColorFilter)put(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */