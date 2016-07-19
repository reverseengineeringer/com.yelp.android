package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.DialogFragment;
import android.util.Pair;
import com.yelp.android.ui.util.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class ListDialogFragment
  extends DialogFragment
{
  protected a a;
  private int b;
  private Map<String, Parcelable> c;
  
  public abstract AlertDialog.Builder a(Bundle paramBundle, AlertDialog.Builder paramBuilder);
  
  public ListDialogFragment a(int paramInt, List<Pair<String, Parcelable>> paramList)
  {
    b = paramInt;
    c = new HashMap(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Pair localPair = (Pair)paramList.next();
      c.put(first, second);
    }
    paramList = new Bundle();
    paramList.putBundle("data", i.a(c));
    paramList.putInt("title", paramInt);
    setArguments(paramList);
    return this;
  }
  
  protected Map<String, Parcelable> a()
  {
    return c;
  }
  
  public void a(a parama)
  {
    a = parama;
  }
  
  public abstract void a(String paramString);
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    if (paramBundle != null)
    {
      b = paramBundle.getInt("saved_title");
      c = i.a(paramBundle.getBundle("saved_data"), Parcelable.class);
    }
    if (b != 0) {
      localBuilder.setTitle(b);
    }
    return a(paramBundle, localBuilder).create();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("saved_title", b);
    paramBundle.putBundle("saved_data", i.a(c));
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, Parcelable paramParcelable);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ListDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */