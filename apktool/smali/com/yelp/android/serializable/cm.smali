.class final Lcom/yelp/android/serializable/cm;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReservationSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReservationSearchAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 114
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;-><init>()V

    .line 120
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->readFromJson(Lorg/json/JSONObject;)V

    .line 121
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 1

    .prologue
    .line 108
    new-array v0, p1, [Lcom/yelp/android/serializable/ReservationSearchAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cm;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cm;->a(I)[Lcom/yelp/android/serializable/ReservationSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cm;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationSearchAction;

    move-result-object v0

    return-object v0
.end method
