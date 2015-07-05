.class public Lcom/yelp/android/serializable/Offer;
.super Lcom/yelp/android/serializable/_Offer;
.source "Offer.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ComparatorDateRedeemed:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_KEY:Ljava/lang/String; = "offer"


# instance fields
.field private spanText:Landroid/text/Spanned;

.field private spanTitle:Landroid/text/Spanned;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/yelp/android/serializable/bm;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bm;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Offer;->CREATOR:Lcom/yelp/android/serializable/ah;

    .line 205
    new-instance v0, Lcom/yelp/android/serializable/bn;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bn;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Offer;->ComparatorDateRedeemed:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Offer;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckInsRemaining()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getCheckInsRemaining()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateAwarded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getDateAwarded()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getDateExpires()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOfferText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getOfferText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromoSpan()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanText:Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Offer;->getPromoText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanText:Landroid/text/Spanned;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanText:Landroid/text/Spanned;

    return-object v0
.end method

.method public bridge synthetic getPromoText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getPromoText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRedemption()Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanTitle:Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Offer;->getOfferText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanTitle:Landroid/text/Spanned;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->spanTitle:Landroid/text/Spanned;

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/yelp/android/serializable/Offer$OfferState;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->getState()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v0

    return-object v0
.end method

.method public isAwarded()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->EARNED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->REDEEMED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isRedeemed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsed()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getSecondsToRedeem()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getSystemClockExpiration()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Offer;->readFromJson(Lorg/json/JSONObject;)V

    .line 89
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Offer$OfferState;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Offer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setState(Lcom/yelp/android/serializable/Offer$OfferState;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yelp/android/serializable/Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    .line 110
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Offer;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
