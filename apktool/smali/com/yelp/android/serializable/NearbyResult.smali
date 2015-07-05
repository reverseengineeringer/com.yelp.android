.class public Lcom/yelp/android/serializable/NearbyResult;
.super Lcom/yelp/android/serializable/_NearbyResult;
.source "NearbyResult.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/NearbyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRowId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/bk;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bk;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/NearbyResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_NearbyResult;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReason()Lcom/yelp/android/serializable/NearbyReason;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->getReason()Lcom/yelp/android/serializable/NearbyReason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_NearbyResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/serializable/NearbyResult;->mRowId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_NearbyResult;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_NearbyResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setRowId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/yelp/android/serializable/NearbyResult;->mRowId:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_NearbyResult;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
