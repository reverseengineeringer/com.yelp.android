.class final Lcom/yelp/android/serializable/aa;
.super Lcom/yelp/android/serializable/ah;
.source "Compliment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Compliment;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/yelp/android/serializable/Compliment;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Compliment;-><init>()V

    .line 250
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Compliment;->readFromParcel(Landroid/os/Parcel;)V

    .line 251
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/yelp/android/serializable/Compliment;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Compliment;-><init>()V

    .line 257
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Compliment;->readFromJson(Lorg/json/JSONObject;)V

    .line 258
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Compliment;
    .locals 1

    .prologue
    .line 244
    new-array v0, p1, [Lcom/yelp/android/serializable/Compliment;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/aa;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/aa;->a(I)[Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/aa;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method
