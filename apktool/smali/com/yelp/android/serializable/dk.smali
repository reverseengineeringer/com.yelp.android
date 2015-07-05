.class final Lcom/yelp/android/serializable/dk;
.super Lcom/yelp/android/serializable/ah;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 566
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->readFromParcel(Landroid/os/Parcel;)V

    .line 567
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 577
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 578
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->readFromJson(Lorg/json/JSONObject;)V

    .line 579
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 572
    new-array v0, p1, [Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dk;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dk;->a(I)[Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dk;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method
