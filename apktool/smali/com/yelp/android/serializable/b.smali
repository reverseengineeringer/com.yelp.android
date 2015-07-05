.class final Lcom/yelp/android/serializable/b;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "AlertAction.java"


# annotations
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
    .line 36
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertAction;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertAction;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 49
    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    # setter for: Lcom/yelp/android/serializable/AlertAction;->mDisabled:Z
    invoke-static {v0, v1}, Lcom/yelp/android/serializable/AlertAction;->access$002(Lcom/yelp/android/serializable/AlertAction;Z)Z

    .line 50
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertAction;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/serializable/AlertAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AlertAction;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AlertAction;->readFromJson(Lorg/json/JSONObject;)V

    .line 57
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/AlertAction;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/yelp/android/serializable/AlertAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/b;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/AlertAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/b;->a(I)[Lcom/yelp/android/serializable/AlertAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/b;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/AlertAction;

    move-result-object v0

    return-object v0
.end method
