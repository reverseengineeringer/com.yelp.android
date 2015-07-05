.class final Lcom/yelp/android/serializable/bu;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PhotoFeedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PhotoFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PhotoFeedback;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/PhotoFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PhotoFeedback;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PhotoFeedback;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PhotoFeedback;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/serializable/PhotoFeedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PhotoFeedback;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PhotoFeedback;->readFromJson(Lorg/json/JSONObject;)V

    .line 31
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PhotoFeedback;
    .locals 1

    .prologue
    .line 18
    new-array v0, p1, [Lcom/yelp/android/serializable/PhotoFeedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bu;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PhotoFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bu;->a(I)[Lcom/yelp/android/serializable/PhotoFeedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bu;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PhotoFeedback;

    move-result-object v0

    return-object v0
.end method
