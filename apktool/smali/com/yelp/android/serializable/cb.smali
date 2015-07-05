.class final Lcom/yelp/android/serializable/cb;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "PromotedFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/PromotedFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PromotedFilter;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/serializable/PromotedFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PromotedFilter;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PromotedFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PromotedFilter;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/serializable/PromotedFilter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PromotedFilter;-><init>()V

    .line 88
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PromotedFilter;->readFromJson(Lorg/json/JSONObject;)V

    .line 89
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PromotedFilter;
    .locals 1

    .prologue
    .line 76
    new-array v0, p1, [Lcom/yelp/android/serializable/PromotedFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cb;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cb;->a(I)[Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cb;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    return-object v0
.end method
