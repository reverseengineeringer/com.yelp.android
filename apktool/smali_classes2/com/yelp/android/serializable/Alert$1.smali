.class final Lcom/yelp/android/serializable/Alert$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Alert;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Alert;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/serializable/Alert;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/Alert;-><init>(Lcom/yelp/android/serializable/Alert$1;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Alert;->a(Landroid/os/Parcel;)V

    .line 39
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Alert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/serializable/Alert;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/Alert;-><init>(Lcom/yelp/android/serializable/Alert$1;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Alert;->a(Lorg/json/JSONObject;)V

    .line 46
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Alert;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/yelp/android/serializable/Alert;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Alert$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Alert;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Alert$1;->a(I)[Lcom/yelp/android/serializable/Alert;

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
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Alert$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Alert;

    move-result-object v0

    return-object v0
.end method
