.class final Lcom/yelp/android/serializable/Movie$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Movie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Movie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Movie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Movie;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/serializable/Movie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/Movie;-><init>(Lcom/yelp/android/serializable/Movie$1;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Movie;->a(Landroid/os/Parcel;)V

    .line 36
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Movie;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/serializable/Movie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/Movie;-><init>(Lcom/yelp/android/serializable/Movie$1;)V

    .line 42
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Movie;->a(Lorg/json/JSONObject;)V

    .line 43
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Movie;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lcom/yelp/android/serializable/Movie;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Movie$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Movie;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Movie$1;->a(I)[Lcom/yelp/android/serializable/Movie;

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
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Movie$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Movie;

    move-result-object v0

    return-object v0
.end method
