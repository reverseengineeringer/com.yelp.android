package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class AttributeFilter
  extends _AttributeFilter
{
  public static final JsonParser.DualCreator<AttributeFilter> CREATOR = new e();
  
  public AttributeFilter() {}
  
  public AttributeFilter(AttributeFilter paramAttributeFilter)
  {
    mAlias = mAlias;
    mLocalizedLabel = mLocalizedLabel;
  }
  
  public AttributeFilter(String paramString)
  {
    this(paramString, "");
  }
  
  public AttributeFilter(String paramString1, String paramString2)
  {
    super(paramString1, paramString2, false);
    mAlias = paramString1;
    mLocalizedLabel = paramString2;
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
      if (!(paramObject instanceof AttributeFilter)) {
        return false;
      }
      paramObject = (AttributeFilter)paramObject;
      if (!getAlias().equals(((AttributeFilter)paramObject).getAlias())) {
        return false;
      }
    } while (getLocalizedLabel().equals(((AttributeFilter)paramObject).getLocalizedLabel()));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.AttributeFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */