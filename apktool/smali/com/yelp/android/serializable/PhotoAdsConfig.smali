.class public Lcom/yelp/android/serializable/PhotoAdsConfig;
.super Lcom/yelp/android/serializable/_PhotoAdsConfig;
.source "PhotoAdsConfig.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PhotoAdsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/PhotoAdsConfig$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PhotoAdsConfig$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PhotoAdsConfig;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/_PhotoAdsConfig;-><init>(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PhotoAdsConfig;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
