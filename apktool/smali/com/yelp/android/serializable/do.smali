.class final Lcom/yelp/android/serializable/do;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Video;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/yelp/android/serializable/Video;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Video;-><init>()V

    .line 151
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Video;->readFromParcel(Landroid/os/Parcel;)V

    .line 152
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/yelp/android/serializable/Video;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Video;-><init>()V

    .line 158
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Video;->readFromJson(Lorg/json/JSONObject;)V

    .line 159
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 145
    new-array v0, p1, [Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/do;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/do;->a(I)[Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/do;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method
