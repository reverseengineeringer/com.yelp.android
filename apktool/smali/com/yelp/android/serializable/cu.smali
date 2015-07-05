.class final Lcom/yelp/android/serializable/cu;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReviewThreshold.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReviewThreshold;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewThreshold;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/ReviewThreshold;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewThreshold;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewThreshold;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewThreshold;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/serializable/ReviewThreshold;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewThreshold;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewThreshold;->readFromJson(Lorg/json/JSONObject;)V

    .line 44
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewThreshold;
    .locals 1

    .prologue
    .line 30
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewThreshold;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cu;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewThreshold;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cu;->a(I)[Lcom/yelp/android/serializable/ReviewThreshold;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cu;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewThreshold;

    move-result-object v0

    return-object v0
.end method
