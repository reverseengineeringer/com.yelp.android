package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.DialogFragment;
import android.util.Pair;
import com.yelp.android.ui.util.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class ListDialogFragment
  extends DialogFragment
{
  protected as a;
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
    paramList.putBundle("data", m.a(c));
    paramList.putInt("title", paramInt);
    setArguments(paramList);
    return this;
  }
  
  protected Map<String, Parcelable> a()
  {
    return c;
  }
  
  public void a(as paramas)
  {
    a = paramas;
  }
  
  public abstract void a(String paramString);
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    if (b != 0) {
      localBuilder.setTitle(b);
    }
    return a(paramBundle, localBuilder).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ListDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */