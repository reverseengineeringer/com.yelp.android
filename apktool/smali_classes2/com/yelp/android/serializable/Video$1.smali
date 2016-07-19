.class final Lcom/yelp/android/serializable/Video$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 173
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/yelp/android/serializable/Video;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Video;-><init>()V

    .line 183
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Video;->a(Landroid/os/Parcel;)V

    .line 184
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/yelp/android/serializable/Video;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Video;-><init>()V

    .line 190
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Video;->a(Lorg/json/JSONObject;)V

    .line 191
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 177
    new-array v0, p1, [Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Video$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Video$1;->a(I)[Lcom/yelp/android/serializable/Video;

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
    .line 173
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Video$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method
