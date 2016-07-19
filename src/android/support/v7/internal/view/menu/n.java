package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import com.yelp.android.e.a;
import com.yelp.android.e.b;
import com.yelp.android.e.c;

public final class n
{
  public static Menu a(Context paramContext, a parama)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return new o(paramContext, parama);
    }
    throw new UnsupportedOperationException();
  }
  
  public static MenuItem a(Context paramContext, b paramb)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return new j(paramContext, paramb);
    }
    if (Build.VERSION.SDK_INT >= 14) {
      return new i(paramContext, paramb);
    }
    throw new UnsupportedOperationException();
  }
  
  public static SubMenu a(Context paramContext, c paramc)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return new q(paramContext, paramc);
    }
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */