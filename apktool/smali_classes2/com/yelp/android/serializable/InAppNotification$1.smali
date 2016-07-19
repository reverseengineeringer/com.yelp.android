.class final Lcom/yelp/android/serializable/InAppNotification$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "InAppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/InAppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/InAppNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/InAppNotification;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/yelp/android/serializable/InAppNotification;

    invoke-direct {v0}, Lcom/yelp/android/serializable/InAppNotification;-><init>()V

    .line 130
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/InAppNotification;->a(Landroid/os/Parcel;)V

    .line 131
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/InAppNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/yelp/android/serializable/InAppNotification;

    invoke-direct {v0}, Lcom/yelp/android/serializable/InAppNotification;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/InAppNotification;->a(Lorg/json/JSONObject;)V

    .line 138
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/InAppNotification;
    .locals 1

    .prologue
    .line 125
    new-array v0, p1, [Lcom/yelp/android/serializable/InAppNotification;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/InAppNotification$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/InAppNotification$1;->a(I)[Lcom/yelp/android/serializable/InAppNotification;

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
    .line 122
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/InAppNotification$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/InAppNotification;

    move-result-object v0

    return-object v0
.end method
