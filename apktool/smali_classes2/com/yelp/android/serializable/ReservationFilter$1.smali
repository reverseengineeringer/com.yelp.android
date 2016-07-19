.class final Lcom/yelp/android/serializable/ReservationFilter$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReservationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReservationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReservationFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationFilter;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationFilter;-><init>()V

    .line 133
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationFilter;->a(Landroid/os/Parcel;)V

    .line 134
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationFilter;-><init>()V

    .line 140
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationFilter;->a(Lorg/json/JSONObject;)V

    .line 141
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReservationFilter;
    .locals 1

    .prologue
    .line 128
    new-array v0, p1, [Lcom/yelp/android/serializable/ReservationFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationFilter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationFilter$1;->a(I)[Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationFilter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    return-object v0
.end method
