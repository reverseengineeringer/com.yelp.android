.class final Lcom/yelp/android/serializable/q;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "BusinessSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/BusinessSearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;-><init>()V

    .line 245
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 246
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;-><init>()V

    .line 252
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->readFromJson(Lorg/json/JSONObject;)V

    .line 253
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 1

    .prologue
    .line 240
    new-array v0, p1, [Lcom/yelp/android/serializable/BusinessSearchResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/q;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/q;->a(I)[Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/q;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    return-object v0
.end method
