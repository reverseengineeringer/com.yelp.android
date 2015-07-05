.class final Lcom/yelp/android/serializable/h;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Attribution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Attribution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Attribution;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/Attribution;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Attribution;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Attribution;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Attribution;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/Attribution;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Attribution;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Attribution;->readFromJson(Lorg/json/JSONObject;)V

    .line 52
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Attribution;
    .locals 1

    .prologue
    .line 38
    new-array v0, p1, [Lcom/yelp/android/serializable/Attribution;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/h;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Attribution;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/h;->a(I)[Lcom/yelp/android/serializable/Attribution;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/h;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Attribution;

    move-result-object v0

    return-object v0
.end method
