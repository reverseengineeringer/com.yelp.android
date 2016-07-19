.class final Lcom/yelp/android/serializable/ReviewBroadcast$1;
.super Lcom/yelp/android/serializable/a;
.source "ReviewBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReviewBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/ReviewBroadcast;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Landroid/os/Parcel;)V

    .line 91
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Lorg/json/JSONObject;)V

    .line 98
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewBroadcast;
    .locals 1

    .prologue
    .line 84
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewBroadcast;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewBroadcast;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast$1;->a(I)[Lcom/yelp/android/serializable/ReviewBroadcast;

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
    .line 80
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewBroadcast;

    move-result-object v0

    return-object v0
.end method
