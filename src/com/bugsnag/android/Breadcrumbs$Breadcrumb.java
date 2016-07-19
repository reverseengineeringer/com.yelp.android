package com.bugsnag.android;

import java.util.Date;

class Breadcrumbs$Breadcrumb
{
  final String message;
  final String timestamp = DateUtils.toISO8601(new Date());
  
  Breadcrumbs$Breadcrumb(String paramString)
  {
    message = paramString.substring(0, Math.min(paramString.length(), 140));
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Breadcrumbs.Breadcrumb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */