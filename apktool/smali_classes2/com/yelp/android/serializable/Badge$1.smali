.class final Lcom/yelp/android/serializable/Badge$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Badge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Badge;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Badge;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/serializable/Badge;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Badge;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Badge;->a(Landroid/os/Parcel;)V

    .line 38
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Badge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/Badge;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Badge;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Badge;->a(Lorg/json/JSONObject;)V

    .line 45
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Badge;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/yelp/android/serializable/Badge;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Badge$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Badge;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Badge$1;->a(I)[Lcom/yelp/android/serializable/Badge;

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
    .line 29
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Badge$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Badge;

    move-result-object v0

    return-object v0
.end method