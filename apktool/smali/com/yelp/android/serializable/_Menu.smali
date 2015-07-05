.class abstract Lcom/yelp/android/serializable/_Menu;
.super Ljava/lang/Object;
.source "_Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mActionImageUrl:Ljava/lang/String;

.field protected mActionText:Ljava/lang/String;

.field protected mActionTitle:Ljava/lang/String;

.field protected mActionUrl:Ljava/lang/String;

.field protected mViewTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Menu;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getActionImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    return-object v0
.end method

.method public getActionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "action_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "action_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    .line 75
    :cond_0
    const-string/jumbo v0, "action_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "action_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    .line 78
    :cond_1
    const-string/jumbo v0, "action_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-string/jumbo v0, "action_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    .line 81
    :cond_2
    const-string/jumbo v0, "action_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    const-string/jumbo v0, "action_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    .line 84
    :cond_3
    const-string/jumbo v0, "view_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    const-string/jumbo v0, "view_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    .line 87
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "action_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 95
    const-string/jumbo v1, "action_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 98
    const-string/jumbo v1, "action_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 101
    const-string/jumbo v1, "action_image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 104
    const-string/jumbo v1, "view_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mActionImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Menu;->mViewTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
