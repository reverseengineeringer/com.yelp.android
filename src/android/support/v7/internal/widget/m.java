package android.support.v7.internal.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;

public class m
  extends ContextWrapper
{
  private Resources a;
  
  private m(Context paramContext)
  {
    super(paramContext);
  }
  
  public static Context a(Context paramContext)
  {
    Object localObject = paramContext;
    if (!(paramContext instanceof m)) {
      localObject = new m(paramContext);
    }
    return (Context)localObject;
  }
  
  public Resources getResources()
  {
    if (a == null) {
      a = new a(super.getResources(), o.a(this));
    }
    return a;
  }
  
  static class a
    extends i
  {
    private final o a;
    
    public a(Resources paramResources, o paramo)
    {
      super();
      a = paramo;
    }
    
    public Drawable getDrawable(int paramInt)
      throws Resources.NotFoundException
    {
      Drawable localDrawable = super.getDrawable(paramInt);
      if (localDrawable != null) {
        a.a(paramInt, localDrawable);
      }
      return localDrawable;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */