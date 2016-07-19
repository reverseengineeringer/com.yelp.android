package com.yelp.android.util;

import android.text.Editable;
import android.text.Html.TagHandler;
import org.xml.sax.XMLReader;

public final class StringUtils$b
  implements Html.TagHandler
{
  private int a = -1;
  
  public void handleTag(boolean paramBoolean, String paramString, Editable paramEditable, XMLReader paramXMLReader)
  {
    if ((paramBoolean) && (paramString.startsWith("mark"))) {
      a = paramEditable.length();
    }
    while ((paramBoolean) || (a == -1)) {
      return;
    }
    int i = paramString.length();
    paramEditable.setSpan(new a(paramString.substring(Math.min(i, "mark".length()), i), null), a, paramEditable.length(), 18);
    a = -1;
  }
  
  public static final class a
  {
    public final String a;
    
    private a(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.StringUtils.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */