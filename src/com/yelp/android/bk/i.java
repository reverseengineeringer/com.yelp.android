package com.yelp.android.bk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

public abstract interface i
  extends IInterface
{
  public abstract Tile a(int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements i
  {
    public static i a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof i))) {
        return (i)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      paramParcel1 = a(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    }
    
    private static class a
      implements i
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        a = paramIBinder;
      }
      
      /* Error */
      public Tile a(int paramInt1, int paramInt2, int paramInt3)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 5
        //   5: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 6
        //   10: aload 5
        //   12: ldc 29
        //   14: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 5
        //   19: iload_1
        //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
        //   23: aload 5
        //   25: iload_2
        //   26: invokevirtual 37	android/os/Parcel:writeInt	(I)V
        //   29: aload 5
        //   31: iload_3
        //   32: invokevirtual 37	android/os/Parcel:writeInt	(I)V
        //   35: aload_0
        //   36: getfield 17	com/yelp/android/bk/i$a$a:a	Landroid/os/IBinder;
        //   39: iconst_1
        //   40: aload 5
        //   42: aload 6
        //   44: iconst_0
        //   45: invokeinterface 43 5 0
        //   50: pop
        //   51: aload 6
        //   53: invokevirtual 46	android/os/Parcel:readException	()V
        //   56: aload 6
        //   58: invokevirtual 50	android/os/Parcel:readInt	()I
        //   61: ifeq +26 -> 87
        //   64: getstatic 56	com/google/android/gms/maps/model/Tile:CREATOR	Lcom/google/android/gms/maps/model/r;
        //   67: aload 6
        //   69: invokevirtual 61	com/google/android/gms/maps/model/r:a	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/Tile;
        //   72: astore 4
        //   74: aload 6
        //   76: invokevirtual 64	android/os/Parcel:recycle	()V
        //   79: aload 5
        //   81: invokevirtual 64	android/os/Parcel:recycle	()V
        //   84: aload 4
        //   86: areturn
        //   87: aconst_null
        //   88: astore 4
        //   90: goto -16 -> 74
        //   93: astore 4
        //   95: aload 6
        //   97: invokevirtual 64	android/os/Parcel:recycle	()V
        //   100: aload 5
        //   102: invokevirtual 64	android/os/Parcel:recycle	()V
        //   105: aload 4
        //   107: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	108	0	this	a
        //   0	108	1	paramInt1	int
        //   0	108	2	paramInt2	int
        //   0	108	3	paramInt3	int
        //   72	17	4	localTile	Tile
        //   93	13	4	localObject	Object
        //   3	98	5	localParcel1	Parcel
        //   8	88	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	74	93	finally
      }
      
      public IBinder asBinder()
      {
        return a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bk.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */