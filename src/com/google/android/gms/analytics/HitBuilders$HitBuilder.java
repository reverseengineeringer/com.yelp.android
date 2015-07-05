package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HitBuilders$HitBuilder<T extends HitBuilder>
{
  private Map<String, String> BA = new HashMap();
  ProductAction BB;
  Map<String, List<Product>> BC = new HashMap();
  List<Promotion> BD = new ArrayList();
  List<Product> BE = new ArrayList();
  
  public T addImpression(Product paramProduct, String paramString)
  {
    if (paramProduct == null)
    {
      ae.W("product should be non-null");
      return this;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!BC.containsKey(str)) {
      BC.put(str, new ArrayList());
    }
    ((List)BC.get(str)).add(paramProduct);
    return this;
  }
  
  public T addProduct(Product paramProduct)
  {
    if (paramProduct == null)
    {
      ae.W("product should be non-null");
      return this;
    }
    BE.add(paramProduct);
    return this;
  }
  
  public T addPromotion(Promotion paramPromotion)
  {
    if (paramPromotion == null)
    {
      ae.W("promotion should be non-null");
      return this;
    }
    BD.add(paramPromotion);
    return this;
  }
  
  public Map<String, String> build()
  {
    HashMap localHashMap = new HashMap(BA);
    if (BB != null) {
      localHashMap.putAll(BB.build());
    }
    Iterator localIterator = BD.iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Promotion)localIterator.next()).aq(s.B(i)));
      i += 1;
    }
    localIterator = BE.iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Product)localIterator.next()).aq(s.A(i)));
      i += 1;
    }
    localIterator = BC.entrySet().iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (List)localEntry.getValue();
      String str = s.D(i);
      localObject = ((List)localObject).iterator();
      int j = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((Product)((Iterator)localObject).next()).aq(str + s.C(j)));
        j += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getKey())) {
        localHashMap.put(str + "nm", localEntry.getKey());
      }
      i += 1;
    }
    return localHashMap;
  }
  
  protected String get(String paramString)
  {
    return (String)BA.get(paramString);
  }
  
  public final T set(String paramString1, String paramString2)
  {
    y.eK().a(y.a.zW);
    if (paramString1 != null)
    {
      BA.put(paramString1, paramString2);
      return this;
    }
    ae.W(" HitBuilder.set() called with a null paramName.");
    return this;
  }
  
  public final T setAll(Map<String, String> paramMap)
  {
    y.eK().a(y.a.zX);
    if (paramMap == null) {
      return this;
    }
    BA.putAll(new HashMap(paramMap));
    return this;
  }
  
  public T setCampaignParamsFromUrl(String paramString)
  {
    y.eK().a(y.a.zZ);
    paramString = an.ao(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = an.an(paramString);
    set("&cc", (String)paramString.get("utm_content"));
    set("&cm", (String)paramString.get("utm_medium"));
    set("&cn", (String)paramString.get("utm_campaign"));
    set("&cs", (String)paramString.get("utm_source"));
    set("&ck", (String)paramString.get("utm_term"));
    set("&ci", (String)paramString.get("utm_id"));
    set("&gclid", (String)paramString.get("gclid"));
    set("&dclid", (String)paramString.get("dclid"));
    set("&gmob_t", (String)paramString.get("gmob_t"));
    return this;
  }
  
  public T setCustomDimension(int paramInt, String paramString)
  {
    set(s.y(paramInt), paramString);
    return this;
  }
  
  public T setCustomMetric(int paramInt, float paramFloat)
  {
    set(s.z(paramInt), Float.toString(paramFloat));
    return this;
  }
  
  protected T setHitType(String paramString)
  {
    set("&t", paramString);
    return this;
  }
  
  public T setNewSession()
  {
    set("&sc", "start");
    return this;
  }
  
  public T setNonInteraction(boolean paramBoolean)
  {
    set("&ni", an.E(paramBoolean));
    return this;
  }
  
  public T setProductAction(ProductAction paramProductAction)
  {
    BB = paramProductAction;
    return this;
  }
  
  public T setPromotionAction(String paramString)
  {
    BA.put("&promoa", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.HitBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */