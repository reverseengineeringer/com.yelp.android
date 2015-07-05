package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.o;

class TileOverlayOptions$1
  implements TileProvider
{
  private final o amG = TileOverlayOptions.a(amH);
  
  TileOverlayOptions$1(TileOverlayOptions paramTileOverlayOptions) {}
  
  public Tile getTile(int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Tile localTile = amG.getTile(paramInt1, paramInt2, paramInt3);
      return localTile;
    }
    catch (RemoteException localRemoteException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */