.class abstract Lcom/yelp/android/serializable/_ReservationLeaseResponse;
.super Ljava/lang/Object;
.source "_ReservationLeaseResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/Reservation;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Reservation;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    .line 97
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    .line 98
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    .line 99
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "last_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    .line 106
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    .line 109
    :cond_1
    const-string/jumbo v0, "legal_disclaimer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    const-string/jumbo v0, "legal_disclaimer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    .line 112
    :cond_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-ne p1, p0, :cond_2

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 48
    check-cast p1, Lcom/yelp/android/serializable/_ReservationLeaseResponse;

    .line 50
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->a:Lcom/yelp/android/serializable/Reservation;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationLeaseResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
