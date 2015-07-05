package com.ooyala.android;

import java.util.HashMap;
import java.util.Map;

public final class LocalizationSupport
{
  private static Map<String, String> currentLocalizedStrings = null;
  private static Map<String, Map<String, String>> defaultLocales = null;
  
  private static void createDefaultLocales()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("LIVE", "LIVE");
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("LIVE", "ライブビデオ");
    defaultLocales = new HashMap();
    defaultLocales.put("en_US", localHashMap1);
    defaultLocales.put("ja_JP", localHashMap2);
    currentLocalizedStrings = loadLocalizedStrings("en_US");
  }
  
  public static Map<String, String> loadLocalizedStrings(String paramString)
  {
    try
    {
      if (defaultLocales == null) {
        createDefaultLocales();
      }
      paramString = (Map)defaultLocales.get(paramString);
      return paramString;
    }
    finally {}
  }
  
  public static String localizedStringFor(String paramString)
  {
    try
    {
      if (currentLocalizedStrings == null) {
        createDefaultLocales();
      }
      paramString = (String)currentLocalizedStrings.get(paramString);
      return paramString;
    }
    finally {}
  }
  
  public static void useLocalizedStrings(Map<String, String> paramMap)
  {
    try
    {
      if (currentLocalizedStrings == null) {
        createDefaultLocales();
      }
      currentLocalizedStrings = paramMap;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.LocalizationSupport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */