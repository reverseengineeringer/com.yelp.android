package com.yelp.android.ui.activities.mutatebiz;

import android.location.Address;
import android.text.TextUtils;
import java.util.Locale;

public class f
{
  static String a(Address paramAddress)
  {
    Locale localLocale = paramAddress.getLocale();
    Object localObject2 = paramAddress.getCountryName();
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = localLocale.getDisplayCountry(localLocale);
    }
    localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject2 = localLocale.getISO3Country();
    }
    localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = paramAddress.getCountryCode();
    }
    return (String)localObject1;
  }
  
  public static StringBuilder a(CharSequence paramCharSequence, Address paramAddress)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = paramAddress.getMaxAddressLineIndex();
    while (i <= j)
    {
      String str = paramAddress.getAddressLine(i);
      if ((!TextUtils.isEmpty(localStringBuilder)) && (!TextUtils.isEmpty(str))) {
        localStringBuilder.append(paramCharSequence);
      }
      localStringBuilder.append(str);
      i += 1;
    }
    return localStringBuilder;
  }
  
  public static void a(Address paramAddress, String... paramVarArgs)
  {
    int j = 0;
    int m = paramVarArgs.length;
    int i = 0;
    while (i < m)
    {
      String str = paramVarArgs[i];
      int k = j;
      if (!TextUtils.isEmpty(str))
      {
        paramAddress.setAddressLine(j, str);
        k = j + 1;
      }
      i += 1;
      j = k;
    }
  }
  
  public static boolean a(Address paramAddress1, Address paramAddress2)
  {
    int i = 0;
    boolean bool;
    if (paramAddress1.getMaxAddressLineIndex() == paramAddress2.getMaxAddressLineIndex()) {
      bool = true;
    }
    while ((i <= paramAddress1.getMaxAddressLineIndex()) && (bool))
    {
      bool = TextUtils.equals(paramAddress1.getAddressLine(i), paramAddress2.getAddressLine(i));
      i += 1;
      continue;
      bool = false;
    }
    return bool;
  }
  
  public static StringBuilder b(CharSequence paramCharSequence, Address paramAddress)
  {
    StringBuilder localStringBuilder = a(paramCharSequence, paramAddress);
    if (!TextUtils.isEmpty(localStringBuilder)) {
      localStringBuilder.append(paramCharSequence);
    }
    localStringBuilder.append(a(paramAddress));
    return localStringBuilder;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */