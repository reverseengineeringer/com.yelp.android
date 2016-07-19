package com.adjust.sdk.plugin;

import android.net.Uri;
import com.adjust.sdk.AdjustEvent;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class AdjustCriteo
{
  private static int MAX_VIEW_LISTING_PRODUCTS = 3;
  private static String checkInDateInternal;
  private static String checkOutDateInternal;
  private static String hashEmailInternal;
  private static ILogger logger = ;
  private static String partnerIdInternal;
  
  private static String createCriteoVBFromProducts(List<CriteoProduct> paramList)
  {
    Object localObject = paramList;
    if (paramList == null)
    {
      logger.warn("Criteo Event product list is empty. It will sent as empty.", new Object[0]);
      localObject = new ArrayList();
    }
    paramList = new StringBuffer("[");
    int j = ((List)localObject).size();
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        CriteoProduct localCriteoProduct = (CriteoProduct)((List)localObject).get(i);
        paramList.append(String.format(Locale.US, "{\"i\":\"%s\",\"pr\":%f,\"q\":%d}", new Object[] { productID, Float.valueOf(price), Integer.valueOf(quantity) }));
        i += 1;
        if (i != j) {}
      }
      else
      {
        paramList.append("]");
      }
      try
      {
        paramList = URLEncoder.encode(paramList.toString(), "UTF-8");
        return paramList;
      }
      catch (UnsupportedEncodingException paramList)
      {
        logger.error("error converting criteo products (%s)", new Object[] { paramList.getMessage() });
      }
      paramList.append(",");
    }
    return null;
  }
  
  private static String createCriteoVLFromProducts(List<String> paramList)
  {
    Object localObject = paramList;
    if (paramList == null)
    {
      logger.warn("Criteo View Listing product ids list is null. It will sent as empty.", new Object[0]);
      localObject = new ArrayList();
    }
    paramList = new StringBuffer("[");
    int j = ((List)localObject).size();
    if (j > MAX_VIEW_LISTING_PRODUCTS) {
      logger.warn("Criteo View Listing should only have at most 3 product ids. The rest will be discarded.", new Object[0]);
    }
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        String str = (String)((List)localObject).get(i);
        paramList.append(String.format(Locale.US, "\"%s\"", new Object[] { str }));
        i += 1;
        if ((i != j) && (i < MAX_VIEW_LISTING_PRODUCTS)) {}
      }
      else
      {
        paramList.append("]");
      }
      try
      {
        paramList = URLEncoder.encode(paramList.toString(), "UTF-8");
        return paramList;
      }
      catch (UnsupportedEncodingException paramList)
      {
        logger.error("error converting criteo product ids (%s)", new Object[] { paramList.getMessage() });
      }
      paramList.append(",");
    }
    return null;
  }
  
  public static void injectAchievementUnlockedIntoEvent(AdjustEvent paramAdjustEvent, String paramString1, String paramString2)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("ui_achievmnt", paramString1);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectCartIntoEvent(AdjustEvent paramAdjustEvent, List<CriteoProduct> paramList, String paramString)
  {
    paramList = createCriteoVBFromProducts(paramList);
    paramAdjustEvent.addPartnerParameter("customer_id", paramString);
    paramAdjustEvent.addPartnerParameter("criteo_p", paramList);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectCustomEvent2IntoEvent(AdjustEvent paramAdjustEvent, String paramString1, long paramLong, String paramString2)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("ui_data2", paramString1);
    paramAdjustEvent.addPartnerParameter("ui_data3", String.valueOf(paramLong));
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectCustomEventIntoEvent(AdjustEvent paramAdjustEvent, String paramString1, String paramString2)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("ui_data", paramString1);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectDeeplinkIntoEvent(AdjustEvent paramAdjustEvent, Uri paramUri)
  {
    if (paramUri == null) {
      return;
    }
    paramAdjustEvent.addPartnerParameter("criteo_deeplink", paramUri.toString());
    injectOptionalParams(paramAdjustEvent);
  }
  
  private static void injectHashEmail(AdjustEvent paramAdjustEvent)
  {
    if ((hashEmailInternal == null) || (hashEmailInternal.isEmpty())) {
      return;
    }
    paramAdjustEvent.addPartnerParameter("criteo_email_hash", hashEmailInternal);
  }
  
  public static void injectHashedEmailIntoCriteoEvents(String paramString)
  {
    hashEmailInternal = paramString;
  }
  
  private static void injectOptionalParams(AdjustEvent paramAdjustEvent)
  {
    injectHashEmail(paramAdjustEvent);
    injectSearchDates(paramAdjustEvent);
    injectPartnerId(paramAdjustEvent);
  }
  
  private static void injectPartnerId(AdjustEvent paramAdjustEvent)
  {
    if ((partnerIdInternal == null) || (partnerIdInternal.isEmpty())) {
      return;
    }
    paramAdjustEvent.addPartnerParameter("criteo_partner_id", partnerIdInternal);
  }
  
  public static void injectPartnerIdIntoCriteoEvents(String paramString)
  {
    partnerIdInternal = paramString;
  }
  
  private static void injectSearchDates(AdjustEvent paramAdjustEvent)
  {
    if ((checkInDateInternal == null) || (checkInDateInternal.isEmpty()) || (checkOutDateInternal == null) || (checkOutDateInternal.isEmpty())) {
      return;
    }
    paramAdjustEvent.addPartnerParameter("din", checkInDateInternal);
    paramAdjustEvent.addPartnerParameter("dout", checkOutDateInternal);
  }
  
  public static void injectTransactionConfirmedIntoEvent(AdjustEvent paramAdjustEvent, List<CriteoProduct> paramList, String paramString1, String paramString2)
  {
    paramList = createCriteoVBFromProducts(paramList);
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("transaction_id", paramString1);
    paramAdjustEvent.addPartnerParameter("criteo_p", paramList);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectUserLevelIntoEvent(AdjustEvent paramAdjustEvent, long paramLong, String paramString)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString);
    paramAdjustEvent.addPartnerParameter("ui_level", String.valueOf(paramLong));
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectUserStatusIntoEvent(AdjustEvent paramAdjustEvent, String paramString1, String paramString2)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("ui_status", paramString1);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectViewListingIntoEvent(AdjustEvent paramAdjustEvent, List<String> paramList, String paramString)
  {
    paramList = createCriteoVLFromProducts(paramList);
    paramAdjustEvent.addPartnerParameter("customer_id", paramString);
    paramAdjustEvent.addPartnerParameter("criteo_p", paramList);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectViewProductIntoEvent(AdjustEvent paramAdjustEvent, String paramString1, String paramString2)
  {
    paramAdjustEvent.addPartnerParameter("customer_id", paramString2);
    paramAdjustEvent.addPartnerParameter("criteo_p", paramString1);
    injectOptionalParams(paramAdjustEvent);
  }
  
  public static void injectViewSearchDatesIntoCriteoEvents(String paramString1, String paramString2)
  {
    checkInDateInternal = paramString1;
    checkOutDateInternal = paramString2;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.plugin.AdjustCriteo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */