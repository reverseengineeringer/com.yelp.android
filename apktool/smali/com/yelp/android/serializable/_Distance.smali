.class abstract Lcom/yelp/android/serializable/_Distance;
.super Ljava/lang/Object;
.source "_Distance.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:D


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Distance;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_0
    const-string/jumbo v1, "radius_in_miles"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 91
    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 74
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    .line 76
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
    .line 79
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    .line 82
    :cond_0
    const-string/jumbo v0, "radius_in_miles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    .line 83
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    if-ne p1, p0, :cond_2

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 43
    check-cast p1, Lcom/yelp/android/serializable/_Distance;

    .line 45
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_Distance;->b:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_Distance;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 70
    iget-wide v0, p0, Lcom/yelp/android/serializable/_Distance;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    return-void
.end method
