.class abstract Lcom/yelp/android/serializable/_ReservationChangeEvent;
.super Ljava/lang/Object;
.source "_ReservationChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mReservation:Lcom/yelp/android/serializable/Reservation;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/Reservation;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationChangeEvent;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getReservation()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "reservation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "reservation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 54
    :cond_0
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 57
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    .line 47
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mReservation:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationChangeEvent;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
