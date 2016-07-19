package com.yelp.android.ui.activities.bookmarks;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;

public class ActivityComboBookmarks$SortDialogFragment
  extends DialogFragment
{
  private a a;
  
  public void a(a parama)
  {
    a = parama;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new String[ListBookmarksRequest.SortType.values().length];
    Object localObject1 = ListBookmarksRequest.SortType.values();
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1[i];
      paramBundle[localObject2.ordinal()] = getString(description);
      i += 1;
    }
    localObject1 = new AlertDialog.Builder(getActivity());
    ((AlertDialog.Builder)localObject1).setTitle(2131165795).setItems(paramBundle, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ActivityComboBookmarks.SortDialogFragment.a(ActivityComboBookmarks.SortDialogFragment.this).a(paramAnonymousDialogInterface, paramAnonymousInt);
      }
    });
    return ((AlertDialog.Builder)localObject1).create();
  }
  
  public static abstract interface a
  {
    public abstract void a(DialogInterface paramDialogInterface, int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.SortDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */