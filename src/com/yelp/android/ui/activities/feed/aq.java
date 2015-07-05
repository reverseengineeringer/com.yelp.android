package com.yelp.android.ui.activities.feed;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.i;
import com.yelp.android.ui.util.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public class aq
  extends au<FeedEntry>
  implements i, j
{
  private final FeedType a;
  private final LinkedHashMap<Class<? extends FeedEntry>, at<? extends FeedEntry>> b;
  private final ArrayList<Class<? extends FeedEntry>> c;
  
  public aq(FeedType paramFeedType, at<? extends FeedEntry> paramat)
  {
    if (paramat == null) {
      throw new NullPointerException("viewbinder cannot be null");
    }
    a = paramFeedType;
    c = new ArrayList();
    b = new LinkedHashMap();
    b.put(null, paramat);
  }
  
  private FeedEntry b(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      FeedEntry localFeedEntry = (FeedEntry)localIterator.next();
      if ((!TextUtils.isEmpty(localFeedEntry.getId())) && (localFeedEntry.getId().equals(paramString))) {
        return localFeedEntry;
      }
    }
    return null;
  }
  
  public YelpBusiness a(int paramInt)
  {
    return ((FeedEntry)getItem(paramInt)).getBusiness();
  }
  
  public <T extends FeedEntry> void a(Class<? extends T> paramClass, at<? extends T> paramat)
  {
    b.put(paramClass, paramat);
    c.remove(paramClass);
    c.add(paramClass);
  }
  
  public void a(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      FeedEntry localFeedEntry = (FeedEntry)localIterator.next();
      if ((!TextUtils.isEmpty(localFeedEntry.getId())) && (localFeedEntry.getId().equals(paramString))) {
        localIterator.remove();
      }
    }
    notifyDataSetChanged();
  }
  
  public void a(String paramString, Bundle paramBundle)
  {
    paramString = b(paramString);
    if (paramString != null)
    {
      paramString.updateContent(paramBundle);
      notifyDataSetChanged();
    }
  }
  
  public void a(Collection<? extends FeedEntry> paramCollection)
  {
    super.a(paramCollection);
    notifyDataSetChanged();
  }
  
  public void a(Collection<? extends FeedEntry> paramCollection, Comparator<FeedEntry> paramComparator)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return;
    }
    super.a(paramCollection);
    a(paramComparator);
    notifyDataSetChanged();
  }
  
  public List<FeedEntry> b()
  {
    return Collections.unmodifiableList(a());
  }
  
  public void b(Collection<? extends FeedEntry> paramCollection)
  {
    super.b(paramCollection);
    notifyDataSetChanged();
  }
  
  public LinkedHashMap<Class<? extends FeedEntry>, at<? extends FeedEntry>> c()
  {
    return b;
  }
  
  public int getItemViewType(int paramInt)
  {
    Class localClass = ((FeedEntry)getItem(paramInt)).getClass();
    paramInt = 0;
    int i = c.size();
    while (paramInt < i)
    {
      if (localClass == c.get(paramInt)) {
        return paramInt;
      }
      paramInt += 1;
    }
    return c.size();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    FeedEntry localFeedEntry = (FeedEntry)getItem(paramInt);
    at localat2 = (at)b.get(localFeedEntry.getClass());
    at localat1 = localat2;
    if (localat2 == null) {
      localat1 = (at)b.get(null);
    }
    paramView = (ar)paramView;
    if (paramView == null) {
      return new ar(paramViewGroup.getContext(), localat1.b(localFeedEntry, a, paramInt, null, paramViewGroup));
    }
    ar.a(paramView, localat1.b(localFeedEntry, a, paramInt, ar.a(paramView), paramViewGroup));
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return b.size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */