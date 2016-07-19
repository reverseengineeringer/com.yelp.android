package com.yelp.android.services;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.f;
import com.yelp.android.util.YelpLog;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class h
  extends d
{
  private static final SecureRandom d = new SecureRandom();
  private static final HashSet<String> e = new HashSet(Arrays.asList(new String[] { "asid", "aidx", "ref", "ap", "location_lat", "location_long", "location_acc", "mode", "nonce", "time" }));
  private static final HashSet<String> f = new HashSet(Arrays.asList(new String[] { "device", "y_device" }));
  private final LinkedHashMap<String, String> g = new LinkedHashMap();
  private final f h;
  private final com.yelp.android.appdata.d i;
  
  public h(String paramString)
  {
    this(paramString, BaseYelpApplication.K().h(), BaseYelpApplication.K().I());
  }
  
  public h(String paramString, f paramf, com.yelp.android.appdata.d paramd)
  {
    super(paramString, i.g());
    h = paramf;
    i = paramd;
  }
  
  private String a(Uri paramUri)
  {
    return paramUri.buildUpon().encodedQuery(d()).build().toString();
  }
  
  private static void a(StringBuilder paramStringBuilder, Map<String, String> paramMap, Set<String>... paramVarArgs)
  {
    HashSet localHashSet = new HashSet();
    int k = paramVarArgs.length;
    int j = 0;
    while (j < k)
    {
      localHashSet.addAll(paramVarArgs[j]);
      j += 1;
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      paramVarArgs = (Map.Entry)paramMap.next();
      if (!localHashSet.contains(paramVarArgs.getKey()))
      {
        paramStringBuilder.append((String)paramVarArgs.getKey());
        paramStringBuilder.append("=");
        paramStringBuilder.append(URLEncoder.encode((String)paramVarArgs.getValue()));
        paramStringBuilder.append(",");
      }
    }
  }
  
  private String b(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    paramMap1 = paramMap1.entrySet().iterator();
    while (paramMap1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap1.next();
      if (f.contains(localEntry.getKey())) {
        paramMap2.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    return com.yelp.android.util.a.a(paramMap2);
  }
  
  private String c()
  {
    HashMap localHashMap = new HashMap(h.g());
    localHashMap.putAll(b);
    return a(localHashMap, new HashMap(g));
  }
  
  protected static String c(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = d(paramString2, paramString1);
      return "_" + String.valueOf(a.a(paramString1));
    }
    catch (GeneralSecurityException paramString1)
    {
      YelpLog.e(null, "Can't sign URLs with HMAC-SHA1. The universe is broken.", paramString1);
    }
    return "BROKEN_SIGNATURE";
  }
  
  private String d()
  {
    LinkedHashMap localLinkedHashMap = h.g();
    StringBuilder localStringBuilder = new StringBuilder(500);
    if (!b.containsKey("xref"))
    {
      localObject1 = i.aj();
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        b.put("xref", localObject1);
      }
    }
    b.put("time", String.valueOf(System.currentTimeMillis() / 1000L));
    Object localObject1 = new byte[4];
    d.nextBytes((byte[])localObject1);
    b.put("nonce", String.valueOf(a.a((byte[])localObject1)));
    localObject1 = b.keySet().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((Iterator)localObject1).next();
      String str = (String)b.get(localObject2);
      if (str == null) {
        throw new IllegalArgumentException("Key " + localObject2 + " has null value");
      }
      localStringBuilder.append(localObject2);
      localStringBuilder.append("=");
      localStringBuilder.append(URLEncoder.encode(str));
      localStringBuilder.append("&");
    }
    localObject1 = localLinkedHashMap.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((Iterator)localObject1).next();
      if ((!b.containsKey(localObject2)) && (!f.contains(localObject2)))
      {
        localStringBuilder.append(localObject2);
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode((String)localLinkedHashMap.get(localObject2)));
        localStringBuilder.append("&");
      }
    }
    localStringBuilder.append("efs=");
    localStringBuilder.append(URLEncoder.encode(b(localLinkedHashMap, new HashMap(g))));
    localStringBuilder.append("&signature=");
    localStringBuilder.append(URLEncoder.encode(c(c(), i.i())));
    return localStringBuilder.toString();
  }
  
  public static byte[] d(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, InvalidKeyException
  {
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(new SecretKeySpec(paramString1.getBytes(), "HmacSHA1"));
    return localMac.doFinal(paramString2.getBytes());
  }
  
  public h a(String paramString, double paramDouble)
  {
    return b(paramString, com.yelp.android.util.d.a(Double.valueOf(paramDouble)));
  }
  
  public String a()
  {
    Uri.Builder localBuilder = a.buildUpon().encodedAuthority(c);
    localBuilder.scheme("https");
    return a(localBuilder.build());
  }
  
  public String a(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    int m = 0;
    paramMap1.put("efs", b(paramMap1, paramMap2));
    paramMap1.keySet().removeAll(f);
    paramMap2 = new String[paramMap1.size()];
    paramMap1 = paramMap1.entrySet().iterator();
    int j = 0;
    int k = 0;
    while (paramMap1.hasNext())
    {
      localObject = (Map.Entry)paramMap1.next();
      paramMap2[k] = String.format("%s=%s", new Object[] { ((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue() });
      int n = paramMap2[k].length();
      k += 1;
      j = n + j;
    }
    Arrays.sort(paramMap2);
    paramMap1 = new StringBuilder(j);
    Object localObject = a.getPath();
    if (!((String)localObject).startsWith("/")) {
      paramMap1.append('/');
    }
    paramMap1.append((String)localObject);
    k = paramMap2.length;
    j = m;
    while (j < k)
    {
      paramMap1.append(paramMap2[j]);
      j += 1;
    }
    return paramMap1.toString();
  }
  
  public h b(String paramString1, String paramString2)
  {
    g.put(paramString1, paramString2);
    return this;
  }
  
  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder(500);
    a(localStringBuilder, b, new Set[] { e });
    a(localStringBuilder, g, new Set[] { e, b.keySet() });
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */