package com.ooyala.android;

import java.net.URL;
import java.util.Map;

public abstract interface SecureURLGenerator
{
  public abstract URL secureURL(String paramString1, String paramString2, Map<String, String> paramMap);
}

/* Location:
 * Qualified Name:     com.ooyala.android.SecureURLGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */