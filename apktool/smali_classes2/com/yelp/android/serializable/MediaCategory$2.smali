.class final Lcom/yelp/android/serializable/MediaCategory$2;
.super Lcom/yelp/android/serializable/a;
.source "MediaCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/MediaCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/MediaCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/MediaCategory;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MediaCategory;-><init>()V

    .line 99
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/MediaCategory;->a(Landroid/os/Parcel;)V

    .line 100
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/yelp/android/serializable/MediaCategory;

    invoke-direct {v0}, Lcom/yelp/android/serializable/MediaCategory;-><init>()V

    .line 106
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/MediaCategory;->a(Lorg/json/JSONObject;)V

    .line 107
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/MediaCategory;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [Lcom/yelp/android/serializable/MediaCategory;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/MediaCategory$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/MediaCategory$2;->a(I)[Lcom/yelp/android/serializable/MediaCategory;

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
    .line 91
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/MediaCategory$2;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    return-object v0
.end method
