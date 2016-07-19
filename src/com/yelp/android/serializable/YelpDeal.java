package com.yelp.android.serializable;

import android.content.Context;
import android.os.SystemClock;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class YelpDeal
  extends _YelpDeal
{
  public static final JsonParser.DualCreator<YelpDeal> CREATOR = new YelpDeal.1();
  public static final Comparator<YelpDeal> b = new YelpDeal.2();
  public static final Comparator<YelpDeal> c = new YelpDeal.3();
  protected EnumMap<DealPurchase.PurchaseStatus, ArrayList<DealPurchase>> a;
  
  private EnumMap<DealPurchase.PurchaseStatus, ArrayList<DealPurchase>> C()
  {
    if (a == null)
    {
      a = new EnumMap(DealPurchase.PurchaseStatus.class);
      Object localObject1 = DealPurchase.PurchaseStatus.values();
      int j = localObject1.length;
      int i = 0;
      Object localObject2;
      while (i < j)
      {
        localObject2 = localObject1[i];
        a.put((Enum)localObject2, new ArrayList());
        i += 1;
      }
      localObject1 = e.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (DealPurchase)((Iterator)localObject1).next();
        ((ArrayList)a.get(((DealPurchase)localObject2).c())).add(localObject2);
      }
      if (((ArrayList)a.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE)).size() > 0) {
        Collections.sort((List)a.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE), DealPurchase.a);
      }
      if (((ArrayList)a.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED)).size() > 0) {
        Collections.sort((List)a.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED), DealPurchase.a);
      }
      if (((ArrayList)a.get(DealPurchase.PurchaseStatus.REDEEMED)).size() > 0) {
        Collections.sort((List)a.get(DealPurchase.PurchaseStatus.REDEEMED), DealPurchase.b);
      }
    }
    return a;
  }
  
  public DealPurchase a()
  {
    DealPurchase localDealPurchase2 = a(DealPurchase.PurchaseStatus.USABLE_FULLPRICE);
    DealPurchase localDealPurchase1 = localDealPurchase2;
    if (localDealPurchase2 == null) {
      localDealPurchase1 = a(DealPurchase.PurchaseStatus.USABLE_EXPIRED);
    }
    return localDealPurchase1;
  }
  
  public DealPurchase a(DealPurchase.PurchaseStatus paramPurchaseStatus)
  {
    C();
    if (((ArrayList)a.get(paramPurchaseStatus)).size() > 0) {
      return (DealPurchase)((ArrayList)a.get(paramPurchaseStatus)).get(0);
    }
    return null;
  }
  
  public YelpDealOption a(String paramString)
  {
    Iterator localIterator = y().iterator();
    while (localIterator.hasNext())
    {
      YelpDealOption localYelpDealOption = (YelpDealOption)localIterator.next();
      if (c.equals(paramString)) {
        return localYelpDealOption;
      }
    }
    return null;
  }
  
  public String a(Context paramContext)
  {
    return paramContext.getString(2131165751, new Object[] { i, m });
  }
  
  public void a(DealPurchase paramDealPurchase)
  {
    e.remove(paramDealPurchase);
    e.add(paramDealPurchase);
    a = null;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (!j()) {
      z = (SystemClock.elapsedRealtime() + (x - y) * 1000L);
    }
  }
  
  public ArrayList<DealPurchase> b()
  {
    C();
    ArrayList localArrayList = new ArrayList((Collection)a.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE));
    localArrayList.addAll((Collection)a.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED));
    return localArrayList;
  }
  
  public ArrayList<DealPurchase> b(DealPurchase.PurchaseStatus paramPurchaseStatus)
  {
    C();
    return (ArrayList)a.get(paramPurchaseStatus);
  }
  
  public int c()
  {
    C();
    int i = ((ArrayList)a.get(DealPurchase.PurchaseStatus.USABLE_EXPIRED)).size();
    return ((ArrayList)a.get(DealPurchase.PurchaseStatus.USABLE_FULLPRICE)).size() + i;
  }
  
  public int d()
  {
    return Math.max(q(), p());
  }
  
  public int e()
  {
    if (u == -1)
    {
      if (v == -1) {
        return 0;
      }
      return 2131166441;
    }
    return 2131166605;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof _YelpDeal)) {
          return false;
        }
        paramObject = (_YelpDeal)paramObject;
        if (h != null) {
          break;
        }
      } while (h == null);
      return false;
    } while (h.equals(h));
    return false;
  }
  
  public long f()
  {
    return z;
  }
  
  public Currency g()
  {
    return Currency.getInstance(l);
  }
  
  public YelpDealOption h()
  {
    return (YelpDealOption)y().get(0);
  }
  
  public int hashCode()
  {
    if (h == null) {}
    for (int i = 0;; i = h.hashCode()) {
      return i + 31;
    }
  }
  
  public a i()
  {
    a locala = new a();
    Object localObject = g();
    NumberFormat localNumberFormat = NumberFormat.getCurrencyInstance();
    localNumberFormat.setCurrency((Currency)localObject);
    BigDecimal localBigDecimal = h().a((Currency)localObject);
    localNumberFormat.setMinimumFractionDigits(localBigDecimal.scale());
    a = localNumberFormat.format(localBigDecimal);
    localObject = h().b((Currency)localObject);
    localNumberFormat.setMinimumFractionDigits(((BigDecimal)localObject).scale());
    b = localNumberFormat.format(localObject);
    localNumberFormat.setMinimumFractionDigits(Math.max(((BigDecimal)localObject).scale(), localBigDecimal.scale()));
    c = localNumberFormat.format(((BigDecimal)localObject).subtract(localBigDecimal));
    d = (100 - localBigDecimal.multiply(new BigDecimal(100)).divide((BigDecimal)localObject, 2, RoundingMode.HALF_EVEN).intValue());
    return locala;
  }
  
  public boolean j()
  {
    return x == -1L;
  }
  
  public boolean k()
  {
    return (j()) || (z - SystemClock.elapsedRealtime() > 0L);
  }
  
  public int l()
  {
    if (s < 0) {
      return Integer.MAX_VALUE;
    }
    return s;
  }
  
  public int m()
  {
    if (t < 0) {
      return Integer.MAX_VALUE;
    }
    return t;
  }
  
  public int n()
  {
    if (r < 0) {
      return Integer.MAX_VALUE;
    }
    return r;
  }
  
  public static class a
  {
    public String a;
    public String b;
    public String c;
    public int d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpDeal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */