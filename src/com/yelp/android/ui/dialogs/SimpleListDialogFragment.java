package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.widget.SimpleAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SimpleListDialogFragment
  extends ListDialogFragment
{
  public static ListDialogFragment b(int paramInt, List<Pair<String, Parcelable>> paramList)
  {
    SimpleListDialogFragment localSimpleListDialogFragment = new SimpleListDialogFragment();
    localSimpleListDialogFragment.a(paramInt, paramList);
    return localSimpleListDialogFragment;
  }
  
  public AlertDialog.Builder a(Bundle paramBundle, AlertDialog.Builder paramBuilder)
  {
    Object localObject = a();
    paramBundle = new ArrayList(((Map)localObject).size());
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      HashMap localHashMap = new HashMap();
      localHashMap.put("text", localEntry.getKey());
      localHashMap.put("data", localEntry.getValue());
      paramBundle.add(localHashMap);
    }
    paramBuilder.setAdapter(new SimpleAdapter(getActivity(), paramBundle, 17367043, new String[] { "text" }, new int[] { 16908308 }), new SimpleListDialogFragment.1(this, paramBundle));
    return paramBuilder;
  }
  
  public void a(String paramString) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.SimpleListDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */