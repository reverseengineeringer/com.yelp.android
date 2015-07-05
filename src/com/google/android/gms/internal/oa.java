package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class oa
  implements SafeParcelable
{
  public static final ob CREATOR = new ob();
  public static final oa ahB = cc("accounting");
  public static final oa ahC = cc("airport");
  public static final oa ahD = cc("amusement_park");
  public static final oa ahE = cc("aquarium");
  public static final oa ahF = cc("art_gallery");
  public static final oa ahG = cc("atm");
  public static final oa ahH = cc("bakery");
  public static final oa ahI = cc("bank");
  public static final oa ahJ = cc("bar");
  public static final oa ahK = cc("beauty_salon");
  public static final oa ahL = cc("bicycle_store");
  public static final oa ahM = cc("book_store");
  public static final oa ahN = cc("bowling_alley");
  public static final oa ahO = cc("bus_station");
  public static final oa ahP = cc("cafe");
  public static final oa ahQ = cc("campground");
  public static final oa ahR = cc("car_dealer");
  public static final oa ahS = cc("car_rental");
  public static final oa ahT = cc("car_repair");
  public static final oa ahU = cc("car_wash");
  public static final oa ahV = cc("casino");
  public static final oa ahW = cc("cemetery");
  public static final oa ahX = cc("church");
  public static final oa ahY = cc("city_hall");
  public static final oa ahZ = cc("clothing_store");
  public static final oa aiA;
  public static final oa aiB;
  public static final oa aiC;
  public static final oa aiD;
  public static final oa aiE;
  public static final oa aiF;
  public static final oa aiG;
  public static final oa aiH;
  public static final oa aiI;
  public static final oa aiJ;
  public static final oa aiK;
  public static final oa aiL;
  public static final oa aiM;
  public static final oa aiN;
  public static final oa aiO;
  public static final oa aiP;
  public static final oa aiQ;
  public static final oa aiR;
  public static final oa aiS;
  public static final oa aiT;
  public static final oa aiU;
  public static final oa aiV;
  public static final oa aiW;
  public static final oa aiX;
  public static final oa aiY;
  public static final oa aiZ;
  public static final oa aia = cc("convenience_store");
  public static final oa aib = cc("courthouse");
  public static final oa aic = cc("dentist");
  public static final oa aid = cc("department_store");
  public static final oa aie = cc("doctor");
  public static final oa aif = cc("electrician");
  public static final oa aig = cc("electronics_store");
  public static final oa aih = cc("embassy");
  public static final oa aii = cc("establishment");
  public static final oa aij = cc("finance");
  public static final oa aik = cc("fire_station");
  public static final oa ail = cc("florist");
  public static final oa aim = cc("food");
  public static final oa ain = cc("funeral_home");
  public static final oa aio = cc("furniture_store");
  public static final oa aip = cc("gas_station");
  public static final oa aiq = cc("general_contractor");
  public static final oa air = cc("grocery_or_supermarket");
  public static final oa ais = cc("gym");
  public static final oa ait = cc("hair_care");
  public static final oa aiu = cc("hardware_store");
  public static final oa aiv = cc("health");
  public static final oa aiw = cc("hindu_temple");
  public static final oa aix = cc("home_goods_store");
  public static final oa aiy = cc("hospital");
  public static final oa aiz = cc("insurance_agency");
  public static final oa ajA;
  public static final oa ajB;
  public static final oa ajC;
  public static final oa ajD;
  public static final oa ajE;
  public static final oa ajF;
  public static final oa ajG;
  public static final oa ajH;
  public static final oa ajI;
  public static final oa ajJ;
  public static final oa ajK;
  public static final oa ajL;
  public static final oa ajM;
  public static final oa ajN;
  public static final oa ajO;
  public static final oa ajP;
  public static final oa ajQ;
  public static final oa ajR;
  public static final oa ajS;
  public static final oa ajT;
  public static final oa ajU;
  public static final oa ajV;
  public static final oa ajW;
  public static final oa aja;
  public static final oa ajb;
  public static final oa ajc;
  public static final oa ajd;
  public static final oa aje;
  public static final oa ajf;
  public static final oa ajg;
  public static final oa ajh;
  public static final oa aji;
  public static final oa ajj;
  public static final oa ajk;
  public static final oa ajl;
  public static final oa ajm;
  public static final oa ajn;
  public static final oa ajo;
  public static final oa ajp;
  public static final oa ajq;
  public static final oa ajr;
  public static final oa ajs;
  public static final oa ajt;
  public static final oa aju;
  public static final oa ajv;
  public static final oa ajw;
  public static final oa ajx;
  public static final oa ajy;
  public static final oa ajz;
  final int CK;
  final String vc;
  
  static
  {
    aiA = cc("jewelry_store");
    aiB = cc("laundry");
    aiC = cc("lawyer");
    aiD = cc("library");
    aiE = cc("liquor_store");
    aiF = cc("local_government_office");
    aiG = cc("locksmith");
    aiH = cc("lodging");
    aiI = cc("meal_delivery");
    aiJ = cc("meal_takeaway");
    aiK = cc("mosque");
    aiL = cc("movie_rental");
    aiM = cc("movie_theater");
    aiN = cc("moving_company");
    aiO = cc("museum");
    aiP = cc("night_club");
    aiQ = cc("painter");
    aiR = cc("park");
    aiS = cc("parking");
    aiT = cc("pet_store");
    aiU = cc("pharmacy");
    aiV = cc("physiotherapist");
    aiW = cc("place_of_worship");
    aiX = cc("plumber");
    aiY = cc("police");
    aiZ = cc("post_office");
    aja = cc("real_estate_agency");
    ajb = cc("restaurant");
    ajc = cc("roofing_contractor");
    ajd = cc("rv_park");
    aje = cc("school");
    ajf = cc("shoe_store");
    ajg = cc("shopping_mall");
    ajh = cc("spa");
    aji = cc("stadium");
    ajj = cc("storage");
    ajk = cc("store");
    ajl = cc("subway_station");
    ajm = cc("synagogue");
    ajn = cc("taxi_stand");
    ajo = cc("train_station");
    ajp = cc("travel_agency");
    ajq = cc("university");
    ajr = cc("veterinary_care");
    ajs = cc("zoo");
    ajt = cc("administrative_area_level_1");
    aju = cc("administrative_area_level_2");
    ajv = cc("administrative_area_level_3");
    ajw = cc("colloquial_area");
    ajx = cc("country");
    ajy = cc("floor");
    ajz = cc("geocode");
    ajA = cc("intersection");
    ajB = cc("locality");
    ajC = cc("natural_feature");
    ajD = cc("neighborhood");
    ajE = cc("political");
    ajF = cc("point_of_interest");
    ajG = cc("post_box");
    ajH = cc("postal_code");
    ajI = cc("postal_code_prefix");
    ajJ = cc("postal_town");
    ajK = cc("premise");
    ajL = cc("room");
    ajM = cc("route");
    ajN = cc("street_address");
    ajO = cc("sublocality");
    ajP = cc("sublocality_level_1");
    ajQ = cc("sublocality_level_2");
    ajR = cc("sublocality_level_3");
    ajS = cc("sublocality_level_4");
    ajT = cc("sublocality_level_5");
    ajU = cc("subpremise");
    ajV = cc("transit_station");
    ajW = cc("other");
  }
  
  oa(int paramInt, String paramString)
  {
    jx.bb(paramString);
    CK = paramInt;
    vc = paramString;
  }
  
  public static oa cc(String paramString)
  {
    return new oa(0, paramString);
  }
  
  public int describeContents()
  {
    ob localob = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof oa)) && (vc.equals(vc));
  }
  
  public int hashCode()
  {
    return vc.hashCode();
  }
  
  public String toString()
  {
    return vc;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ob localob = CREATOR;
    ob.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */