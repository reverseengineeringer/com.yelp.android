.class public Lcom/yelp/android/serializable/PrivacyPolicy;
.super Lcom/yelp/android/serializable/_PrivacyPolicy;
.source "PrivacyPolicy.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PrivacyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/ca;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ca;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PrivacyPolicy;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShareBasicInfoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareBasicInfoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareBasicInfoStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareBasicInfoStory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareBasicInfoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareBasicInfoTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareDemographicsSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareDemographicsSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareDemographicsStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareDemographicsStory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareDemographicsTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareDemographicsTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareProfileSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareProfileSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareProfileStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareProfileStory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShareProfileTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;->getShareProfileTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PrivacyPolicy;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PrivacyPolicy;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setShareBasicInfoSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setShareBasicInfoStory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setShareBasicInfoTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setShareDemographicsSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setShareDemographicsStory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setShareDemographicsTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setShareProfileSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setShareProfileStory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setShareProfileTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PrivacyPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
