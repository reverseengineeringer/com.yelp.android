package android.support.design.internal;

import android.content.Context;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.view.SubMenu;

public class a
  extends f
{
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (h)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    c localc = new c(e(), this, paramCharSequence);
    paramCharSequence.a(localc);
    return localc;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */