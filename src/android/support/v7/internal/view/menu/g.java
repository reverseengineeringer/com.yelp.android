package android.support.v7.internal.view.menu;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.support.v7.app.d;
import android.support.v7.app.d.a;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;
import com.yelp.android.j.a.h;

public class g
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, l.a
{
  e a;
  private f b;
  private d c;
  private l.a d;
  
  public g(f paramf)
  {
    b = paramf;
  }
  
  public void a()
  {
    if (c != null) {
      c.dismiss();
    }
  }
  
  public void a(IBinder paramIBinder)
  {
    Object localObject = b;
    d.a locala = new d.a(((f)localObject).e());
    a = new e(locala.a(), a.h.abc_list_menu_item_layout);
    a.a(this);
    b.a(a);
    locala.a(a.d(), this);
    View localView = ((f)localObject).o();
    if (localView != null) {
      locala.a(localView);
    }
    for (;;)
    {
      locala.a(this);
      c = locala.b();
      c.setOnDismissListener(this);
      localObject = c.getWindow().getAttributes();
      type = 1003;
      if (paramIBinder != null) {
        token = paramIBinder;
      }
      flags |= 0x20000;
      c.show();
      return;
      locala.a(((f)localObject).n()).a(((f)localObject).m());
    }
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    if ((paramBoolean) || (paramf == b)) {
      a();
    }
    if (d != null) {
      d.a(paramf, paramBoolean);
    }
  }
  
  public boolean a(f paramf)
  {
    if (d != null) {
      return d.a(paramf);
    }
    return false;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a((h)a.d().getItem(paramInt), 0);
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.a(b, true);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = c.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = c.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              b.a(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return b.performShortcut(paramInt, paramKeyEvent, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */