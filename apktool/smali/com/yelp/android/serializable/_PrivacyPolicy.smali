.class abstract Lcom/yelp/android/serializable/_PrivacyPolicy;
.super Ljava/lang/Object;
.source "_PrivacyPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mShareBasicInfoSource:Ljava/lang/String;

.field protected mShareBasicInfoStory:Ljava/lang/String;

.field protected mShareBasicInfoTime:Ljava/lang/String;

.field protected mShareDemographicsSource:Ljava/lang/String;

.field protected mShareDemographicsStory:Ljava/lang/String;

.field protected mShareDemographicsTime:Ljava/lang/String;

.field protected mShareProfileSource:Ljava/lang/String;

.field protected mShareProfileStory:Ljava/lang/String;

.field protected mShareProfileTime:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PrivacyPolicy;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getShareBasicInfoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    return-object v0
.end method

.method public getShareBasicInfoStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    return-object v0
.end method

.method public getShareBasicInfoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareDemographicsSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    return-object v0
.end method

.method public getShareDemographicsStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    return-object v0
.end method

.method public getShareDemographicsTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareProfileSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    return-object v0
.end method

.method public getShareProfileStory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    return-object v0
.end method

.method public getShareProfileTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "share_user_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "share_user_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    .line 103
    :cond_0
    const-string/jumbo v0, "share_user_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string/jumbo v0, "share_user_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    .line 106
    :cond_1
    const-string/jumbo v0, "share_user_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    const-string/jumbo v0, "share_user_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    .line 109
    :cond_2
    const-string/jumbo v0, "share_demo_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    const-string/jumbo v0, "share_demo_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    .line 112
    :cond_3
    const-string/jumbo v0, "share_demo_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    const-string/jumbo v0, "share_demo_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    .line 115
    :cond_4
    const-string/jumbo v0, "share_demo_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    const-string/jumbo v0, "share_demo_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    .line 118
    :cond_5
    const-string/jumbo v0, "share_nothing_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    const-string/jumbo v0, "share_nothing_story_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    .line 121
    :cond_6
    const-string/jumbo v0, "share_nothing_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    const-string/jumbo v0, "share_nothing_source_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    .line 124
    :cond_7
    const-string/jumbo v0, "share_nothing_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 125
    const-string/jumbo v0, "share_nothing_time_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    .line 127
    :cond_8
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileStory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareProfileTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsStory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareDemographicsTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoStory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_PrivacyPolicy;->mShareBasicInfoTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
