.class final Lcom/yelp/android/serializable/Reservation$1;
.super Lcom/yelp/android/serializable/a;
.source "Reservation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Reservation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/serializable/Reservation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Reservation;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Reservation;->a(Landroid/os/Parcel;)V

    .line 54
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/serializable/Reservation;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Reservation;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Reservation;->a(Lorg/json/JSONObject;)V

    .line 61
    iget-object v1, v0, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    invoke-static {v1}, Lcom/yelp/android/services/f;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    .line 62
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Reservation$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Reservation$1;->a(I)[Lcom/yelp/android/serializable/Reservation;

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
    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Reservation$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    return-object v0
.end method
