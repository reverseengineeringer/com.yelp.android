package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.support.v4.content.c;
import android.util.TypedValue;
import com.yelp.android.g.b;
import com.yelp.android.g.f;

public class bd
{
  static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  private static final String b = bd.class.getSimpleName();
  private static final be c = new be(6);
  private static final int[] d = { f.abc_ic_ab_back_mtrl_am_alpha, f.abc_ic_go_search_api_mtrl_alpha, f.abc_ic_search_api_mtrl_alpha, f.abc_ic_commit_search_api_mtrl_alpha, f.abc_ic_clear_mtrl_alpha, f.abc_ic_menu_share_mtrl_alpha, f.abc_ic_menu_copy_mtrl_am_alpha, f.abc_ic_menu_cut_mtrl_alpha, f.abc_ic_menu_selectall_mtrl_alpha, f.abc_ic_menu_paste_mtrl_am_alpha, f.abc_ic_menu_moreoverflow_mtrl_alpha, f.abc_ic_voice_search_api_mtrl_alpha, f.abc_textfield_search_default_mtrl_alpha, f.abc_textfield_default_mtrl_alpha, f.abc_ab_share_pack_mtrl_alpha };
  private static final int[] e = { f.abc_textfield_activated_mtrl_alpha, f.abc_textfield_search_activated_mtrl_alpha, f.abc_cab_background_top_mtrl_alpha };
  private static final int[] f = { f.abc_popup_background_mtrl_mult, f.abc_cab_background_internal_bg, f.abc_menu_hardkey_panel_mtrl_mult };
  private static final int[] g = { f.abc_edit_text_material, f.abc_tab_indicator_material, f.abc_textfield_search_material, f.abc_spinner_mtrl_am_alpha, f.abc_btn_check_material, f.abc_btn_radio_material, f.abc_spinner_textfield_background_material, f.abc_ratingbar_full_material };
  private static final int[] h = { f.abc_cab_background_top_material };
  private final Context i;
  private final Resources j;
  private final TypedValue k;
  private ColorStateList l;
  private ColorStateList m;
  private ColorStateList n;
  private ColorStateList o;
  
  public bd(Context paramContext)
  {
    i = paramContext;
    j = new bf(paramContext.getResources(), this);
    k = new TypedValue();
  }
  
