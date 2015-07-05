package com.yelp.android.ui.util;

import android.text.TextUtils;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.yelp.android.serializable.User;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class cl
  extends Filter
{
  cl(cj paramcj) {}
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    ArrayList localArrayList = new ArrayList();
    if (cj.a(a) == null) {
      cj.a(a, a.a());
    }
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (paramCharSequence = cj.a(a);; paramCharSequence = localArrayList)
    {
      count = paramCharSequence.size();
      values = paramCharSequence;
      return localFilterResults;
      paramCharSequence = paramCharSequence.toString().toLowerCase(Locale.US);
      Iterator localIterator = cj.a(a).iterator();
      while (localIterator.hasNext())
      {
        User localUser = (User)localIterator.next();
        if (localUser.getName().toLowerCase(Locale.US).contains(paramCharSequence.toString())) {
          localArrayList.add(localUser);
        }
      }
    }
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    a.a((List)values);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */