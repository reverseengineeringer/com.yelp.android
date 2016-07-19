package com.google.android.gms.measurement.internal;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.la.a;
import com.google.android.gms.internal.la.b;
import com.google.android.gms.internal.la.c;
import com.google.android.gms.internal.la.d;
import com.google.android.gms.internal.la.e;
import com.google.android.gms.internal.la.f;
import com.google.android.gms.internal.la.g;
import com.google.android.gms.internal.zzsn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.BitSet;
import java.util.zip.GZIPOutputStream;

public class k
  extends ai
{
  k(ag paramag)
  {
    super(paramag);
  }
  
  private Object a(int paramInt, Object paramObject, boolean paramBoolean)
  {
    Object localObject;
    if (paramObject == null) {
      localObject = null;
    }
    do
    {
      do
      {
        do
        {
          return localObject;
          localObject = paramObject;
        } while ((paramObject instanceof Long));
        localObject = paramObject;
      } while ((paramObject instanceof Float));
      if ((paramObject instanceof Integer)) {
        return Long.valueOf(((Integer)paramObject).intValue());
      }
      if ((paramObject instanceof Byte)) {
        return Long.valueOf(((Byte)paramObject).byteValue());
      }
      if ((paramObject instanceof Short)) {
        return Long.valueOf(((Short)paramObject).shortValue());
      }
      if ((paramObject instanceof Boolean))
      {
        if (((Boolean)paramObject).booleanValue()) {}
        for (long l = 1L;; l = 0L) {
          return Long.valueOf(l);
        }
      }
      if ((paramObject instanceof Double)) {
        return Float.valueOf((float)((Double)paramObject).doubleValue());
      }
      if ((!(paramObject instanceof String)) && (!(paramObject instanceof Character)) && (!(paramObject instanceof CharSequence))) {
        break;
      }
      paramObject = String.valueOf(paramObject);
      localObject = paramObject;
    } while (((String)paramObject).length() <= paramInt);
    if (paramBoolean) {
      return ((String)paramObject).substring(0, paramInt);
    }
    return null;
    return null;
  }
  
  private void a(String paramString1, String paramString2, int paramInt, Object paramObject)
  {
    if (paramObject == null) {
      s().w().a(paramString1 + " value can't be null. Ignoring " + paramString1, paramString2);
    }
    do
    {
      do
      {
        return;
      } while (((paramObject instanceof Long)) || ((paramObject instanceof Float)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Double)) || ((!(paramObject instanceof String)) && (!(paramObject instanceof Character)) && (!(paramObject instanceof CharSequence))));
      paramObject = String.valueOf(paramObject);
    } while (((String)paramObject).length() <= paramInt);
    s().w().a("Ignoring " + paramString1 + ". Value is too long. name, value length", paramString2, Integer.valueOf(((String)paramObject).length()));
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      paramStringBuilder.append("  ");
      i += 1;
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, la.e parame)
  {
    if (parame == null) {
      return;
    }
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("bundle {\n");
    a(paramStringBuilder, paramInt, "protocol_version", a);
    a(paramStringBuilder, paramInt, "platform", i);
    a(paramStringBuilder, paramInt, "gmp_version", q);
    a(paramStringBuilder, paramInt, "uploading_gmp_version", r);
    a(paramStringBuilder, paramInt, "gmp_app_id", y);
    a(paramStringBuilder, paramInt, "app_id", o);
    a(paramStringBuilder, paramInt, "app_version", p);
    a(paramStringBuilder, paramInt, "dev_cert_hash", v);
    a(paramStringBuilder, paramInt, "app_store", n);
    a(paramStringBuilder, paramInt, "upload_timestamp_millis", d);
    a(paramStringBuilder, paramInt, "start_timestamp_millis", e);
    a(paramStringBuilder, paramInt, "end_timestamp_millis", f);
    a(paramStringBuilder, paramInt, "previous_bundle_start_timestamp_millis", g);
    a(paramStringBuilder, paramInt, "previous_bundle_end_timestamp_millis", h);
    a(paramStringBuilder, paramInt, "app_instance_id", u);
    a(paramStringBuilder, paramInt, "resettable_device_id", s);
    a(paramStringBuilder, paramInt, "limited_ad_tracking", t);
    a(paramStringBuilder, paramInt, "os_version", j);
    a(paramStringBuilder, paramInt, "device_model", k);
    a(paramStringBuilder, paramInt, "user_default_language", l);
    a(paramStringBuilder, paramInt, "time_zone_offset_minutes", m);
    a(paramStringBuilder, paramInt, "bundle_sequential_index", w);
    a(paramStringBuilder, paramInt, "service_upload", z);
    a(paramStringBuilder, paramInt, "health_monitor", x);
    a(paramStringBuilder, paramInt, c);
    a(paramStringBuilder, paramInt, A);
    a(paramStringBuilder, paramInt, b);
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, la.f paramf)
  {
    int j = 0;
    if (paramf == null) {
      return;
    }
    int k = paramInt + 1;
    a(paramStringBuilder, k);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" {\n");
    int m;
    int i;
    long l;
    if (b != null)
    {
      a(paramStringBuilder, k + 1);
      paramStringBuilder.append("results: ");
      paramString = b;
      m = paramString.length;
      i = 0;
      paramInt = 0;
      while (i < m)
      {
        l = paramString[i];
        if (paramInt != 0) {
          paramStringBuilder.append(", ");
        }
        paramStringBuilder.append(Long.valueOf(l));
        i += 1;
        paramInt += 1;
      }
      paramStringBuilder.append('\n');
    }
    if (a != null)
    {
      a(paramStringBuilder, k + 1);
      paramStringBuilder.append("status: ");
      paramString = a;
      m = paramString.length;
      paramInt = 0;
      i = j;
      while (i < m)
      {
        l = paramString[i];
        if (paramInt != 0) {
          paramStringBuilder.append(", ");
        }
        paramStringBuilder.append(Long.valueOf(l));
        i += 1;
        paramInt += 1;
      }
      paramStringBuilder.append('\n');
    }
    a(paramStringBuilder, k);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, Object paramObject)
  {
    if (paramObject == null) {
      return;
    }
    a(paramStringBuilder, paramInt + 1);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(": ");
    paramStringBuilder.append(paramObject);
    paramStringBuilder.append('\n');
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, la.a[] paramArrayOfa)
  {
    if (paramArrayOfa == null) {
      return;
    }
    int i = paramInt + 1;
    int j = paramArrayOfa.length;
    paramInt = 0;
    label15:
    la.a locala;
    if (paramInt < j)
    {
      locala = paramArrayOfa[paramInt];
      if (locala != null) {
        break label38;
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label15;
      break;
      label38:
      a(paramStringBuilder, i);
      paramStringBuilder.append("audience_membership {\n");
      a(paramStringBuilder, i, "audience_id", a);
      a(paramStringBuilder, i, "new_audience", d);
      a(paramStringBuilder, i, "current_data", b);
      a(paramStringBuilder, i, "previous_data", c);
      a(paramStringBuilder, i);
      paramStringBuilder.append("}\n");
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, la.b[] paramArrayOfb)
  {
    if (paramArrayOfb == null) {
      return;
    }
    int i = paramInt + 1;
    int j = paramArrayOfb.length;
    paramInt = 0;
    label15:
    la.b localb;
    if (paramInt < j)
    {
      localb = paramArrayOfb[paramInt];
      if (localb != null) {
        break label38;
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label15;
      break;
      label38:
      a(paramStringBuilder, i);
      paramStringBuilder.append("event {\n");
      a(paramStringBuilder, i, "name", b);
      a(paramStringBuilder, i, "timestamp_millis", c);
      a(paramStringBuilder, i, "previous_timestamp_millis", d);
      a(paramStringBuilder, i, "count", e);
      a(paramStringBuilder, i, a);
      a(paramStringBuilder, i);
      paramStringBuilder.append("}\n");
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, la.c[] paramArrayOfc)
  {
    if (paramArrayOfc == null) {
      return;
    }
    int i = paramInt + 1;
    int j = paramArrayOfc.length;
    paramInt = 0;
    label15:
    la.c localc;
    if (paramInt < j)
    {
      localc = paramArrayOfc[paramInt];
      if (localc != null) {
        break label38;
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label15;
      break;
      label38:
      a(paramStringBuilder, i);
      paramStringBuilder.append("event {\n");
      a(paramStringBuilder, i, "name", a);
      a(paramStringBuilder, i, "string_value", b);
      a(paramStringBuilder, i, "int_value", c);
      a(paramStringBuilder, i, "float_value", d);
      a(paramStringBuilder, i);
      paramStringBuilder.append("}\n");
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, la.g[] paramArrayOfg)
  {
    if (paramArrayOfg == null) {
      return;
    }
    int i = paramInt + 1;
    int j = paramArrayOfg.length;
    paramInt = 0;
    label15:
    la.g localg;
    if (paramInt < j)
    {
      localg = paramArrayOfg[paramInt];
      if (localg != null) {
        break label38;
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label15;
      break;
      label38:
      a(paramStringBuilder, i);
      paramStringBuilder.append("user_property {\n");
      a(paramStringBuilder, i, "set_timestamp_millis", a);
      a(paramStringBuilder, i, "name", b);
      a(paramStringBuilder, i, "string_value", c);
      a(paramStringBuilder, i, "int_value", d);
      a(paramStringBuilder, i, "float_value", e);
      a(paramStringBuilder, i);
      paramStringBuilder.append("}\n");
    }
  }
  
  public static boolean a(Context paramContext, Class<? extends Service> paramClass)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getServiceInfo(new ComponentName(paramContext, paramClass), 4);
      if (paramContext != null)
      {
        boolean bool = enabled;
        if (bool) {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean a(Context paramContext, Class<? extends BroadcastReceiver> paramClass, boolean paramBoolean)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getReceiverInfo(new ComponentName(paramContext, paramClass), 2);
      if ((paramContext != null) && (enabled)) {
        if (paramBoolean)
        {
          paramBoolean = exported;
          if (!paramBoolean) {}
        }
        else
        {
          return true;
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean a(Bundle paramBundle)
  {
    return paramBundle.getLong("_c") == 1L;
  }
  
  static boolean a(String paramString)
  {
    boolean bool = false;
    zzx.zzcM(paramString);
    if (paramString.charAt(0) != '_') {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null)) {
      return true;
    }
    if (paramString1 == null) {
      return false;
    }
    return paramString1.equals(paramString2);
  }
  
  public static boolean a(long[] paramArrayOfLong, int paramInt)
  {
    if (paramInt >= paramArrayOfLong.length * 64) {}
    while ((paramArrayOfLong[(paramInt / 64)] & 1L << paramInt % 64) == 0L) {
      return false;
    }
    return true;
  }
  
  public static long[] a(BitSet paramBitSet)
  {
    int k = (paramBitSet.length() + 63) / 64;
    long[] arrayOfLong = new long[k];
    int i = 0;
    if (i < k)
    {
      arrayOfLong[i] = 0L;
      int j = 0;
      for (;;)
      {
        if ((j >= 64) || (i * 64 + j >= paramBitSet.length()))
        {
          i += 1;
          break;
        }
        if (paramBitSet.get(i * 64 + j)) {
          arrayOfLong[i] |= 1L << j;
        }
        j += 1;
      }
    }
    return arrayOfLong;
  }
  
  public static String b(la.d paramd)
  {
    if (paramd == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\nbatch {\n");
    if (a != null)
    {
      paramd = a;
      int j = paramd.length;
      int i = 0;
      if (i < j)
      {
        la.e locale = paramd[i];
        if (locale == null) {}
        for (;;)
        {
          i += 1;
          break;
          a(localStringBuilder, 1, locale);
        }
      }
    }
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
  
  static long c(byte[] paramArrayOfByte)
  {
    int j = 0;
    zzx.zzz(paramArrayOfByte);
    if (paramArrayOfByte.length > 0) {}
    long l;
    for (boolean bool = true;; bool = false)
    {
      zzx.zzab(bool);
      l = 0L;
      int i = paramArrayOfByte.length - 1;
      while ((i >= 0) && (i >= paramArrayOfByte.length - 8))
      {
        l += ((paramArrayOfByte[i] & 0xFF) << j);
        j += 8;
        i -= 1;
      }
    }
    return l;
  }
  
  static MessageDigest e(String paramString)
  {
    int i = 0;
    while (i < 2) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
        if (localMessageDigest != null) {
          return localMessageDigest;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  public static boolean g(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.startsWith("_"));
  }
  
  private int h(String paramString)
  {
    if ("_ldl".equals(paramString)) {
      return u().z();
    }
    return u().y();
  }
  
  public Object a(String paramString, Object paramObject)
  {
    if (g(paramString)) {}
    for (int i = u().x();; i = u().w()) {
      return a(i, paramObject, false);
    }
  }
  
  public void a(Bundle paramBundle, String paramString, Object paramObject)
  {
    if ((paramObject instanceof Long)) {
      paramBundle.putLong(paramString, ((Long)paramObject).longValue());
    }
    do
    {
      return;
      if ((paramObject instanceof Float))
      {
        paramBundle.putFloat(paramString, ((Float)paramObject).floatValue());
        return;
      }
      if ((paramObject instanceof String))
      {
        paramBundle.putString(paramString, String.valueOf(paramObject));
        return;
      }
    } while (paramString == null);
    s().w().a("Not putting event parameter. Invalid value type. name, type", paramString, paramObject.getClass().getSimpleName());
  }
  
  public void a(la.c paramc, Object paramObject)
  {
    zzx.zzz(paramObject);
    b = null;
    c = null;
    d = null;
    if ((paramObject instanceof String))
    {
      b = ((String)paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      c = ((Long)paramObject);
      return;
    }
    if ((paramObject instanceof Float))
    {
      d = ((Float)paramObject);
      return;
    }
    s().b().a("Ignoring invalid (type) event param value", paramObject);
  }
  
  public void a(la.g paramg, Object paramObject)
  {
    zzx.zzz(paramObject);
    c = null;
    d = null;
    e = null;
    if ((paramObject instanceof String))
    {
      c = ((String)paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      d = ((Long)paramObject);
      return;
    }
    if ((paramObject instanceof Float))
    {
      e = ((Float)paramObject);
      return;
    }
    s().b().a("Ignoring invalid (type) user attribute value", paramObject);
  }
  
  void a(String paramString1, int paramInt, String paramString2)
  {
    if (paramString2 == null) {
      throw new IllegalArgumentException(paramString1 + " name is required and can't be null");
    }
    if (paramString2.length() == 0) {
      throw new IllegalArgumentException(paramString1 + " name is required and can't be empty");
    }
    char c = paramString2.charAt(0);
    if ((!Character.isLetter(c)) && (c != '_')) {
      throw new IllegalArgumentException(paramString1 + " name must start with a letter or _");
    }
    int i = 1;
    while (i < paramString2.length())
    {
      c = paramString2.charAt(i);
      if ((c != '_') && (!Character.isLetterOrDigit(c))) {
        throw new IllegalArgumentException(paramString1 + " name must consist of letters, digits or _ (underscores)");
      }
      i += 1;
    }
    if (paramString2.length() > paramInt) {
      throw new IllegalArgumentException(paramString1 + " name is too long. The maximum supported length is " + paramInt);
    }
  }
  
  public boolean a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 == 0L) || (paramLong2 <= 0L)) {}
    while (Math.abs(l().a() - paramLong1) > paramLong2) {
      return true;
    }
    return false;
  }
  
  public byte[] a(la.d paramd)
  {
    try
    {
      byte[] arrayOfByte = new byte[paramd.g()];
      zzsn localzzsn = zzsn.a(arrayOfByte);
      paramd.a(localzzsn);
      localzzsn.b();
      return arrayOfByte;
    }
    catch (IOException paramd)
    {
      s().b().a("Data loss. Failed to serialize batch", paramd);
    }
    return null;
  }
  
  public byte[] a(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localGZIPOutputStream.write(paramArrayOfByte);
      localGZIPOutputStream.close();
      localByteArrayOutputStream.close();
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      return paramArrayOfByte;
    }
    catch (IOException paramArrayOfByte)
    {
      s().b().a("Failed to gzip content", paramArrayOfByte);
      throw paramArrayOfByte;
    }
  }
  
  public void b(String paramString)
  {
    a("event", u().c(), paramString);
  }
  
  public void b(String paramString, Object paramObject)
  {
    if ("_ldl".equals(paramString))
    {
      a("user attribute referrer", paramString, h(paramString), paramObject);
      return;
    }
    a("user attribute", paramString, h(paramString), paramObject);
  }
  
  /* Error */
  public byte[] b(byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: new 642	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 644	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_1
    //   9: new 646	java/util/zip/GZIPInputStream
    //   12: dup
    //   13: aload_1
    //   14: invokespecial 649	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_3
    //   18: new 605	java/io/ByteArrayOutputStream
    //   21: dup
    //   22: invokespecial 606	java/io/ByteArrayOutputStream:<init>	()V
    //   25: astore 4
    //   27: sipush 1024
    //   30: newarray <illegal type>
    //   32: astore 5
    //   34: aload_3
    //   35: aload 5
    //   37: invokevirtual 653	java/util/zip/GZIPInputStream:read	([B)I
    //   40: istore_2
    //   41: iload_2
    //   42: ifgt +17 -> 59
    //   45: aload_3
    //   46: invokevirtual 654	java/util/zip/GZIPInputStream:close	()V
    //   49: aload_1
    //   50: invokevirtual 655	java/io/ByteArrayInputStream:close	()V
    //   53: aload 4
    //   55: invokevirtual 623	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   58: areturn
    //   59: aload 4
    //   61: aload 5
    //   63: iconst_0
    //   64: iload_2
    //   65: invokevirtual 658	java/io/ByteArrayOutputStream:write	([BII)V
    //   68: goto -34 -> 34
    //   71: astore_1
    //   72: aload_0
    //   73: invokevirtual 73	com/google/android/gms/measurement/internal/k:s	()Lcom/google/android/gms/measurement/internal/z;
    //   76: invokevirtual 540	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
    //   79: ldc_w 660
    //   82: aload_1
    //   83: invokevirtual 99	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	k
    //   0	88	1	paramArrayOfByte	byte[]
    //   40	25	2	i	int
    //   17	29	3	localGZIPInputStream	java.util.zip.GZIPInputStream
    //   25	35	4	localByteArrayOutputStream	ByteArrayOutputStream
    //   32	30	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   0	34	71	java/io/IOException
    //   34	41	71	java/io/IOException
    //   45	59	71	java/io/IOException
    //   59	68	71	java/io/IOException
  }
  
  public Object c(String paramString, Object paramObject)
  {
    if ("_ldl".equals(paramString)) {
      return a(h(paramString), paramObject, true);
    }
    return a(h(paramString), paramObject, false);
  }
  
  public void c(String paramString)
  {
    a("user attribute", u().v(), paramString);
  }
  
  public long d(byte[] paramArrayOfByte)
  {
    zzx.zzz(paramArrayOfByte);
    MessageDigest localMessageDigest = e("MD5");
    if (localMessageDigest == null)
    {
      s().b().a("Failed to get MD5");
      return 0L;
    }
    return c(localMessageDigest.digest(paramArrayOfByte));
  }
  
  public void d(String paramString)
  {
    a("event param", u().v(), paramString);
  }
  
  public boolean f(String paramString)
  {
    f();
    if (m().checkCallingOrSelfPermission(paramString) == 0) {
      return true;
    }
    s().y().a("Permission not granted", paramString);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */