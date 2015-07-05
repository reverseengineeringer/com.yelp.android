.class final Lcom/yelp/android/serializable/bw;
.super Lcom/yelp/android/serializable/ah;
.source "PlatformSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/PlatformSearchAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformSearchAction;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformSearchAction;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->readFromJson(Lorg/json/JSONObject;)V

    .line 52
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/yelp/android/serializable/PlatformSearchAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bw;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bw;->a(I)[Lcom/yelp/android/serializable/PlatformSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/bw;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformSearchAction;

    move-result-object v0

    return-object v0
.end method
