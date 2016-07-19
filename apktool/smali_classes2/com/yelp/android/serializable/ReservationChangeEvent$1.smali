.class final Lcom/yelp/android/serializable/ReservationChangeEvent$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReservationChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReservationChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReservationChangeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationChangeEvent;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/serializable/ReservationChangeEvent;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationChangeEvent;->a(Landroid/os/Parcel;)V

    .line 33
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationChangeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/serializable/ReservationChangeEvent;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationChangeEvent;->a(Lorg/json/JSONObject;)V

    .line 40
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReservationChangeEvent;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/yelp/android/serializable/ReservationChangeEvent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationChangeEvent$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationChangeEvent$1;->a(I)[Lcom/yelp/android/serializable/ReservationChangeEvent;

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
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationChangeEvent$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationChangeEvent;

    move-result-object v0

    return-object v0
.end method
