.class abstract Lcom/yelp/android/serializable/_YelpAddresses;
.super Ljava/lang/Object;
.source "_YelpAddresses.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpAddress;

.field protected b:Lcom/yelp/android/serializable/YelpAddress;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpAddresses;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    .line 22
    iput-object p2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "primary_language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpAddress;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    if-eqz v1, :cond_1

    .line 97
    const-string/jumbo v1, "secondary_language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpAddress;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_1
    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    .line 78
    const-class v0, Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    .line 79
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
    .line 82
    const-string/jumbo v0, "primary_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/yelp/android/serializable/YelpAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "primary_language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    .line 85
    :cond_0
    const-string/jumbo v0, "secondary_language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lcom/yelp/android/serializable/YelpAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "secondary_language"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    .line 89
    :cond_1
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

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
    check-cast p1, Lcom/yelp/android/serializable/_YelpAddresses;

    .line 45
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->a:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpAddresses;->b:Lcom/yelp/android/serializable/YelpAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
