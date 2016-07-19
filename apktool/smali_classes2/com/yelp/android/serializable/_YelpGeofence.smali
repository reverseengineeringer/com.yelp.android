.class abstract Lcom/yelp/android/serializable/_YelpGeofence;
.super Ljava/lang/Object;
.source "_YelpGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:D

.field protected b:D

.field protected c:D


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    return-wide v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    .line 89
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    .line 93
    const-string/jumbo v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    .line 94
    const-string/jumbo v0, "radius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    .line 95
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    if-ne p1, p0, :cond_2

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 45
    check-cast p1, Lcom/yelp/android/serializable/_YelpGeofence;

    .line 47
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpGeofence;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    return-void
.end method
