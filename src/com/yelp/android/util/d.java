package com.yelp.android.util;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class d
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static Bundle a(Bundle paramBundle, String paramString, Collection<? extends Enum<?>> paramCollection)
  {
    paramBundle.putIntArray(paramString, a(paramCollection));
    return paramBundle;
  }
  
  public static <T extends Parcelable> T a(T paramT)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.writeParcelable(paramT, 0);
    localParcel.setDataPosition(0);
    paramT = localParcel.readParcelable(paramT.getClass().getClassLoader());
    localParcel.recycle();
    return paramT;
  }
  
  public static File a(Context paramContext)
  {
    try
    {
      File localFile = a.a(paramContext);
      return localFile;
    }
    catch (Throwable localThrowable) {}
    return new File(TextUtils.join(File.separator, tmp45_38));
  }
  
  /* Error */
  public static <T extends java.io.Serializable> T a(Class<T> paramClass, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_1
    //   7: invokevirtual 129	java/lang/String:getBytes	()[B
    //   10: iconst_0
    //   11: invokestatic 135	android/util/Base64:decode	([BI)[B
    //   14: astore_1
    //   15: new 137	java/io/ByteArrayInputStream
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 140	java/io/ByteArrayInputStream:<init>	([B)V
    //   23: astore 4
    //   25: new 142	java/io/ObjectInputStream
    //   28: dup
    //   29: aload 4
    //   31: invokespecial 145	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   34: astore_1
    //   35: aload_1
    //   36: astore_2
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 149	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   42: invokevirtual 153	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   45: checkcast 155	java/io/Serializable
    //   48: astore_3
    //   49: aload 4
    //   51: invokevirtual 158	java/io/ByteArrayInputStream:close	()V
    //   54: aload_3
    //   55: astore_0
    //   56: aload_1
    //   57: ifnull +9 -> 66
    //   60: aload_1
    //   61: invokevirtual 159	java/io/ObjectInputStream:close	()V
    //   64: aload_3
    //   65: astore_0
    //   66: aload_0
    //   67: areturn
    //   68: astore_0
    //   69: aconst_null
    //   70: astore_1
    //   71: aload_1
    //   72: astore_2
    //   73: ldc -95
    //   75: ldc -93
    //   77: aload_0
    //   78: invokestatic 169	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   81: pop
    //   82: aload 4
    //   84: invokevirtual 158	java/io/ByteArrayInputStream:close	()V
    //   87: aload_1
    //   88: ifnull +7 -> 95
    //   91: aload_1
    //   92: invokevirtual 159	java/io/ObjectInputStream:close	()V
    //   95: aconst_null
    //   96: astore_0
    //   97: goto -31 -> 66
    //   100: astore_0
    //   101: aconst_null
    //   102: astore_0
    //   103: goto -37 -> 66
    //   106: astore_0
    //   107: aconst_null
    //   108: astore_2
    //   109: aload 4
    //   111: invokevirtual 158	java/io/ByteArrayInputStream:close	()V
    //   114: aload_2
    //   115: ifnull +7 -> 122
    //   118: aload_2
    //   119: invokevirtual 159	java/io/ObjectInputStream:close	()V
    //   122: aload_0
    //   123: athrow
    //   124: astore_0
    //   125: goto -71 -> 54
    //   128: astore_0
    //   129: aload_3
    //   130: astore_0
    //   131: goto -65 -> 66
    //   134: astore_0
    //   135: goto -48 -> 87
    //   138: astore_1
    //   139: goto -25 -> 114
    //   142: astore_1
    //   143: goto -21 -> 122
    //   146: astore_0
    //   147: goto -38 -> 109
    //   150: astore_0
    //   151: goto -80 -> 71
    //   154: astore_0
    //   155: aconst_null
    //   156: astore_1
    //   157: goto -86 -> 71
    //   160: astore_0
    //   161: goto -90 -> 71
    //   164: astore_0
    //   165: aconst_null
    //   166: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	167	0	paramClass	Class<T>
    //   0	167	1	paramString	String
    //   36	83	2	str	String
    //   48	82	3	localSerializable	java.io.Serializable
    //   23	87	4	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   25	35	68	java/io/IOException
    //   91	95	100	java/io/IOException
    //   25	35	106	finally
    //   49	54	124	java/io/IOException
    //   60	64	128	java/io/IOException
    //   82	87	134	java/io/IOException
    //   109	114	138	java/io/IOException
    //   118	122	142	java/io/IOException
    //   37	49	146	finally
    //   73	82	146	finally
    //   37	49	150	java/io/IOException
    //   25	35	154	java/lang/ClassNotFoundException
    //   37	49	160	java/lang/ClassNotFoundException
    //   6	15	164	java/lang/IllegalArgumentException
  }
  
  public static <T extends Enum<T>> T a(Intent paramIntent, String paramString, Class<T> paramClass)
  {
    paramIntent = paramIntent.getStringExtra(paramString);
    if (paramIntent == null) {
      return null;
    }
    return Enum.valueOf(paramClass, paramIntent);
  }
  
  public static <T extends Enum<T>> T a(Intent paramIntent, String paramString, Class<T> paramClass, T paramT)
  {
    paramIntent = a(paramIntent, paramString, paramClass);
    if (paramIntent == null) {
      return paramT;
    }
    return paramIntent;
  }
  
  public static <T extends Enum<T>> T a(Bundle paramBundle, String paramString, Class<T> paramClass)
  {
    paramBundle = paramBundle.getString(paramString);
    if (paramBundle == null) {
      return null;
    }
    return Enum.valueOf(paramClass, paramBundle);
  }
  
  /* Error */
  public static String a(java.io.Serializable paramSerializable)
  {
    // Byte code:
    //   0: new 196	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 198	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore 4
    //   9: new 200	java/io/ObjectOutputStream
    //   12: dup
    //   13: aload 4
    //   15: invokespecial 203	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: astore_1
    //   21: aload_2
    //   22: aload_0
    //   23: invokevirtual 207	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokevirtual 210	java/io/ObjectOutputStream:flush	()V
    //   32: aload_2
    //   33: astore_1
    //   34: new 87	java/lang/String
    //   37: dup
    //   38: aload 4
    //   40: invokevirtual 213	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   43: iconst_0
    //   44: invokestatic 216	android/util/Base64:encode	([BI)[B
    //   47: invokespecial 217	java/lang/String:<init>	([B)V
    //   50: astore_0
    //   51: aload_2
    //   52: ifnull +7 -> 59
    //   55: aload_2
    //   56: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   59: aload 4
    //   61: invokevirtual 219	java/io/ByteArrayOutputStream:close	()V
    //   64: aload_0
    //   65: areturn
    //   66: astore_3
    //   67: aconst_null
    //   68: astore_0
    //   69: aload_0
    //   70: astore_1
    //   71: ldc -95
    //   73: ldc -35
    //   75: aload_3
    //   76: invokestatic 169	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: aload_0
    //   81: ifnull +7 -> 88
    //   84: aload_0
    //   85: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   88: aload 4
    //   90: invokevirtual 219	java/io/ByteArrayOutputStream:close	()V
    //   93: aconst_null
    //   94: areturn
    //   95: astore_0
    //   96: aconst_null
    //   97: areturn
    //   98: astore_0
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: ifnull +7 -> 109
    //   105: aload_1
    //   106: invokevirtual 218	java/io/ObjectOutputStream:close	()V
    //   109: aload 4
    //   111: invokevirtual 219	java/io/ByteArrayOutputStream:close	()V
    //   114: aload_0
    //   115: athrow
    //   116: astore_1
    //   117: goto -58 -> 59
    //   120: astore_1
    //   121: aload_0
    //   122: areturn
    //   123: astore_0
    //   124: goto -36 -> 88
    //   127: astore_1
    //   128: goto -19 -> 109
    //   131: astore_1
    //   132: goto -18 -> 114
    //   135: astore_0
    //   136: goto -35 -> 101
    //   139: astore_3
    //   140: aload_2
    //   141: astore_0
    //   142: goto -73 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	paramSerializable	java.io.Serializable
    //   20	86	1	localObject	Object
    //   116	1	1	localIOException1	java.io.IOException
    //   120	1	1	localIOException2	java.io.IOException
    //   127	1	1	localIOException3	java.io.IOException
    //   131	1	1	localIOException4	java.io.IOException
    //   18	123	2	localObjectOutputStream	java.io.ObjectOutputStream
    //   66	10	3	localIOException5	java.io.IOException
    //   139	1	3	localIOException6	java.io.IOException
    //   7	103	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   9	19	66	java/io/IOException
    //   88	93	95	java/io/IOException
    //   9	19	98	finally
    //   55	59	116	java/io/IOException
    //   59	64	120	java/io/IOException
    //   84	88	123	java/io/IOException
    //   105	109	127	java/io/IOException
    //   109	114	131	java/io/IOException
    //   21	26	135	finally
    //   28	32	135	finally
    //   34	51	135	finally
    //   71	80	135	finally
    //   21	26	139	java/io/IOException
    //   28	32	139	java/io/IOException
    //   34	51	139	java/io/IOException
  }
  
  public static String a(Double paramDouble)
  {
    String str = Double.toString(paramDouble.doubleValue());
    if (!str.endsWith("*"))
    {
      paramDouble = str;
      if (!str.endsWith(")")) {}
    }
    else
    {
      paramDouble = str.substring(0, str.length() - 1);
    }
    return paramDouble;
  }
  
  /* Error */
  public static String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 254	java/io/FileInputStream
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 255	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: astore_0
    //   14: sipush 1024
    //   17: newarray <illegal type>
    //   19: astore_3
    //   20: aload_2
    //   21: astore_0
    //   22: ldc_w 257
    //   25: invokestatic 263	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   28: astore 5
    //   30: aload_2
    //   31: astore_0
    //   32: aload_2
    //   33: aload_3
    //   34: invokevirtual 269	java/io/InputStream:read	([B)I
    //   37: istore_1
    //   38: iload_1
    //   39: ifle +42 -> 81
    //   42: aload_2
    //   43: astore_0
    //   44: aload 5
    //   46: aload_3
    //   47: iconst_0
    //   48: iload_1
    //   49: invokevirtual 273	java/security/MessageDigest:update	([BII)V
    //   52: goto -22 -> 30
    //   55: astore_3
    //   56: aload_2
    //   57: astore_0
    //   58: ldc_w 257
    //   61: aload_3
    //   62: invokestatic 279	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   65: aload 4
    //   67: astore_0
    //   68: aload_2
    //   69: ifnull +10 -> 79
    //   72: aload_2
    //   73: invokevirtual 280	java/io/InputStream:close	()V
    //   76: aload 4
    //   78: astore_0
    //   79: aload_0
    //   80: areturn
    //   81: aload_2
    //   82: astore_0
    //   83: aload_2
    //   84: invokevirtual 280	java/io/InputStream:close	()V
    //   87: aload_2
    //   88: astore_0
    //   89: aload 5
    //   91: invokevirtual 283	java/security/MessageDigest:digest	()[B
    //   94: invokestatic 286	com/yelp/android/util/d:a	([B)Ljava/lang/String;
    //   97: astore_3
    //   98: aload_3
    //   99: astore_0
    //   100: aload_2
    //   101: ifnull -22 -> 79
    //   104: aload_2
    //   105: invokevirtual 280	java/io/InputStream:close	()V
    //   108: aload_3
    //   109: areturn
    //   110: astore_0
    //   111: aload_0
    //   112: invokestatic 289	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   115: aload_3
    //   116: areturn
    //   117: astore_0
    //   118: aload_0
    //   119: invokestatic 289	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   122: aconst_null
    //   123: areturn
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_2
    //   127: aload_2
    //   128: astore_0
    //   129: ldc_w 257
    //   132: aload_3
    //   133: invokestatic 279	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   136: aload 4
    //   138: astore_0
    //   139: aload_2
    //   140: ifnull -61 -> 79
    //   143: aload_2
    //   144: invokevirtual 280	java/io/InputStream:close	()V
    //   147: aconst_null
    //   148: areturn
    //   149: astore_0
    //   150: aload_0
    //   151: invokestatic 289	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   154: aconst_null
    //   155: areturn
    //   156: astore_3
    //   157: aconst_null
    //   158: astore_2
    //   159: aload_2
    //   160: astore_0
    //   161: ldc_w 257
    //   164: aload_3
    //   165: invokestatic 279	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   168: aload 4
    //   170: astore_0
    //   171: aload_2
    //   172: ifnull -93 -> 79
    //   175: aload_2
    //   176: invokevirtual 280	java/io/InputStream:close	()V
    //   179: aconst_null
    //   180: areturn
    //   181: astore_0
    //   182: aload_0
    //   183: invokestatic 289	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   186: aconst_null
    //   187: areturn
    //   188: astore_2
    //   189: aconst_null
    //   190: astore_0
    //   191: aload_0
    //   192: ifnull +7 -> 199
    //   195: aload_0
    //   196: invokevirtual 280	java/io/InputStream:close	()V
    //   199: aload_2
    //   200: athrow
    //   201: astore_0
    //   202: aload_0
    //   203: invokestatic 289	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   206: goto -7 -> 199
    //   209: astore_2
    //   210: goto -19 -> 191
    //   213: astore_3
    //   214: goto -55 -> 159
    //   217: astore_3
    //   218: goto -91 -> 127
    //   221: astore_3
    //   222: aconst_null
    //   223: astore_2
    //   224: goto -168 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	paramString	String
    //   37	12	1	i	int
    //   11	165	2	localFileInputStream	java.io.FileInputStream
    //   188	12	2	localObject1	Object
    //   209	1	2	localObject2	Object
    //   223	1	2	localObject3	Object
    //   19	28	3	arrayOfByte	byte[]
    //   55	7	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   97	19	3	str	String
    //   124	9	3	localNoSuchAlgorithmException1	NoSuchAlgorithmException
    //   156	9	3	localIOException1	java.io.IOException
    //   213	1	3	localIOException2	java.io.IOException
    //   217	1	3	localNoSuchAlgorithmException2	NoSuchAlgorithmException
    //   221	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   1	168	4	localObject4	Object
    //   28	62	5	localMessageDigest	MessageDigest
    // Exception table:
    //   from	to	target	type
    //   14	20	55	java/io/FileNotFoundException
    //   22	30	55	java/io/FileNotFoundException
    //   32	38	55	java/io/FileNotFoundException
    //   44	52	55	java/io/FileNotFoundException
    //   83	87	55	java/io/FileNotFoundException
    //   89	98	55	java/io/FileNotFoundException
    //   104	108	110	java/io/IOException
    //   72	76	117	java/io/IOException
    //   3	12	124	java/security/NoSuchAlgorithmException
    //   143	147	149	java/io/IOException
    //   3	12	156	java/io/IOException
    //   175	179	181	java/io/IOException
    //   3	12	188	finally
    //   195	199	201	java/io/IOException
    //   14	20	209	finally
    //   22	30	209	finally
    //   32	38	209	finally
    //   44	52	209	finally
    //   58	65	209	finally
    //   83	87	209	finally
    //   89	98	209	finally
    //   129	136	209	finally
    //   161	168	209	finally
    //   14	20	213	java/io/IOException
    //   22	30	213	java/io/IOException
    //   32	38	213	java/io/IOException
    //   44	52	213	java/io/IOException
    //   83	87	213	java/io/IOException
    //   89	98	213	java/io/IOException
    //   14	20	217	java/security/NoSuchAlgorithmException
    //   22	30	217	java/security/NoSuchAlgorithmException
    //   32	38	217	java/security/NoSuchAlgorithmException
    //   44	52	217	java/security/NoSuchAlgorithmException
    //   83	87	217	java/security/NoSuchAlgorithmException
    //   89	98	217	java/security/NoSuchAlgorithmException
    //   3	12	221	java/io/FileNotFoundException
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int j = 0;
    int k = paramArrayOfByte.length;
    char[] arrayOfChar = new char[k << 1];
    int i = 0;
    while (i < k)
    {
      int m = j + 1;
      arrayOfChar[j] = a[((paramArrayOfByte[i] & 0xF0) >>> 4)];
      j = m + 1;
      arrayOfChar[m] = a[(paramArrayOfByte[i] & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static <T extends Enum<T>> ArrayList<T> a(Bundle paramBundle, String paramString, T[] paramArrayOfT)
  {
    return a(paramBundle.getIntArray(paramString), paramArrayOfT);
  }
  
  public static <T extends Enum<T>> ArrayList<T> a(int[] paramArrayOfInt, T[] paramArrayOfT)
  {
    Object localObject;
    if (paramArrayOfInt == null)
    {
      localObject = new ArrayList();
      return (ArrayList<T>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfInt.length);
    int j = paramArrayOfInt.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(paramArrayOfT[paramArrayOfInt[i]]);
      i += 1;
    }
  }
  
  public static HashSet<String> a(String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramArrayOfString[i]);
      i += 1;
    }
    return localHashSet;
  }
  
  public static <T> List<T> a(List<T> paramList1, List<T> paramList2)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(paramList1);
    localHashSet.addAll(paramList2);
    return new ArrayList(localHashSet);
  }
  
  public static void a(Intent paramIntent, String paramString, Enum<?> paramEnum)
  {
    if (paramEnum == null) {}
    for (paramEnum = null;; paramEnum = paramEnum.name())
    {
      paramIntent.putExtra(paramString, paramEnum);
      return;
    }
  }
  
  public static void a(Bundle paramBundle, String paramString, Enum<?> paramEnum)
  {
    if (paramEnum == null) {}
    for (paramEnum = null;; paramEnum = paramEnum.name())
    {
      paramBundle.putString(paramString, paramEnum);
      return;
    }
  }
  
  public static <T> void a(Set<T> paramSet, T paramT)
  {
    if (paramSet.contains(paramT))
    {
      paramSet.remove(paramT);
      return;
    }
    paramSet.add(paramT);
  }
  
  public static int[] a(Collection<? extends Enum<?>> paramCollection)
  {
    if (paramCollection == null) {
      return new int[0];
    }
    int[] arrayOfInt = new int[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int i = 0;
    while (paramCollection.hasNext())
    {
      arrayOfInt[i] = ((Enum)paramCollection.next()).ordinal();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public static String b(String paramString)
  {
    try
    {
      paramString = a(MessageDigest.getInstance("SHA-1").digest(paramString.getBytes()));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      YelpLog.remoteError(paramString);
    }
    return null;
  }
  
  public static class a
  {
    public static File a(Context paramContext)
    {
      return paramContext.getExternalCacheDir();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */