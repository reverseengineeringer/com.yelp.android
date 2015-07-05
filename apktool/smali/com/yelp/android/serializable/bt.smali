.class final Lcom/yelp/android/serializable/bt;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Photo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/yelp/android/serializable/Photo;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Photo;-><init>()V

    .line 213
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Photo;->readFromParcel(Landroid/os/Parcel;)V

    .line 214
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/yelp/android/serializable/Photo;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Photo;-><init>()V

    .line 220
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Photo;->readFromJson(Lorg/json/JSONObject;)V

    .line 221
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 207
    new-array v0, p1, [Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bt;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bt;->a(I)[Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bt;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method
