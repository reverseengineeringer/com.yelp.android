.class final Lcom/yelp/android/serializable/c;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "AlertsResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertsResponse;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertsResponse;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertsResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertsResponse;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertsResponse;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertsResponse;->readFromJson(Lorg/json/JSONObject;)V

    .line 28
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/AlertsResponse;
    .locals 1

    .prologue
    .line 15
    new-array v0, p1, [Lcom/yelp/android/serializable/AlertsResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/c;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertsResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/c;->a(I)[Lcom/yelp/android/serializable/AlertsResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/c;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertsResponse;

    move-result-object v0

    return-object v0
.end method
