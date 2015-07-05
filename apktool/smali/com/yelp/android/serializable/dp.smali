.class final Lcom/yelp/android/serializable/dp;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "VideoFeedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/VideoFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/VideoFeedback;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/yelp/android/serializable/VideoFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/VideoFeedback;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/VideoFeedback;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/VideoFeedback;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/yelp/android/serializable/VideoFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/VideoFeedback;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/VideoFeedback;->readFromJson(Lorg/json/JSONObject;)V

    .line 83
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/VideoFeedback;
    .locals 1

    .prologue
    .line 69
    new-array v0, p1, [Lcom/yelp/android/serializable/VideoFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dp;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/VideoFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dp;->a(I)[Lcom/yelp/android/serializable/VideoFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/VideoFeedback;

    move-result-object v0

    return-object v0
.end method
