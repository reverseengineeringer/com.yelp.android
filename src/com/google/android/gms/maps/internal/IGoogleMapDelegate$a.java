package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.f;
import com.google.android.gms.maps.model.internal.h;
import com.google.android.gms.maps.model.internal.i;
import com.google.android.gms.maps.model.internal.j;
import com.google.android.gms.maps.model.internal.l;
import com.google.android.gms.maps.model.internal.n;
import com.google.android.gms.maps.model.internal.p;
import com.google.android.gms.maps.model.internal.q;
import com.google.android.gms.maps.model.k;
import com.google.android.gms.maps.model.o;
import com.google.android.gms.maps.model.w;

public abstract class IGoogleMapDelegate$a
  extends Binder
  implements IGoogleMapDelegate
{
  public static IGoogleMapDelegate aT(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof IGoogleMapDelegate))) {
      return (IGoogleMapDelegate)localIInterface;
    }
    return new IGoogleMapDelegate.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    boolean bool2 = false;
    int m = 0;
    boolean bool3 = false;
    int n = 0;
    boolean bool1 = false;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject8 = null;
    Object localObject9 = null;
    Object localObject7 = null;
    Object localObject10 = null;
    Object localObject11 = null;
    Object localObject12 = null;
    Object localObject13 = null;
    Object localObject14 = null;
    IPolylineDelegate localIPolylineDelegate = null;
    Object localObject2 = null;
    Object localObject1 = null;
    float f;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = getCameraPosition();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = getMaxZoomLevel();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = getMinZoomLevel();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      moveCamera(com.google.android.gms.dynamic.d.a.ap(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCamera(com.google.android.gms.dynamic.d.a.ap(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCameraWithCallback(com.google.android.gms.dynamic.d.a.ap(paramParcel1.readStrongBinder()), b.a.aR(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.d.a.ap(paramParcel1.readStrongBinder()), paramParcel1.readInt(), b.a.aR(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      stopAnimation();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = PolylineOptions.CREATOR.dh(paramParcel1);; paramParcel1 = null)
      {
        localIPolylineDelegate = addPolyline(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localIPolylineDelegate != null) {
          paramParcel1 = localIPolylineDelegate.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 10: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = PolygonOptions.CREATOR.dg(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addPolygon(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject3;
        if (localObject1 != null) {
          paramParcel1 = ((com.google.android.gms.maps.model.internal.m)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 11: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = MarkerOptions.CREATOR.df(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addMarker(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject4;
        if (localObject1 != null) {
          paramParcel1 = ((l)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 12: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = GroundOverlayOptions.CREATOR.dc(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addGroundOverlay(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject5;
        if (localObject1 != null) {
          paramParcel1 = ((i)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 13: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = TileOverlayOptions.CREATOR.dn(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addTileOverlay(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject6;
        if (localObject1 != null) {
          paramParcel1 = ((n)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 14: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      clear();
      paramParcel2.writeNoException();
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramInt1 = getMapType();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setMapType(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isTrafficEnabled();
      paramParcel2.writeNoException();
      if (bool1) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 18: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setTrafficEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isIndoorEnabled();
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (bool1 = true;; bool1 = false)
      {
        bool1 = setIndoorEnabled(bool1);
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 21: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isMyLocationEnabled();
      paramParcel2.writeNoException();
      paramInt1 = k;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool2;
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setMyLocationEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = getMyLocation();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setLocationSource(ILocationSourceDelegate.a.aW(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getUiSettings();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject8;
      if (localObject1 != null) {
        paramParcel1 = ((IUiSettingsDelegate)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 26: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getProjection();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject9;
      if (localObject1 != null) {
        paramParcel1 = ((IProjectionDelegate)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnCameraChangeListener(f.a.aZ(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapClickListener(j.a.bd(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 29: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapLongClickListener(l.a.bf(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMarkerClickListener(n.a.bh(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 31: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMarkerDragListener(o.a.bi(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 32: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnInfoWindowClickListener(h.a.bb(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 33: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setInfoWindowAdapter(d.a.aU(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 35: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = CircleOptions.CREATOR.db(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addCircle(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject7;
        if (localObject1 != null) {
          paramParcel1 = ((h)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 36: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMyLocationChangeListener(q.a.bk(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 37: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMyLocationButtonClickListener(p.a.bj(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 38: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      snapshot(v.a.bq(paramParcel1.readStrongBinder()), com.google.android.gms.dynamic.d.a.ap(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 39: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setPadding(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 40: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isBuildingsEnabled();
      paramParcel2.writeNoException();
      paramInt1 = m;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 41: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool3;
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setBuildingsEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 42: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapLoadedCallback(k.a.be(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 44: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getFocusedBuilding();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject10;
      if (localObject1 != null) {
        paramParcel1 = ((j)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 45: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnIndoorStateChangeListener(g.a.ba(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 53: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      getMapAsync(m.a.bg(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 54: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        onCreate(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 55: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onResume();
      paramParcel2.writeNoException();
      return true;
    case 56: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onPause();
      paramParcel2.writeNoException();
      return true;
    case 57: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onDestroy();
      paramParcel2.writeNoException();
      return true;
    case 58: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onLowMemory();
      paramParcel2.writeNoException();
      return true;
    case 59: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = useViewLifecycleWhenInFragment();
      paramParcel2.writeNoException();
      paramInt1 = n;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 60: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        onSaveInstanceState(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 == null) {
          break;
        }
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 61: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setContentDescription(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 64: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject11;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.c.CREATOR.dq(paramParcel1);
      }
      moveCamera2((com.google.android.gms.maps.model.internal.c)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 65: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject12;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.c.CREATOR.dq(paramParcel1);
      }
      animateCamera2((com.google.android.gms.maps.model.internal.c)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 66: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject13;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.c.CREATOR.dq(paramParcel1);
      }
      animateCameraWithCallback2((com.google.android.gms.maps.model.internal.c)localObject1, b.a.aR(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 67: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject14;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.c.CREATOR.dq(paramParcel1);
      }
      animateCameraWithDurationAndCallback2((com.google.android.gms.maps.model.internal.c)localObject1, paramParcel1.readInt(), b.a.aR(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 68: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0)
      {
        localObject1 = MarkerOptions.CREATOR.df(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label2475;
        }
      }
      for (paramParcel1 = p.CREATOR.ds(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addMarker2((MarkerOptions)localObject1, paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localIPolylineDelegate;
        if (localObject1 != null) {
          paramParcel1 = ((l)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
        localObject1 = null;
        break;
      }
    case 69: 
      label2475:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setInfoWindowRenderer(e.a.aV(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if (paramParcel1.readInt() != 0)
    {
      localObject1 = GroundOverlayOptions.CREATOR.dc(paramParcel1);
      if (paramParcel1.readInt() == 0) {
        break label2582;
      }
    }
    label2582:
    for (paramParcel1 = com.google.android.gms.maps.model.internal.e.CREATOR.dr(paramParcel1);; paramParcel1 = null)
    {
      localObject1 = addGroundOverlay2((GroundOverlayOptions)localObject1, paramParcel1);
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject2;
      if (localObject1 != null) {
        paramParcel1 = ((i)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IGoogleMapDelegate.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */