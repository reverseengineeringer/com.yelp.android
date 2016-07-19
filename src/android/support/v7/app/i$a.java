package android.support.v7.app;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;
import com.yelp.android.p.d.a;
import com.yelp.android.r.a;

class i$a
  extends g.b
{
  i$a(i parami, Window.Callback paramCallback)
  {
    super(parami, paramCallback);
  }
  
  final ActionMode a(ActionMode.Callback paramCallback)
  {
    paramCallback = new d.a(b.a, paramCallback);
    a locala = b.a(paramCallback);
    if (locala != null) {
      return paramCallback.b(locala);
    }
    return null;
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    if (b.l()) {
      return a(paramCallback);
    }
    return super.onWindowStartingActionMode(paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */