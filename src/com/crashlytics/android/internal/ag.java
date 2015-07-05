package com.crashlytics.android.internal;

import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

final class ag
  implements X509TrustManager
{
  private final TrustManager[] a;
  private final ah b;
  private final long c;
  private final List<byte[]> d = new LinkedList();
  private final Set<X509Certificate> e = Collections.synchronizedSet(new HashSet());
  
  public ag(ah paramah, af paramaf)
  {
    a = a(paramah);
    b = paramah;
    c = -1L;
    paramah = paramaf.c();
    int j = paramah.length;
    int i = 0;
    while (i < j)
    {
      paramaf = paramah[i];
      d.add(a(paramaf));
      i += 1;
    }
  }
  
  private boolean a(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = MessageDigest.getInstance("SHA1").digest(paramX509Certificate.getPublicKey().getEncoded());
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = Arrays.equals((byte[])localIterator.next(), paramX509Certificate);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (NoSuchAlgorithmException paramX509Certificate)
    {
      throw new CertificateException(paramX509Certificate);
    }
  }
  
  private static byte[] a(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    return arrayOfByte;
  }
  
  private static TrustManager[] a(ah paramah)
  {
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance("X509");
      localTrustManagerFactory.init(a);
      paramah = localTrustManagerFactory.getTrustManagers();
      return paramah;
    }
    catch (NoSuchAlgorithmException paramah)
    {
      throw new AssertionError(paramah);
    }
    catch (KeyStoreException paramah)
    {
      throw new AssertionError(paramah);
    }
  }
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    throw new CertificateException("Client certificates not supported!");
  }
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    if (e.contains(paramArrayOfX509Certificate[0])) {
      return;
    }
    TrustManager[] arrayOfTrustManager = a;
    int j = arrayOfTrustManager.length;
    int i = 0;
    while (i < j)
    {
      ((X509TrustManager)arrayOfTrustManager[i]).checkServerTrusted(paramArrayOfX509Certificate, paramString);
      i += 1;
    }
    if ((c != -1L) && (System.currentTimeMillis() - c > 15552000000L))
    {
      cl.a().b().c("Crashlytics", "Certificate pins are stale, (" + (System.currentTimeMillis() - c) + " millis vs 15552000000" + " millis) falling back to system trust.");
      e.add(paramArrayOfX509Certificate[0]);
      return;
    }
    paramString = bu.a(paramArrayOfX509Certificate, b);
    j = paramString.length;
    i = 0;
    for (;;)
    {
      if (i >= j) {
        break label180;
      }
      if (a(paramString[i])) {
        break;
      }
      i += 1;
    }
    label180:
    throw new CertificateException("No valid pins found in chain!");
  }
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */