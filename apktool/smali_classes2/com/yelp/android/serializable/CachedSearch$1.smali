.class final Lcom/yelp/android/serializable/CachedSearch$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "CachedSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/CachedSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/CachedSearch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CachedSearch;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/serializable/CachedSearch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/CachedSearch;-><init>(Lcom/yelp/android/serializable/CachedSearch$1;)V

    .line 43
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CachedSearch;->a(Landroid/os/Parcel;)V

    .line 44
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CachedSearch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/serializable/CachedSearch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/CachedSearch;-><init>(Lcom/yelp/android/serializable/CachedSearch$1;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CachedSearch;->a(Lorg/json/JSONObject;)V

    .line 51
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/CachedSearch;
    .locals 1

    .prologue
    .line 38
    new-array v0, p1, [Lcom/yelp/android/serializable/CachedSearch;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CachedSearch$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CachedSearch;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CachedSearch$1;->a(I)[Lcom/yelp/android/serializable/CachedSearch;

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
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CachedSearch$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CachedSearch;

    move-result-object v0

    return-object v0
.end method
