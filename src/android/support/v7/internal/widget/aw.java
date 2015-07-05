package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListAdapter;

class aw
  implements DialogInterface.OnClickListener, bb
{
  private AlertDialog b;
  private ListAdapter c;
  private CharSequence d;
  
  private aw(SpinnerCompat paramSpinnerCompat) {}
  
  public void a()
  {
    if (b != null)
    {
      b.dismiss();
      b = null;
    }
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    c = paramListAdapter;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
  }
  
  public boolean b()
  {
    if (b != null) {
      return b.isShowing();
    }
    return false;
  }
  
  public void c()
  {
    if (c == null) {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a.getContext());
    if (d != null) {
      localBuilder.setTitle(d);
    }
    b = localBuilder.setSingleChoiceItems(c, a.getSelectedItemPosition(), this).create();
    b.show();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.setSelection(paramInt);
    if (a.s != null) {
      a.a(null, paramInt, c.getItemId(paramInt));
    }
    a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */