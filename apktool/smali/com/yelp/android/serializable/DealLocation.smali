.class public Lcom/yelp/android/serializable/DealLocation;
.super Lcom/yelp/android/serializable/_DealLocation;
.source "DealLocation.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/DealLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/ad;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ad;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealLocation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DealLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealLocation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealLocation;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealLocation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEnabled()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealLocation;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealLocation;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealLocation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/yelp/android/serializable/DealLocation;->mIsEnabled:Z

    .line 34
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_DealLocation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
