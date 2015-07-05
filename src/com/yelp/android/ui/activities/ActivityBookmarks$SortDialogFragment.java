package com.yelp.android.ui.activities;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;

public class ActivityBookmarks$SortDialogFragment
  extends DialogFragment
{
  private q a;
  
  public void a(q paramq)
  {
    a = paramq;
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
    ((AlertDialog.Builder)localObject1).setTitle(2131165719).setItems(paramBundle, new p(this));
    return ((AlertDialog.Builder)localObject1).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBookmarks.SortDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */