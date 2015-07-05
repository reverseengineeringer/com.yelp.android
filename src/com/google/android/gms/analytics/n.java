package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class n<T extends m>
{
  Context mContext;
  n.a<T> yL;
  
  public n(Context paramContext, n.a<T> parama)
  {
    mContext = paramContext;
    yL = parama;
  }
  
  private T a(XmlResourceParser paramXmlResourceParser)
  {
    for (;;)
    {
      try
      {
        paramXmlResourceParser.next();
        i = paramXmlResourceParser.getEventType();
        if (i == 1) {
          continue;
        }
        if (paramXmlResourceParser.getEventType() == 2)
        {
          str1 = paramXmlResourceParser.getName().toLowerCase();
          if (!str1.equals("screenname")) {
            continue;
          }
          str1 = paramXmlResourceParser.getAttributeValue(null, "name");
          str2 = paramXmlResourceParser.nextText().trim();
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            yL.e(str1, str2);
          }
        }
      }
      catch (XmlPullParserException paramXmlResourceParser)
      {
        ae.T("Error parsing tracker configuration file: " + paramXmlResourceParser);
        return yL.er();
        if (!str1.equals("bool")) {
          continue;
        }
        String str2 = paramXmlResourceParser.getAttributeValue(null, "name");
        str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          bool = Boolean.parseBoolean(str1);
          yL.e(str2, bool);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          ae.T("Error parsing bool configuration value: " + str1);
        }
        continue;
      }
      catch (IOException paramXmlResourceParser)
      {
        int i;
        ae.T("Error parsing tracker configuration file: " + paramXmlResourceParser);
        continue;
        if (!str1.equals("integer")) {
          continue;
        }
        String str3 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str3)) {
          continue;
        }
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          i = Integer.parseInt(str1);
          yL.c(str3, i);
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          ae.T("Error parsing int configuration value: " + str1);
        }
        continue;
      }
      i = paramXmlResourceParser.next();
      continue;
      if (!str1.equals("string")) {
        continue;
      }
      str1 = paramXmlResourceParser.getAttributeValue(null, "name");
      str2 = paramXmlResourceParser.nextText().trim();
      if ((!TextUtils.isEmpty(str1)) && (str2 != null)) {
        yL.f(str1, str2);
      }
    }
  }
  
  public T x(int paramInt)
  {
    try
    {
      m localm = a(mContext.getResources().getXml(paramInt));
      return localm;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      ae.W("inflate() called with unknown resourceId: " + localNotFoundException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */