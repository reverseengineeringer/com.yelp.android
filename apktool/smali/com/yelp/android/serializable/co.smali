.class final Lcom/yelp/android/serializable/co;
.super Lcom/yelp/android/serializable/ah;
.source "ReviewBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/ReviewBroadcast;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 89
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->readFromJson(Lorg/json/JSONObject;)V

    .line 97
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1

    .prologue
    .line 83
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewBroadcast;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/co;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/co;->a(I)[Lcom/yelp/android/serializable/ReviewBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/co;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewBroadcast;

    move-result-object v0

    return-object v0
.end method
