.class final Lcom/yelp/android/serializable/LocalVideo$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/LocalVideo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/serializable/LocalVideo;

    invoke-direct {v0}, Lcom/yelp/android/serializable/LocalVideo;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/LocalVideo;->a(Landroid/os/Parcel;)V

    .line 58
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/serializable/LocalVideo;

    invoke-direct {v0}, Lcom/yelp/android/serializable/LocalVideo;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/LocalVideo;->a(Lorg/json/JSONObject;)V

    .line 65
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/LocalVideo;
    .locals 1

    .prologue
    .line 52
    new-array v0, p1, [Lcom/yelp/android/serializable/LocalVideo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalVideo$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalVideo$1;->a(I)[Lcom/yelp/android/serializable/LocalVideo;

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
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/LocalVideo$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    return-object v0
.end method
