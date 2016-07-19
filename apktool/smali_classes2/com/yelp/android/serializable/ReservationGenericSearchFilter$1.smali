.class final Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;
.super Lcom/yelp/android/serializable/a;
.source "ReservationGenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReservationGenericSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/ReservationGenericSearchFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 113
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;)V

    .line 120
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 121
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReservationGenericSearchFilter;
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;->a(I)[Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

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
    .line 104
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method