  private ColorStateList a()
  {
    if (l == null)
    {
      int i1 = b(b.colorControlNormal);
      int i2 = b(b.colorControlActivated);
      int[] arrayOfInt1 = { -16842910 };
      int i3 = c(b.colorControlNormal);
      int[] arrayOfInt2 = { 16842908 };
      int[] arrayOfInt3 = { 16843518 };
      int[] arrayOfInt4 = { 16842919 };
      int[] arrayOfInt5 = { 16842912 };
      int[] arrayOfInt6 = new int[0];
      l = new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, { 16842913 }, arrayOfInt6 }, new int[] { i3, i2, i2, i2, i2, i2, i1 });
    }
    return l;
  }
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    if (d(paramInt)) {
      return new bd(paramContext).a(paramInt);
    }
    return c.getDrawable(paramContext, paramInt);
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (paramArrayOfInt[i1] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  private ColorStateList b()
  {
    if (n == null)
    {
      int i1 = a(16842800, 0.1F);
      int[] arrayOfInt1 = { 16842912 };
      int i2 = a(b.colorControlActivated, 0.3F);
      int[] arrayOfInt2 = new int[0];
      int i3 = a(16842800, 0.3F);
      n = new ColorStateList(new int[][] { { -16842910 }, arrayOfInt1, arrayOfInt2 }, new int[] { i1, i2, i3 });
    }
    return n;
  }
  
  private ColorStateList c()
  {
    if (m == null)
    {
      int i1 = c(b.colorSwitchThumbNormal);
      int i2 = b(b.colorControlActivated);
      int[] arrayOfInt = new int[0];
      int i3 = b(b.colorSwitchThumbNormal);
      m = new ColorStateList(new int[][] { { -16842910 }, { 16842912 }, arrayOfInt }, new int[] { i1, i2, i3 });
    }
    return m;
  }
  
  private ColorStateList d()
  {
    if (o == null)
    {
      int[] arrayOfInt1 = { -16842910 };
      int i1 = c(b.colorButtonNormal);
      int i2 = b(b.colorControlHighlight);
      int[] arrayOfInt2 = { 16842908 };
      int i3 = b(b.colorControlHighlight);
      int[] arrayOfInt3 = new int[0];
      int i4 = b(b.colorButtonNormal);
      o = new ColorStateList(new int[][] { arrayOfInt1, { 16842919 }, arrayOfInt2, arrayOfInt3 }, new int[] { i1, i2, i3, i4 });
    }
    return o;
  }
  
  private static boolean d(int paramInt)
  {
    return (a(f, paramInt)) || (a(d, paramInt)) || (a(e, paramInt)) || (a(g, paramInt)) || (a(h, paramInt));
  }
  
  int a(int paramInt, float paramFloat)
  {
    paramInt = b(paramInt);
    return paramInt & 0xFFFFFF | Math.round(Color.alpha(paramInt) * paramFloat) << 24;
  }
  
  public Drawable a(int paramInt)
  {
    Drawable localDrawable = c.getDrawable(i, paramInt);
    Object localObject = localDrawable;
    if (localDrawable != null)
    {
      localObject = localDrawable.mutate();
      if (a(g, paramInt)) {
        localObject = new bc((Drawable)localObject, a());
      }
    }
    else
    {
      return (Drawable)localObject;
    }
    if (paramInt == f.abc_switch_track_mtrl_alpha) {
      return new bc((Drawable)localObject, b());
    }
    if (paramInt == f.abc_switch_thumb_material) {
      return new bc((Drawable)localObject, c(), PorterDuff.Mode.MULTIPLY);
    }
    if (paramInt == f.abc_btn_default_mtrl_shape) {
      return new bc((Drawable)localObject, d());
    }
    if (a(h, paramInt)) {
      return j.getDrawable(paramInt);
    }
    a(paramInt, (Drawable)localObject);
    return (Drawable)localObject;
  }
  
  void a(int paramInt, Drawable paramDrawable)
  {
    Object localObject1;
    int i2;
    int i1;
    if (a(d, paramInt))
    {
      paramInt = b.colorControlNormal;
      localObject1 = null;
      i2 = 1;
      i1 = -1;
    }
    for (;;)
    {
      if (i2 != 0)
      {
        Object localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = a;
        }
        paramInt = b(paramInt);
        localObject1 = c.a(paramInt, (PorterDuff.Mode)localObject2);
        if (localObject1 != null) {
          break label182;
        }
        localObject1 = new PorterDuffColorFilter(paramInt, (PorterDuff.Mode)localObject2);
        c.a(paramInt, (PorterDuff.Mode)localObject2, (PorterDuffColorFilter)localObject1);
      }
      label182:
      for (;;)
      {
        paramDrawable.setColorFilter((ColorFilter)localObject1);
        if (i1 != -1) {
          paramDrawable.setAlpha(i1);
        }
        return;
        if (a(e, paramInt))
        {
          paramInt = b.colorControlActivated;
          localObject1 = null;
          i2 = 1;
          i1 = -1;
          break;
        }
        if (a(f, paramInt))
        {
          localObject1 = PorterDuff.Mode.MULTIPLY;
          i2 = 1;
          i1 = -1;
          paramInt = 16842801;
          break;
        }
        if (paramInt != f.abc_list_divider_mtrl_alpha) {
          break label185;
        }
        paramInt = 16842800;
        i1 = Math.round(40.8F);
        localObject1 = null;
        i2 = 1;
        break;
      }
      label185:
      i1 = -1;
      paramInt = 0;
      localObject1 = null;
      i2 = 0;
    }
  }
  
  int b(int paramInt)
  {
    if (i.getTheme().resolveAttribute(paramInt, k, true))
    {
      if ((k.type >= 16) && (k.type <= 31)) {
        return k.data;
      }
      if (k.type == 3) {
        return j.getColor(k.resourceId);
      }
    }
    return 0;
  }
  
  int c(int paramInt)
  {
    i.getTheme().resolveAttribute(16842803, k, true);
    return a(paramInt, k.getFloat());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */