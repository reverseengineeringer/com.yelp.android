package com.yelp.android.ui.activities.mutatebiz;

import android.location.Address;
import com.yelp.android.ui.util.BackgroundTaskFragment;
import java.util.List;

class c
  extends BackgroundTaskFragment<Void, List<Address>>
{
  c(AddAddressFragment paramAddAddressFragment) {}
  
  /* Error */
  protected List<Address> a(Void... paramVarArgs)
  {
    // Byte code:
    //   0: new 22	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 23	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 11	com/yelp/android/ui/activities/mutatebiz/c:a	Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
    //   12: getfield 29	com/yelp/android/ui/activities/mutatebiz/AddAddressFragment:b	Z
    //   15: ifeq +19 -> 34
    //   18: aload_0
    //   19: getfield 11	com/yelp/android/ui/activities/mutatebiz/c:a	Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
    //   22: invokestatic 32	com/yelp/android/ui/activities/mutatebiz/AddAddressFragment:b	(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Landroid/location/Address;
    //   25: invokevirtual 38	android/location/Address:getCountryCode	()Ljava/lang/String;
    //   28: invokestatic 44	com/yelp/android/appdata/LocaleSettings:d	(Ljava/lang/String;)Z
    //   31: ifne +61 -> 92
    //   34: aload_1
    //   35: new 46	android/location/Geocoder
    //   38: dup
    //   39: invokestatic 51	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   42: invokestatic 51	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   45: invokevirtual 55	com/yelp/android/appdata/AppData:g	()Lcom/yelp/android/appdata/LocaleSettings;
    //   48: invokevirtual 59	com/yelp/android/appdata/LocaleSettings:h	()Ljava/util/Locale;
    //   51: invokespecial 62	android/location/Geocoder:<init>	(Landroid/content/Context;Ljava/util/Locale;)V
    //   54: invokevirtual 66	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   57: pop
    //   58: invokestatic 51	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   61: invokevirtual 70	com/yelp/android/appdata/AppData:n	()Lcom/yelp/android/appdata/LocationService;
    //   64: astore_2
    //   65: aload_2
    //   66: getstatic 76	com/yelp/android/appdata/LocationService$Accuracies:FINE	Lcom/yelp/android/appdata/LocationService$Accuracies;
    //   69: getstatic 82	com/yelp/android/appdata/LocationService$Recentness:MINUTE	Lcom/yelp/android/appdata/LocationService$Recentness;
    //   72: invokevirtual 87	com/yelp/android/appdata/LocationService:a	(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;)Landroid/util/Pair;
    //   75: astore_2
    //   76: aload_2
    //   77: getfield 93	android/util/Pair:first	Ljava/lang/Object;
    //   80: checkcast 95	android/location/Location
    //   83: astore 4
    //   85: aload 4
    //   87: ifnonnull +55 -> 142
    //   90: aconst_null
    //   91: areturn
    //   92: aload_1
    //   93: new 46	android/location/Geocoder
    //   96: dup
    //   97: invokestatic 51	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   100: getstatic 101	java/util/Locale:TRADITIONAL_CHINESE	Ljava/util/Locale;
    //   103: invokespecial 62	android/location/Geocoder:<init>	(Landroid/content/Context;Ljava/util/Locale;)V
    //   106: invokevirtual 66	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   109: pop
    //   110: aload_1
    //   111: new 46	android/location/Geocoder
    //   114: dup
    //   115: invokestatic 51	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   118: getstatic 104	java/util/Locale:ENGLISH	Ljava/util/Locale;
    //   121: invokespecial 62	android/location/Geocoder:<init>	(Landroid/content/Context;Ljava/util/Locale;)V
    //   124: invokevirtual 66	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   127: pop
    //   128: goto -70 -> 58
    //   131: astore_1
    //   132: aload_0
    //   133: ldc 106
    //   135: aload_1
    //   136: invokestatic 112	com/yelp/android/util/YelpLog:e	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   139: pop
    //   140: aconst_null
    //   141: areturn
    //   142: new 22	java/util/ArrayList
    //   145: dup
    //   146: invokespecial 23	java/util/ArrayList:<init>	()V
    //   149: astore 5
    //   151: aload_1
    //   152: invokevirtual 116	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   155: astore 6
    //   157: aload 6
    //   159: invokeinterface 122 1 0
    //   164: ifeq +175 -> 339
    //   167: aload 6
    //   169: invokeinterface 126 1 0
    //   174: checkcast 46	android/location/Geocoder
    //   177: astore_1
    //   178: aload_1
    //   179: aload 4
    //   181: invokevirtual 130	android/location/Location:getLatitude	()D
    //   184: aload 4
    //   186: invokevirtual 133	android/location/Location:getLongitude	()D
    //   189: iconst_1
    //   190: invokevirtual 137	android/location/Geocoder:getFromLocation	(DDI)Ljava/util/List;
    //   193: astore_1
    //   194: aload_1
    //   195: ifnull +160 -> 355
    //   198: aload_1
    //   199: invokeinterface 142 1 0
    //   204: ifne +151 -> 355
    //   207: aload_1
    //   208: iconst_0
    //   209: invokeinterface 146 2 0
    //   214: checkcast 34	android/location/Address
    //   217: astore_2
    //   218: aload_2
    //   219: aload 4
    //   221: invokevirtual 130	android/location/Location:getLatitude	()D
    //   224: invokevirtual 150	android/location/Address:setLatitude	(D)V
    //   227: aload_2
    //   228: aload 4
    //   230: invokevirtual 133	android/location/Location:getLongitude	()D
    //   233: invokevirtual 153	android/location/Address:setLongitude	(D)V
    //   236: aload_2
    //   237: invokevirtual 157	android/location/Address:getMaxAddressLineIndex	()I
    //   240: ifle +110 -> 350
    //   243: aload_2
    //   244: aload_2
    //   245: invokevirtual 157	android/location/Address:getMaxAddressLineIndex	()I
    //   248: iconst_1
    //   249: isub
    //   250: invokevirtual 161	android/location/Address:getAddressLine	(I)Ljava/lang/String;
    //   253: astore_3
    //   254: aload_2
    //   255: aload_3
    //   256: invokevirtual 165	android/location/Address:setLocality	(Ljava/lang/String;)V
    //   259: aload_2
    //   260: astore_1
    //   261: aload_2
    //   262: invokevirtual 38	android/location/Address:getCountryCode	()Ljava/lang/String;
    //   265: ldc -89
    //   267: invokevirtual 172	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   270: ifeq +34 -> 304
    //   273: aload_2
    //   274: iconst_0
    //   275: invokevirtual 161	android/location/Address:getAddressLine	(I)Ljava/lang/String;
    //   278: aload_3
    //   279: invokestatic 177	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   282: ifeq +13 -> 295
    //   285: aload_2
    //   286: iconst_0
    //   287: aload_2
    //   288: iconst_1
    //   289: invokevirtual 161	android/location/Address:getAddressLine	(I)Ljava/lang/String;
    //   292: invokevirtual 181	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   295: aload_2
    //   296: iconst_1
    //   297: ldc -73
    //   299: invokevirtual 181	android/location/Address:setAddressLine	(ILjava/lang/String;)V
    //   302: aload_2
    //   303: astore_1
    //   304: aload 5
    //   306: aload_1
    //   307: invokevirtual 66	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   310: pop
    //   311: goto -154 -> 157
    //   314: astore_2
    //   315: aconst_null
    //   316: astore_1
    //   317: aload_0
    //   318: ldc -71
    //   320: iconst_2
    //   321: anewarray 187	java/lang/Object
    //   324: dup
    //   325: iconst_0
    //   326: aload 4
    //   328: aastore
    //   329: dup
    //   330: iconst_1
    //   331: aload_2
    //   332: aastore
    //   333: invokestatic 190	com/yelp/android/appdata/AppData:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   336: goto -32 -> 304
    //   339: aload 5
    //   341: areturn
    //   342: astore_3
    //   343: aload_2
    //   344: astore_1
    //   345: aload_3
    //   346: astore_2
    //   347: goto -30 -> 317
    //   350: aconst_null
    //   351: astore_3
    //   352: goto -98 -> 254
    //   355: aconst_null
    //   356: astore_1
    //   357: goto -53 -> 304
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	360	0	this	c
    //   0	360	1	paramVarArgs	Void[]
    //   64	239	2	localObject1	Object
    //   314	30	2	localIOException1	java.io.IOException
    //   346	1	2	localObject2	Object
    //   253	26	3	str	String
    //   342	4	3	localIOException2	java.io.IOException
    //   351	1	3	localObject3	Object
    //   83	244	4	localLocation	android.location.Location
    //   149	191	5	localArrayList	java.util.ArrayList
    //   155	13	6	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   65	76	131	com/yelp/android/appdata/LocationService$NoProvidersException
    //   178	194	314	java/io/IOException
    //   198	218	314	java/io/IOException
    //   218	254	342	java/io/IOException
    //   254	259	342	java/io/IOException
    //   261	295	342	java/io/IOException
    //   295	302	342	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */