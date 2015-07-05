.class final Lcom/yelp/android/serializable/cj;
.super Lcom/yelp/android/serializable/ah;
.source "Reservation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/serializable/Reservation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Reservation;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Reservation;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/serializable/Reservation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Reservation;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Reservation;->readFromJson(Lorg/json/JSONObject;)V

    .line 62
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 48
    new-array v0, p1, [Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cj;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cj;->a(I)[Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cj;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method
