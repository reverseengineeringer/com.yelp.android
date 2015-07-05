.class abstract Lcom/yelp/android/serializable/_UpdatePrompt;
.super Ljava/lang/Object;
.source "_UpdatePrompt.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAppLaunchesBetweenUpdatePrompts:I

.field protected mMessage:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UpdatePrompt;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mMessage:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getAppLaunchesBetweenUpdatePrompts()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mMessage:Ljava/lang/String;

    .line 53
    :cond_0
    const-string/jumbo v0, "app_launches_between_update_prompts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    .line 54
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mMessage:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/yelp/android/serializable/_UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
