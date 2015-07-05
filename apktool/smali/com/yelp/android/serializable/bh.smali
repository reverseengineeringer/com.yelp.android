.class final Lcom/yelp/android/serializable/bh;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "MoreInfoAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/MoreInfoAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/MoreInfoAction;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MoreInfoAction;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/MoreInfoAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MoreInfoAction;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MoreInfoAction;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/MoreInfoAction;->readFromJson(Lorg/json/JSONObject;)V

    .line 26
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/MoreInfoAction;
    .locals 1

    .prologue
    .line 13
    new-array v0, p1, [Lcom/yelp/android/serializable/MoreInfoAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bh;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/MoreInfoAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bh;->a(I)[Lcom/yelp/android/serializable/MoreInfoAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bh;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MoreInfoAction;

    move-result-object v0

    return-object v0
.end method
