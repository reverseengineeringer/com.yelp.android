package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import android.view.View;
import java.lang.reflect.Field;

class l
{
  private static Field a;
  private static boolean b;
  
  static void a(LayoutInflater paramLayoutInflater, n paramn)
  {
    if (paramn != null) {}
    for (paramn = new a(paramn);; paramn = null)
    {
      paramLayoutInflater.setFactory2(paramn);
      LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
      if (!(localFactory instanceof LayoutInflater.Factory2)) {
        break;
      }
      a(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
      return;
    }
    a(paramLayoutInflater, paramn);
  }
  
  static void a(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2)
  {
    if (!b) {}
    try
    {
      a = LayoutInflater.class.getDeclaredField("mFactory2");
      a.setAccessible(true);
      b = true;
      if (a == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        try
        {
          a.set(paramLayoutInflater, paramFactory2);
          return;
        }
        catch (IllegalAccessException paramFactory2)
        {
          Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + paramLayoutInflater + "; inflation may have unexpected results.", paramFactory2);
        }
        localNoSuchFieldException = localNoSuchFieldException;
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", localNoSuchFieldException);
      }
    }
  }
  
  static class a
    extends k.a
    implements LayoutInflater.Factory2
  {
    a(n paramn)
    {
      super();
    }
    
    public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
    {
      return a.a(paramView, paramString, paramContext, paramAttributeSet);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */