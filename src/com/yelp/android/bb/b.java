package com.yelp.android.bb;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.yelp.android.serializable.User;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class b
  extends Filter
{
  b(a parama) {}
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.a(a).iterator();
    while (localIterator.hasNext())
    {
      User localUser = (User)localIterator.next();
      if (localUser.getUserName().toLowerCase(Locale.getDefault()).contains(paramCharSequence.toString().toLowerCase(Locale.getDefault()))) {
        localArrayList.add(localUser);
      }
    }
    count = localArrayList.size();
    values = localArrayList;
    return localFilterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    a.a((List)values, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */