package android.support.v7.app;

import android.content.Context;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window;
import android.view.Window.Callback;
import com.yelp.android.p.d.a;
import com.yelp.android.r.a;

class i
  extends h
{
  private boolean r = true;
  
  i(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  public boolean l()
  {
    return r;
  }
  
  class a
    extends g.b
  {
    a(Window.Callback paramCallback)
    {
      super(paramCallback);
    }
    
    final ActionMode a(ActionMode.Callback paramCallback)
    {
      paramCallback = new d.a(a, paramCallback);
      a locala = a(paramCallback);
      if (locala != null) {
        return paramCallback.b(locala);
      }
      return null;
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
    {
      if (l()) {
        return a(paramCallback);
      }
      return super.onWindowStartingActionMode(paramCallback);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */