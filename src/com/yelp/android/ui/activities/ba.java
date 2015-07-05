package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.j;
import com.yelp.android.util.PlatformQualifier;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class ba
  implements DialogInterface.OnMultiChoiceClickListener
{
  ba(ActivityConfig paramActivityConfig, CharSequence[] paramArrayOfCharSequence) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
  {
    paramDialogInterface = b;
    i locali = AppData.b().f();
    Object localObject = new HashSet(locali.a(paramDialogInterface));
    ((HashSet)localObject).remove(a[paramInt]);
    if (paramBoolean) {
      ((HashSet)localObject).add(a[paramInt]);
    }
    HashSet localHashSet = new HashSet();
    localObject = ((HashSet)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      localHashSet.add(PlatformQualifier.valueOf(String.valueOf((CharSequence)((Iterator)localObject).next())));
    }
    locali.a(paramDialogInterface, localHashSet);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */