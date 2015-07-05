.class final Lcom/yelp/android/serializable/cz;
.super Lcom/yelp/android/serializable/ah;
.source "SearchResultLocalAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/SearchResultLocalAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;-><init>()V

    .line 94
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->readFromParcel(Landroid/os/Parcel;)V

    .line 95
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/yelp/android/serializable/SearchResultLocalAd;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchResultLocalAd;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->readFromJson(Lorg/json/JSONObject;)V

    .line 102
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/SearchResultLocalAd;
    .locals 1

    .prologue
    .line 88
    new-array v0, p1, [Lcom/yelp/android/serializable/SearchResultLocalAd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cz;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/SearchResultLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cz;->a(I)[Lcom/yelp/android/serializable/SearchResultLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cz;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/SearchResultLocalAd;

    move-result-object v0

    return-object v0
.end method
