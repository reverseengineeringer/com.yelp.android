.class final Lcom/yelp/android/serializable/ReviewDeleteResponse$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "ReviewDeleteResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReviewDeleteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/ReviewDeleteResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewDeleteResponse;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/ReviewDeleteResponse;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewDeleteResponse;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewDeleteResponse;->a(Landroid/os/Parcel;)V

    .line 25
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewDeleteResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/ReviewDeleteResponse;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewDeleteResponse;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewDeleteResponse;->a(Lorg/json/JSONObject;)V

    .line 32
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/ReviewDeleteResponse;
    .locals 1

    .prologue
    .line 19
    new-array v0, p1, [Lcom/yelp/android/serializable/ReviewDeleteResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewDeleteResponse$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/ReviewDeleteResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewDeleteResponse$1;->a(I)[Lcom/yelp/android/serializable/ReviewDeleteResponse;

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
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ReviewDeleteResponse$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/ReviewDeleteResponse;

    move-result-object v0

    return-object v0
.end method
