.class public Lcom/yelp/android/serializable/OfferRedemption;
.super Lcom/yelp/android/serializable/_OfferRedemption;
.source "OfferRedemption.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/OfferRedemption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/serializable/bp;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bp;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/OfferRedemption;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/serializable/_OfferRedemption;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getDateExpires()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateRedeemed()Ljava/util/Date;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDiscountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getDiscountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFinePrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getFinePrint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstructionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getInstructionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getItemText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondsToRedeem()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getSecondsToRedeem()I

    move-result v0

    return v0
.end method

.method public getSystemClockExpiration()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/yelp/android/serializable/OfferRedemption;->mSystemClockExpiration:J

    return-wide v0
.end method

.method public bridge synthetic getTotalCheckIns()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->getTotalCheckIns()I

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_OfferRedemption;->readFromJson(Lorg/json/JSONObject;)V

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/yelp/android/serializable/OfferRedemption;->mSecondsToRedeem:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/serializable/OfferRedemption;->mSystemClockExpiration:J

    .line 15
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_OfferRedemption;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_OfferRedemption;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_OfferRedemption;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
