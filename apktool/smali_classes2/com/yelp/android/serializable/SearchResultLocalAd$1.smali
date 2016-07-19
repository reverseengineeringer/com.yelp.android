.class final Lcom/yelp/android/serializable/SearchResultLocalAd$1;
.super Lcom/yelp/android/serializable/a;
.source "SearchResultLocalAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/SearchResultLocalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/SearchResultLocalAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a(Landroid/os/Parcel;)V

    .line 94
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a(Lorg/json/JSONObject;)V

    .line 101
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1

    .prologue
    .line 87
    new-array v0, p1, [Lcom/yelp/android/serializable/SearchResultLocalAd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd$1;->a(I)[Lcom/yelp/android/serializable/SearchResultLocalAd;

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
    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultLocalAd;

    move-result-object v0

    return-object v0
.end method
