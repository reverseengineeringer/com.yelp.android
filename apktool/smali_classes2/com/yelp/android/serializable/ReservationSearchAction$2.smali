.class final Lcom/yelp/android/serializable/ReservationSearchAction$2;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReservationSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReservationSearchAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 138
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Landroid/os/Parcel;)V

    .line 147
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction;->a(Lorg/json/JSONObject;)V

    .line 154
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->o()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, v0, Lcom/yelp/android/serializable/ReservationSearchAction;->a:Ljava/util/Date;

    invoke-static {v1}, Lcom/yelp/android/services/f;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/ReservationSearchAction;->a:Ljava/util/Date;

    .line 157
    :cond_0
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReservationSearchAction;
    .locals 1

    .prologue
    .line 141
    new-array v0, p1, [Lcom/yelp/android/serializable/ReservationSearchAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReservationSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction$2;->a(I)[Lcom/yelp/android/serializable/ReservationSearchAction;

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
    .line 138
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReservationSearchAction$2;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReservationSearchAction;

    move-result-object v0

    return-object v0
.end method
