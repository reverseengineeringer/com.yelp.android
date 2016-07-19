package android.support.v7.app;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

class j$a
  extends i.a
{
  j$a(j paramj, Window.Callback paramCallback)
  {
    super(paramj, paramCallback);
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    return null;
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt)
  {
    if (c.l()) {}
    switch (paramInt)
    {
    default: 
      return super.onWindowStartingActionMode(paramCallback, paramInt);
    }
    return a(paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */