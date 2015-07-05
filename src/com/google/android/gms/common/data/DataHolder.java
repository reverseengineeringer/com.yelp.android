package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jx;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class DataHolder
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private static final DataHolder.a Ll = new DataHolder.1(new String[0], null);
  private final int CK;
  private final int Iv;
  private final String[] Ld;
  Bundle Le;
  private final CursorWindow[] Lf;
  private final Bundle Lg;
  int[] Lh;
  int Li;
  private Object Lj;
  private boolean Lk = true;
  boolean mClosed = false;
  
  DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle)
  {
    CK = paramInt1;
    Ld = paramArrayOfString;
    Lf = paramArrayOfCursorWindow;
    Iv = paramInt2;
    Lg = paramBundle;
  }
  
  private DataHolder(DataHolder.a parama, int paramInt, Bundle paramBundle)
  {
    this(DataHolder.a.a(parama), a(parama, -1), paramInt, paramBundle);
  }
  
  public DataHolder(String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt, Bundle paramBundle)
  {
    CK = 1;
    Ld = ((String[])jx.i(paramArrayOfString));
    Lf = ((CursorWindow[])jx.i(paramArrayOfCursorWindow));
    Iv = paramInt;
    Lg = paramBundle;
    gX();
  }
  
  public static DataHolder a(int paramInt, Bundle paramBundle)
  {
    return new DataHolder(Ll, paramInt, paramBundle);
  }
  
  private static CursorWindow[] a(DataHolder.a parama, int paramInt)
  {
    int k = 0;
    if (DataHolder.a.a(parama).length == 0) {
      return new CursorWindow[0];
    }
    Object localObject3;
    Object localObject2;
    ArrayList localArrayList;
    int i;
    label88:
    Object localObject1;
    if ((paramInt < 0) || (paramInt >= DataHolder.a.b(parama).size()))
    {
      localObject3 = DataHolder.a.b(parama);
      int m = ((List)localObject3).size();
      localObject2 = new CursorWindow(false);
      localArrayList = new ArrayList();
      localArrayList.add(localObject2);
      ((CursorWindow)localObject2).setNumColumns(DataHolder.a.a(parama).length);
      paramInt = 0;
      i = 0;
      if (paramInt >= m) {
        break label696;
      }
      localObject1 = localObject2;
    }
    for (;;)
    {
      int j;
      try
      {
        if (!((CursorWindow)localObject2).allocRow())
        {
          Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + paramInt + ")");
          localObject2 = new CursorWindow(false);
          ((CursorWindow)localObject2).setStartPosition(paramInt);
          ((CursorWindow)localObject2).setNumColumns(DataHolder.a.a(parama).length);
          localArrayList.add(localObject2);
          localObject1 = localObject2;
          if (!((CursorWindow)localObject2).allocRow())
          {
            Log.e("DataHolder", "Unable to allocate row to hold data.");
            localArrayList.remove(localObject2);
            parama = (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
            return parama;
            localObject3 = DataHolder.a.b(parama).subList(0, paramInt);
            break;
          }
        }
        localObject2 = (Map)((List)localObject3).get(paramInt);
        j = 0;
        bool = true;
        if ((j < DataHolder.a.a(parama).length) && (bool))
        {
          String str = DataHolder.a.a(parama)[j];
          Object localObject4 = ((Map)localObject2).get(str);
          if (localObject4 == null)
          {
            bool = ((CursorWindow)localObject1).putNull(paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof String))
          {
            bool = ((CursorWindow)localObject1).putString((String)localObject4, paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof Long))
          {
            bool = ((CursorWindow)localObject1).putLong(((Long)localObject4).longValue(), paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof Integer))
          {
            bool = ((CursorWindow)localObject1).putLong(((Integer)localObject4).intValue(), paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof Boolean))
          {
            if (!((Boolean)localObject4).booleanValue()) {
              break label720;
            }
            l = 1L;
            bool = ((CursorWindow)localObject1).putLong(l, paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof byte[]))
          {
            bool = ((CursorWindow)localObject1).putBlob((byte[])localObject4, paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof Double))
          {
            bool = ((CursorWindow)localObject1).putDouble(((Double)localObject4).doubleValue(), paramInt, j);
            break label713;
          }
          if ((localObject4 instanceof Float))
          {
            bool = ((CursorWindow)localObject1).putDouble(((Float)localObject4).floatValue(), paramInt, j);
            break label713;
          }
          throw new IllegalArgumentException("Unsupported object for column " + str + ": " + localObject4);
        }
      }
      catch (RuntimeException parama)
      {
        boolean bool;
        i = localArrayList.size();
        paramInt = k;
        if (paramInt < i)
        {
          ((CursorWindow)localArrayList.get(paramInt)).close();
          paramInt += 1;
          continue;
          if (!bool)
          {
            if (i != 0) {
              throw new DataHolder.b("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
            }
            Log.d("DataHolder", "Couldn't populate window data for row " + paramInt + " - allocating new window.");
            ((CursorWindow)localObject1).freeLastRow();
            localObject1 = new CursorWindow(false);
            ((CursorWindow)localObject1).setStartPosition(paramInt);
            ((CursorWindow)localObject1).setNumColumns(DataHolder.a.a(parama).length);
            localArrayList.add(localObject1);
            i = paramInt - 1;
            paramInt = 1;
            j = paramInt;
            paramInt = i + 1;
            localObject2 = localObject1;
            i = j;
            break label88;
          }
          j = 0;
          i = paramInt;
          paramInt = j;
          continue;
        }
        throw parama;
      }
      label696:
      return (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
      label713:
      j += 1;
      continue;
      label720:
      long l = 0L;
    }
  }
  
  public static DataHolder av(int paramInt)
  {
    return a(paramInt, null);
  }
  
  private void g(String paramString, int paramInt)
  {
    if ((Le == null) || (!Le.containsKey(paramString))) {
      throw new IllegalArgumentException("No such column: " + paramString);
    }
    if (isClosed()) {
      throw new IllegalArgumentException("Buffer is closed.");
    }
    if ((paramInt < 0) || (paramInt >= Li)) {
      throw new CursorIndexOutOfBoundsException(paramInt, Li);
    }
  }
  
  public long a(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].getLong(paramInt1, Le.getInt(paramString));
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, CharArrayBuffer paramCharArrayBuffer)
  {
    g(paramString, paramInt1);
    Lf[paramInt2].copyStringToBuffer(paramInt1, Le.getInt(paramString), paramCharArrayBuffer);
  }
  
  public boolean aQ(String paramString)
  {
    return Le.containsKey(paramString);
  }
  
  public int au(int paramInt)
  {
    int j = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < Li))
    {
      bool = true;
      jx.K(bool);
    }
    for (;;)
    {
      int i = j;
      if (j < Lh.length)
      {
        if (paramInt < Lh[j]) {
          i = j - 1;
        }
      }
      else
      {
        paramInt = i;
        if (i == Lh.length) {
          paramInt = i - 1;
        }
        return paramInt;
        bool = false;
        break;
      }
      j += 1;
    }
  }
  
  public int b(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].getInt(paramInt1, Le.getInt(paramString));
  }
  
  public String c(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].getString(paramInt1, Le.getInt(paramString));
  }
  
  public void close()
  {
    try
    {
      if (!mClosed)
      {
        mClosed = true;
        int i = 0;
        while (i < Lf.length)
        {
          Lf[i].close();
          i += 1;
        }
      }
      return;
    }
    finally {}
  }
  
  public boolean d(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Long.valueOf(Lf[paramInt2].getLong(paramInt1, Le.getInt(paramString))).longValue() == 1L;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float e(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].getFloat(paramInt1, Le.getInt(paramString));
  }
  
  public void e(Object paramObject)
  {
    Lj = paramObject;
  }
  
  public byte[] f(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].getBlob(paramInt1, Le.getInt(paramString));
  }
  
  /* Error */
  protected void finalize()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/data/DataHolder:Lk	Z
    //   4: ifeq +85 -> 89
    //   7: aload_0
    //   8: getfield 59	com/google/android/gms/common/data/DataHolder:Lf	[Landroid/database/CursorWindow;
    //   11: arraylength
    //   12: ifle +77 -> 89
    //   15: aload_0
    //   16: invokevirtual 274	com/google/android/gms/common/data/DataHolder:isClosed	()Z
    //   19: ifne +70 -> 89
    //   22: aload_0
    //   23: getfield 330	com/google/android/gms/common/data/DataHolder:Lj	Ljava/lang/Object;
    //   26: ifnonnull +68 -> 94
    //   29: new 127	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   36: ldc_w 339
    //   39: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: aload_0
    //   43: invokevirtual 340	java/lang/Object:toString	()Ljava/lang/String;
    //   46: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: astore_1
    //   53: ldc_w 342
    //   56: new 127	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   63: ldc_w 344
    //   66: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_1
    //   70: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc -117
    //   75: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 158	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: aload_0
    //   86: invokevirtual 345	com/google/android/gms/common/data/DataHolder:close	()V
    //   89: aload_0
    //   90: invokespecial 347	java/lang/Object:finalize	()V
    //   93: return
    //   94: aload_0
    //   95: getfield 330	com/google/android/gms/common/data/DataHolder:Lj	Ljava/lang/Object;
    //   98: invokevirtual 340	java/lang/Object:toString	()Ljava/lang/String;
    //   101: astore_1
    //   102: goto -49 -> 53
    //   105: astore_1
    //   106: aload_0
    //   107: invokespecial 347	java/lang/Object:finalize	()V
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	DataHolder
    //   52	50	1	str	String
    //   105	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	53	105	finally
    //   53	89	105	finally
    //   94	102	105	finally
  }
  
  public Uri g(String paramString, int paramInt1, int paramInt2)
  {
    paramString = c(paramString, paramInt1, paramInt2);
    if (paramString == null) {
      return null;
    }
    return Uri.parse(paramString);
  }
  
  public Bundle gV()
  {
    return Lg;
  }
  
  public void gX()
  {
    int j = 0;
    Le = new Bundle();
    int i = 0;
    while (i < Ld.length)
    {
      Le.putInt(Ld[i], i);
      i += 1;
    }
    Lh = new int[Lf.length];
    int k = 0;
    i = j;
    j = k;
    while (i < Lf.length)
    {
      Lh[i] = j;
      k = Lf[i].getStartPosition();
      j += Lf[i].getNumRows() - (j - k);
      i += 1;
    }
    Li = j;
  }
  
  String[] gY()
  {
    return Ld;
  }
  
  CursorWindow[] gZ()
  {
    return Lf;
  }
  
  public int getCount()
  {
    return Li;
  }
  
  public int getStatusCode()
  {
    return Iv;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public boolean h(String paramString, int paramInt1, int paramInt2)
  {
    g(paramString, paramInt1);
    return Lf[paramInt2].isNull(paramInt1, Le.getInt(paramString));
  }
  
  public boolean isClosed()
  {
    try
    {
      boolean bool = mClosed;
      return bool;
    }
    finally {}
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */