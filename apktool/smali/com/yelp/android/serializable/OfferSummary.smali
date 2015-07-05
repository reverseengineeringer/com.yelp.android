.class public Lcom/yelp/android/serializable/OfferSummary;
.super Lcom/yelp/android/serializable/_OfferSummary;
.source "OfferSummary.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/OfferSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_KEY:Ljava/lang/String; = "check_in_offer_summary"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yelp/android/serializable/bq;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bq;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/OfferSummary;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_OfferSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferSummary;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferSummary;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferSummary;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferSummary;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/yelp/android/serializable/OfferSummary;->mCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/OfferSummary;->mNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/OfferSummary;->mNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_OfferSummary;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_OfferSummary;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_OfferSummary;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
