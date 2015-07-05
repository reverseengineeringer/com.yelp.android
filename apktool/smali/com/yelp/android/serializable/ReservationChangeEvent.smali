.class public Lcom/yelp/android/serializable/ReservationChangeEvent;
.super Lcom/yelp/android/serializable/_ReservationChangeEvent;
.source "ReservationChangeEvent.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReservationChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/ck;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ck;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReservationChangeEvent;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yelp/android/serializable/ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 18
    iput-object p2, p0, Lcom/yelp/android/serializable/ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservation()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReservationChangeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
