.class final Lcom/yelp/android/serializable/em;
.super Lcom/yelp/android/serializable/ah;
.source "YelpHoursPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/YelpHoursPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpHoursPair;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpHoursPair;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpHoursPair;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-object v0
.end method

.method public a(Lorg/json/JSONArray;)Lcom/yelp/android/serializable/YelpHoursPair;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/YelpHoursPair;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/YelpHoursPair;-><init>(II)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/YelpHoursPair;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/yelp/android/serializable/YelpHoursPair;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/em;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/YelpHoursPair;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/em;->a(I)[Lcom/yelp/android/serializable/YelpHoursPair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/em;->a(Lorg/json/JSONArray;)Lcom/yelp/android/serializable/YelpHoursPair;

    move-result-object v0

    return-object v0
.end method
