package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.c;
import com.google.android.gms.maps.model.internal.i;

public abstract interface IGoogleMapDelegate
  extends IInterface
{
  public abstract com.google.android.gms.maps.model.internal.h addCircle(CircleOptions paramCircleOptions);
  
  public abstract i addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions);
  
  public abstract i addGroundOverlay2(GroundOverlayOptions paramGroundOverlayOptions, com.google.android.gms.maps.model.internal.e parame);
  
  public abstract com.google.android.gms.maps.model.internal.l addMarker(MarkerOptions paramMarkerOptions);
  
  public abstract com.google.android.gms.maps.model.internal.l addMarker2(MarkerOptions paramMarkerOptions, com.google.android.gms.maps.model.internal.p paramp);
  
  public abstract com.google.android.gms.maps.model.internal.m addPolygon(PolygonOptions paramPolygonOptions);
  
  public abstract IPolylineDelegate addPolyline(PolylineOptions paramPolylineOptions);
  
  public abstract com.google.android.gms.maps.model.internal.n addTileOverlay(TileOverlayOptions paramTileOverlayOptions);
  
  public abstract void animateCamera(com.google.android.gms.dynamic.d paramd);
  
  public abstract void animateCamera2(c paramc);
  
  public abstract void animateCameraWithCallback(com.google.android.gms.dynamic.d paramd, b paramb);
  
  public abstract void animateCameraWithCallback2(c paramc, b paramb);
  
  public abstract void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d paramd, int paramInt, b paramb);
  
  public abstract void animateCameraWithDurationAndCallback2(c paramc, int paramInt, b paramb);
  
  public abstract void clear();
  
  public abstract CameraPosition getCameraPosition();
  
  public abstract com.google.android.gms.maps.model.internal.j getFocusedBuilding();
  
  public abstract void getMapAsync(m paramm);
  
  public abstract int getMapType();
  
  public abstract float getMaxZoomLevel();
  
  public abstract float getMinZoomLevel();
  
  public abstract Location getMyLocation();
  
  public abstract IProjectionDelegate getProjection();
  
  public abstract IUiSettingsDelegate getUiSettings();
  
  public abstract boolean isBuildingsEnabled();
  
  public abstract boolean isIndoorEnabled();
  
  public abstract boolean isMyLocationEnabled();
  
  public abstract boolean isTrafficEnabled();
  
  public abstract void moveCamera(com.google.android.gms.dynamic.d paramd);
  
  public abstract void moveCamera2(c paramc);
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onLowMemory();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public abstract void setBuildingsEnabled(boolean paramBoolean);
  
  public abstract void setContentDescription(String paramString);
  
  public abstract boolean setIndoorEnabled(boolean paramBoolean);
  
  public abstract void setInfoWindowAdapter(d paramd);
  
  public abstract void setInfoWindowRenderer(e parame);
  
  public abstract void setLocationSource(ILocationSourceDelegate paramILocationSourceDelegate);
  
  public abstract void setMapType(int paramInt);
  
  public abstract void setMyLocationEnabled(boolean paramBoolean);
  
  public abstract void setOnCameraChangeListener(f paramf);
  
  public abstract void setOnIndoorStateChangeListener(g paramg);
  
  public abstract void setOnInfoWindowClickListener(h paramh);
  
  public abstract void setOnMapClickListener(j paramj);
  
  public abstract void setOnMapLoadedCallback(k paramk);
  
  public abstract void setOnMapLongClickListener(l paraml);
  
  public abstract void setOnMarkerClickListener(n paramn);
  
  public abstract void setOnMarkerDragListener(o paramo);
  
  public abstract void setOnMyLocationButtonClickListener(p paramp);
  
  public abstract void setOnMyLocationChangeListener(q paramq);
  
  public abstract void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract void setTrafficEnabled(boolean paramBoolean);
  
  public abstract void snapshot(v paramv, com.google.android.gms.dynamic.d paramd);
  
  public abstract void stopAnimation();
  
  public abstract boolean useViewLifecycleWhenInFragment();
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IGoogleMapDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */