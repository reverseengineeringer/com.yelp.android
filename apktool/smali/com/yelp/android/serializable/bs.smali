.class final Lcom/yelp/android/serializable/bs;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PaymentMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PaymentMethod;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PaymentMethod;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PaymentMethod;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PaymentMethod;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PaymentMethod;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PaymentMethod;->readFromJson(Lorg/json/JSONObject;)V

    .line 41
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PaymentMethod;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lcom/yelp/android/serializable/PaymentMethod;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bs;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bs;->a(I)[Lcom/yelp/android/serializable/PaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bs;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PaymentMethod;

    move-result-object v0

    return-object v0
.end method
