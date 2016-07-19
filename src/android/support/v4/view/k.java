package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.View;

class k
{
  static void a(LayoutInflater paramLayoutInflater, n paramn)
  {
    if (paramn != null) {}
    for (paramn = new a(paramn);; paramn = null)
    {
      paramLayoutInflater.setFactory(paramn);
      return;
    }
  }
  
  static class a
    implements LayoutInflater.Factory
  {
    final n a;
    
    a(n paramn)
    {
      a = paramn;
    }
    
    public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
    {
      return a.a(null, paramString, paramContext, paramAttributeSet);
    }
    
    public String toString()
    {
      return getClass().getName() + "{" + a + "}";
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */