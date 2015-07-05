.class abstract Lcom/yelp/android/serializable/_WeeklyIssueResponse;
.super Ljava/lang/Object;
.source "_WeeklyIssueResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/WeeklyIssue;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getWeeklyIssue()Lcom/yelp/android/serializable/WeeklyIssue;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "weekly_issue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/yelp/android/serializable/WeeklyIssue;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "weekly_issue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/WeeklyIssue;

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;

    .line 47
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/WeeklyIssue;

    iput-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->mWeeklyIssue:Lcom/yelp/android/serializable/WeeklyIssue;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 37
    return-void
.end method
