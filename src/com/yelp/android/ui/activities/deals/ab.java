package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.yelp.android.util.ContactsFetcher;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

final class ab
  extends Filter
{
  private final WeakReference<Activity> a;
  private final aa b;
  
  public ab(Activity paramActivity, aa paramaa)
  {
    a = new WeakReference(paramActivity);
    b = paramaa;
  }
  
  public CharSequence convertResultToString(Object paramObject)
  {
    Object localObject = (Activity)a.get();
    if ((localObject != null) && ((paramObject instanceof ContactsFetcher.Contact)))
    {
      localObject = new SpannableString(((ContactsFetcher.Contact)paramObject).getName((Context)localObject));
      ((SpannableString)localObject).setSpan(paramObject, 0, 0, 17);
      return (CharSequence)localObject;
    }
    return super.convertResultToString(paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    List localList = Collections.emptyList();
    Activity localActivity = (Activity)a.get();
    if ((!TextUtils.isEmpty(paramCharSequence)) && (localActivity != null)) {}
    for (paramCharSequence = ContactsFetcher.b().a((Context)a.get(), paramCharSequence.toString(), 4);; paramCharSequence = localList)
    {
      values = paramCharSequence;
      count = paramCharSequence.size();
      return localFilterResults;
    }
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = (List)values;
    b.a(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */