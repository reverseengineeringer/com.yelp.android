.class abstract Lcom/yelp/android/serializable/_SearchLocation;
.super Ljava/lang/Object;
.source "_SearchLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/yelp/android/serializable/SearchLocation$Type;

.field protected c:D

.field protected d:D

.field protected e:D

.field protected f:D


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/SearchLocation$Type;DDDD)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SearchLocation;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 30
    iput-wide p3, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    .line 31
    iput-wide p5, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    .line 32
    iput-wide p7, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    .line 33
    iput-wide p9, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 116
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchLocation$Type;

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    .line 122
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
    .line 125
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    .line 128
    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/SearchLocation$Type;->fromApiString(Ljava/lang/String;)Lcom/yelp/android/serializable/SearchLocation$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 131
    :cond_1
    const-string/jumbo v0, "tl_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    .line 132
    const-string/jumbo v0, "tl_long"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    .line 133
    const-string/jumbo v0, "br_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    .line 134
    const-string/jumbo v0, "br_long"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    .line 135
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-ne p1, p0, :cond_2

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 54
    check-cast p1, Lcom/yelp/android/serializable/_SearchLocation;

    .line 56
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    iget-object v2, p1, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    iget-wide v4, p1, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(DD)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(D)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    iget-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 112
    iget-wide v0, p0, Lcom/yelp/android/serializable/_SearchLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 113
    return-void
.end method
