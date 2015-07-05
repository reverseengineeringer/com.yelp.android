package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.j;

public final class GoogleMap
{
  public static final int MAP_TYPE_HYBRID = 4;
  public static final int MAP_TYPE_NONE = 0;
  public static final int MAP_TYPE_NORMAL = 1;
  public static final int MAP_TYPE_SATELLITE = 2;
  public static final int MAP_TYPE_TERRAIN = 3;
  private final IGoogleMapDelegate akm;
  private UiSettings akn;
  
  protected GoogleMap(IGoogleMapDelegate paramIGoogleMapDelegate)
  {
    akm = ((IGoogleMapDelegate)jx.i(paramIGoogleMapDelegate));
  }
  
  public final Circle addCircle(CircleOptions paramCircleOptions)
  {
    try
    {
      paramCircleOptions = new Circle(akm.addCircle(paramCircleOptions));
      return paramCircleOptions;
    }
    catch (RemoteException paramCircleOptions)
    {
      throw new RuntimeRemoteException(paramCircleOptions);
    }
  }
  
  public final GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
  {
    try
    {
      paramGroundOverlayOptions = akm.addGroundOverlay(paramGroundOverlayOptions);
      if (paramGroundOverlayOptions != null)
      {
        paramGroundOverlayOptions = new GroundOverlay(paramGroundOverlayOptions);
        return paramGroundOverlayOptions;
      }
      return null;
    }
    catch (RemoteException paramGroundOverlayOptions)
    {
      throw new RuntimeRemoteException(paramGroundOverlayOptions);
    }
  }
  
