.class final Lcom/yelp/android/serializable/AlertAction$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "AlertAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/AlertAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/AlertAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertAction;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertAction;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertAction;->a(Landroid/os/Parcel;)V

    .line 46
    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 48
    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/AlertAction;->a(Lcom/yelp/android/serializable/AlertAction;Z)Z

    .line 49
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertAction;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertAction;->a(Lorg/json/JSONObject;)V

    .line 56
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/AlertAction;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/yelp/android/serializable/AlertAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/AlertAction$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/AlertAction$1;->a(I)[Lcom/yelp/android/serializable/AlertAction;

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
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/AlertAction$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertAction;

    move-result-object v0

    return-object v0
.end method
