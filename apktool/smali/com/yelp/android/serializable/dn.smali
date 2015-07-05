.class final Lcom/yelp/android/serializable/dn;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "UserTiny.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/UserTiny;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserTiny;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/UserTiny;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UserTiny;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UserTiny;->readFromParcel(Landroid/os/Parcel;)V

    .line 56
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/UserTiny;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/serializable/UserTiny;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UserTiny;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UserTiny;->readFromJson(Lorg/json/JSONObject;)V

    .line 63
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/UserTiny;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lcom/yelp/android/serializable/UserTiny;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dn;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserTiny;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dn;->a(I)[Lcom/yelp/android/serializable/UserTiny;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/dn;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/UserTiny;

    move-result-object v0

    return-object v0
.end method