  public final Marker addMarker(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = akm.addMarker(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new Marker(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new RuntimeRemoteException(paramMarkerOptions);
    }
  }
  
  public final Polygon addPolygon(PolygonOptions paramPolygonOptions)
  {
    try
    {
      paramPolygonOptions = new Polygon(akm.addPolygon(paramPolygonOptions));
      return paramPolygonOptions;
    }
    catch (RemoteException paramPolygonOptions)
    {
      throw new RuntimeRemoteException(paramPolygonOptions);
    }
  }
  
  public final Polyline addPolyline(PolylineOptions paramPolylineOptions)
  {
    try
    {
      paramPolylineOptions = new Polyline(akm.addPolyline(paramPolylineOptions));
      return paramPolylineOptions;
    }
    catch (RemoteException paramPolylineOptions)
    {
      throw new RuntimeRemoteException(paramPolylineOptions);
    }
  }
  
  public final TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
  {
    try
    {
      paramTileOverlayOptions = akm.addTileOverlay(paramTileOverlayOptions);
      if (paramTileOverlayOptions != null)
      {
        paramTileOverlayOptions = new TileOverlay(paramTileOverlayOptions);
        return paramTileOverlayOptions;
      }
      return null;
    }
    catch (RemoteException paramTileOverlayOptions)
    {
      throw new RuntimeRemoteException(paramTileOverlayOptions);
    }
  }
  
  public final void animateCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      akm.animateCamera(paramCameraUpdate.nA());
      return;
    }
    catch (RemoteException paramCameraUpdate)
    {
      throw new RuntimeRemoteException(paramCameraUpdate);
    }
  }
  
  /* Error */
  public final void animateCamera(CameraUpdate paramCameraUpdate, int paramInt, GoogleMap.CancelableCallback paramCancelableCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/google/android/gms/maps/GoogleMap:akm	Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    //   4: astore 4
    //   6: aload_1
    //   7: invokevirtual 110	com/google/android/gms/maps/CameraUpdate:nA	()Lcom/google/android/gms/dynamic/d;
    //   10: astore 5
    //   12: aload_3
    //   13: ifnonnull +17 -> 30
    //   16: aconst_null
    //   17: astore_1
    //   18: aload 4
    //   20: aload 5
    //   22: iload_2
    //   23: aload_1
    //   24: invokeinterface 118 4 0
    //   29: return
    //   30: new 120	com/google/android/gms/maps/GoogleMap$a
    //   33: dup
    //   34: aload_3
    //   35: invokespecial 123	com/google/android/gms/maps/GoogleMap$a:<init>	(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    //   38: astore_1
    //   39: goto -21 -> 18
    //   42: astore_1
    //   43: new 49	com/google/android/gms/maps/model/RuntimeRemoteException
    //   46: dup
    //   47: aload_1
    //   48: invokespecial 52	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	GoogleMap
    //   0	52	1	paramCameraUpdate	CameraUpdate
    //   0	52	2	paramInt	int
    //   0	52	3	paramCancelableCallback	GoogleMap.CancelableCallback
    //   4	15	4	localIGoogleMapDelegate	IGoogleMapDelegate
    //   10	11	5	locald	com.google.android.gms.dynamic.d
    // Exception table:
    //   from	to	target	type
    //   0	12	42	android/os/RemoteException
    //   18	29	42	android/os/RemoteException
    //   30	39	42	android/os/RemoteException
  }
  
  /* Error */
  public final void animateCamera(CameraUpdate paramCameraUpdate, GoogleMap.CancelableCallback paramCancelableCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/google/android/gms/maps/GoogleMap:akm	Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    //   4: astore_3
    //   5: aload_1
    //   6: invokevirtual 110	com/google/android/gms/maps/CameraUpdate:nA	()Lcom/google/android/gms/dynamic/d;
    //   9: astore 4
    //   11: aload_2
    //   12: ifnonnull +15 -> 27
    //   15: aconst_null
    //   16: astore_1
    //   17: aload_3
    //   18: aload 4
    //   20: aload_1
    //   21: invokeinterface 128 3 0
    //   26: return
    //   27: new 120	com/google/android/gms/maps/GoogleMap$a
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 123	com/google/android/gms/maps/GoogleMap$a:<init>	(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    //   35: astore_1
    //   36: goto -19 -> 17
    //   39: astore_1
    //   40: new 49	com/google/android/gms/maps/model/RuntimeRemoteException
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 52	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	GoogleMap
    //   0	49	1	paramCameraUpdate	CameraUpdate
    //   0	49	2	paramCancelableCallback	GoogleMap.CancelableCallback
    //   4	14	3	localIGoogleMapDelegate	IGoogleMapDelegate
    //   9	10	4	locald	com.google.android.gms.dynamic.d
    // Exception table:
    //   from	to	target	type
    //   0	11	39	android/os/RemoteException
    //   17	26	39	android/os/RemoteException
    //   27	36	39	android/os/RemoteException
  }
  
  public final void clear()
  {
    try
    {
      akm.clear();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final CameraPosition getCameraPosition()
  {
    try
    {
      CameraPosition localCameraPosition = akm.getCameraPosition();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public IndoorBuilding getFocusedBuilding()
  {
    try
    {
      Object localObject = akm.getFocusedBuilding();
      if (localObject != null)
      {
        localObject = new IndoorBuilding((j)localObject);
        return (IndoorBuilding)localObject;
      }
      return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int getMapType()
  {
    try
    {
      int i = akm.getMapType();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getMaxZoomLevel()
  {
    try
    {
      float f = akm.getMaxZoomLevel();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getMinZoomLevel()
  {
    try
    {
      float f = akm.getMinZoomLevel();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  @Deprecated
  public final Location getMyLocation()
  {
    try
    {
      Location localLocation = akm.getMyLocation();
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Projection getProjection()
  {
    try
    {
      Projection localProjection = new Projection(akm.getProjection());
      return localProjection;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final UiSettings getUiSettings()
  {
    try
    {
      if (akn == null) {
        akn = new UiSettings(akm.getUiSettings());
      }
      UiSettings localUiSettings = akn;
      return localUiSettings;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isBuildingsEnabled()
  {
    try
    {
      boolean bool = akm.isBuildingsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isIndoorEnabled()
  {
    try
    {
      boolean bool = akm.isIndoorEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isMyLocationEnabled()
  {
    try
    {
      boolean bool = akm.isMyLocationEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isTrafficEnabled()
  {
    try
    {
      boolean bool = akm.isTrafficEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void moveCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      akm.moveCamera(paramCameraUpdate.nA());
      return;
    }
    catch (RemoteException paramCameraUpdate)
    {
      throw new RuntimeRemoteException(paramCameraUpdate);
    }
  }
  
  IGoogleMapDelegate nC()
  {
    return akm;
  }
  
  public final void setBuildingsEnabled(boolean paramBoolean)
  {
    try
    {
      akm.setBuildingsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setContentDescription(String paramString)
  {
    try
    {
      akm.setContentDescription(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public final boolean setIndoorEnabled(boolean paramBoolean)
  {
    try
    {
      paramBoolean = akm.setIndoorEnabled(paramBoolean);
      return paramBoolean;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setInfoWindowAdapter(GoogleMap.InfoWindowAdapter paramInfoWindowAdapter)
  {
    if (paramInfoWindowAdapter == null) {}
    try
    {
      akm.setInfoWindowAdapter(null);
      return;
    }
    catch (RemoteException paramInfoWindowAdapter)
    {
      throw new RuntimeRemoteException(paramInfoWindowAdapter);
    }
    akm.setInfoWindowAdapter(new GoogleMap.13(this, paramInfoWindowAdapter));
  }
  
  public final void setLocationSource(LocationSource paramLocationSource)
  {
    if (paramLocationSource == null) {}
    try
    {
      akm.setLocationSource(null);
      return;
    }
    catch (RemoteException paramLocationSource)
    {
      throw new RuntimeRemoteException(paramLocationSource);
    }
    akm.setLocationSource(new GoogleMap.6(this, paramLocationSource));
  }
  
  public final void setMapType(int paramInt)
  {
    try
    {
      akm.setMapType(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMyLocationEnabled(boolean paramBoolean)
  {
    try
    {
      akm.setMyLocationEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setOnCameraChangeListener(GoogleMap.OnCameraChangeListener paramOnCameraChangeListener)
  {
    if (paramOnCameraChangeListener == null) {}
    try
    {
      akm.setOnCameraChangeListener(null);
      return;
    }
    catch (RemoteException paramOnCameraChangeListener)
    {
      throw new RuntimeRemoteException(paramOnCameraChangeListener);
    }
    akm.setOnCameraChangeListener(new GoogleMap.7(this, paramOnCameraChangeListener));
  }
  
  public final void setOnIndoorStateChangeListener(GoogleMap.OnIndoorStateChangeListener paramOnIndoorStateChangeListener)
  {
    if (paramOnIndoorStateChangeListener == null) {}
    try
    {
      akm.setOnIndoorStateChangeListener(null);
      return;
    }
    catch (RemoteException paramOnIndoorStateChangeListener)
    {
      throw new RuntimeRemoteException(paramOnIndoorStateChangeListener);
    }
    akm.setOnIndoorStateChangeListener(new GoogleMap.1(this, paramOnIndoorStateChangeListener));
  }
  
  public final void setOnInfoWindowClickListener(GoogleMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
  {
    if (paramOnInfoWindowClickListener == null) {}
    try
    {
      akm.setOnInfoWindowClickListener(null);
      return;
    }
    catch (RemoteException paramOnInfoWindowClickListener)
    {
      throw new RuntimeRemoteException(paramOnInfoWindowClickListener);
    }
    akm.setOnInfoWindowClickListener(new GoogleMap.12(this, paramOnInfoWindowClickListener));
  }
  
  public final void setOnMapClickListener(GoogleMap.OnMapClickListener paramOnMapClickListener)
  {
    if (paramOnMapClickListener == null) {}
    try
    {
      akm.setOnMapClickListener(null);
      return;
    }
    catch (RemoteException paramOnMapClickListener)
    {
      throw new RuntimeRemoteException(paramOnMapClickListener);
    }
    akm.setOnMapClickListener(new GoogleMap.8(this, paramOnMapClickListener));
  }
  
  public void setOnMapLoadedCallback(GoogleMap.OnMapLoadedCallback paramOnMapLoadedCallback)
  {
    if (paramOnMapLoadedCallback == null) {}
    try
    {
      akm.setOnMapLoadedCallback(null);
      return;
    }
    catch (RemoteException paramOnMapLoadedCallback)
    {
      throw new RuntimeRemoteException(paramOnMapLoadedCallback);
    }
    akm.setOnMapLoadedCallback(new GoogleMap.4(this, paramOnMapLoadedCallback));
  }
  
  public final void setOnMapLongClickListener(GoogleMap.OnMapLongClickListener paramOnMapLongClickListener)
  {
    if (paramOnMapLongClickListener == null) {}
    try
    {
      akm.setOnMapLongClickListener(null);
      return;
    }
    catch (RemoteException paramOnMapLongClickListener)
    {
      throw new RuntimeRemoteException(paramOnMapLongClickListener);
    }
    akm.setOnMapLongClickListener(new GoogleMap.9(this, paramOnMapLongClickListener));
  }
  
  public final void setOnMarkerClickListener(GoogleMap.OnMarkerClickListener paramOnMarkerClickListener)
  {
    if (paramOnMarkerClickListener == null) {}
    try
    {
      akm.setOnMarkerClickListener(null);
      return;
    }
    catch (RemoteException paramOnMarkerClickListener)
    {
      throw new RuntimeRemoteException(paramOnMarkerClickListener);
    }
    akm.setOnMarkerClickListener(new GoogleMap.10(this, paramOnMarkerClickListener));
  }
  
  public final void setOnMarkerDragListener(GoogleMap.OnMarkerDragListener paramOnMarkerDragListener)
  {
    if (paramOnMarkerDragListener == null) {}
    try
    {
      akm.setOnMarkerDragListener(null);
      return;
    }
    catch (RemoteException paramOnMarkerDragListener)
    {
      throw new RuntimeRemoteException(paramOnMarkerDragListener);
    }
    akm.setOnMarkerDragListener(new GoogleMap.11(this, paramOnMarkerDragListener));
  }
  
  public final void setOnMyLocationButtonClickListener(GoogleMap.OnMyLocationButtonClickListener paramOnMyLocationButtonClickListener)
  {
    if (paramOnMyLocationButtonClickListener == null) {}
    try
    {
      akm.setOnMyLocationButtonClickListener(null);
      return;
    }
    catch (RemoteException paramOnMyLocationButtonClickListener)
    {
      throw new RuntimeRemoteException(paramOnMyLocationButtonClickListener);
    }
    akm.setOnMyLocationButtonClickListener(new GoogleMap.3(this, paramOnMyLocationButtonClickListener));
  }
  
  @Deprecated
  public final void setOnMyLocationChangeListener(GoogleMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    if (paramOnMyLocationChangeListener == null) {}
    try
    {
      akm.setOnMyLocationChangeListener(null);
      return;
    }
    catch (RemoteException paramOnMyLocationChangeListener)
    {
      throw new RuntimeRemoteException(paramOnMyLocationChangeListener);
    }
    akm.setOnMyLocationChangeListener(new GoogleMap.2(this, paramOnMyLocationChangeListener));
  }
  
  public final void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      akm.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setTrafficEnabled(boolean paramBoolean)
  {
    try
    {
      akm.setTrafficEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void snapshot(GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback)
  {
    snapshot(paramSnapshotReadyCallback, null);
  }
  
  public final void snapshot(GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {}
    for (paramBitmap = e.k(paramBitmap);; paramBitmap = null)
    {
      paramBitmap = (e)paramBitmap;
      try
      {
        akm.snapshot(new GoogleMap.5(this, paramSnapshotReadyCallback), paramBitmap);
        return;
      }
      catch (RemoteException paramSnapshotReadyCallback)
      {
        throw new RuntimeRemoteException(paramSnapshotReadyCallback);
      }
    }
  }
  
  public final void stopAnimation()
  {
    try
    {
      akm.stopAnimation();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */