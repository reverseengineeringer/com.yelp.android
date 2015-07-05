package com.yelp.android.serializable;

import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AttributeFilters
  extends _AttributeFilters
{
  public static final JsonParser.DualCreator<AttributeFilters> CREATOR = new f();
  public static final String DELIVERY_ALIAS = "RestaurantsDelivery";
  
  public AttributeFilters()
  {
    mSuggestedFilters = new ArrayList();
  }
  
  public AttributeFilters(List<AttributeFilter> paramList)
  {
    super(paramList);
  }
  
  public void addPromotedFilter(PromotedFilter paramPromotedFilter)
  {
    if (!containsAttribute(paramPromotedFilter.getAlias())) {
      mSuggestedFilters.add(new AttributeFilter(paramPromotedFilter.getAlias(), paramPromotedFilter.getName()));
    }
  }
  
  public boolean containsAttribute(String paramString)
  {
    Iterator localIterator = mSuggestedFilters.iterator();
    while (localIterator.hasNext()) {
      if (((AttributeFilter)localIterator.next()).getAlias().equals(paramString)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (AttributeFilters)paramObject;
    } while (getSuggestedFilters().equals(((AttributeFilters)paramObject).getSuggestedFilters()));
    return false;
  }
  
  public AttributeFilter getAttribute(String paramString)
  {
    Iterator localIterator = mSuggestedFilters.iterator();
    while (localIterator.hasNext())
    {
      AttributeFilter localAttributeFilter = (AttributeFilter)localIterator.next();
      if (localAttributeFilter.getAlias().equals(paramString)) {
        return localAttributeFilter;
      }
    }
    return null;
  }
  
  public void removeAttribute(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < mSuggestedFilters.size())
      {
        if (((AttributeFilter)mSuggestedFilters.get(i)).getAlias().equals(paramString))
        {
          mSuggestedFilters.remove(i);
          return;
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.AttributeFilters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */