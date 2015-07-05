.class public Lcom/yelp/android/serializable/Badge;
.super Lcom/yelp/android/serializable/_Badge;
.source "Badge.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/i;

    invoke-direct {v0}, Lcom/yelp/android/serializable/i;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Badge;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Badge;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireFadeTint()I
    .locals 2

    .prologue
    .line 33
    const/high16 v0, 0x434f0000    # 207.0f

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Badge;->getExpirePercent()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 34
    const v1, 0xffffff

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getExpirePercent()F
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getExpirePercent()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpireTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getExpireTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageSmallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getImageSmallPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getImageSmallUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeAwarded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getTimeAwarded()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAssigned()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->isAssigned()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNew()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->isNew()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Badge;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Badge;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_Badge;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Badge;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
