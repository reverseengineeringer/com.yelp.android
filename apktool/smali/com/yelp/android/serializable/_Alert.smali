.class abstract Lcom/yelp/android/serializable/_Alert;
.super Ljava/lang/Object;
.source "_Alert.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mClearOnView:Z

.field protected mCount:I

.field protected mId:Ljava/lang/String;

.field protected mImageUrl:Ljava/lang/String;

.field protected mOpenUrl:Ljava/lang/String;

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mText:Ljava/lang/String;

.field protected mTimeModified:Ljava/util/Date;

.field protected mTitle:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mVideo:Lcom/yelp/android/serializable/Video;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/Video;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            ">;",
            "Lcom/yelp/android/serializable/Photo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Video;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Alert;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    .line 34
    iput-object p2, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 36
    iput-object p4, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    .line 43
    iput-boolean p11, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    .line 44
    iput p12, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getClearOnView()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 128
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    .line 131
    :cond_0
    const-string/jumbo v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 132
    const-string/jumbo v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/AlertAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    .line 136
    :goto_0
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 139
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    .line 142
    :cond_2
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    .line 145
    :cond_3
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    .line 148
    :cond_4
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    .line 151
    :cond_5
    const-string/jumbo v0, "open_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    const-string/jumbo v0, "open_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    .line 154
    :cond_6
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 155
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    .line 157
    :cond_7
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    sget-object v0, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    .line 160
    :cond_8
    const-string/jumbo v0, "clear_on_view"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    .line 161
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    .line 162
    return-void

    .line 134
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 110
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 111
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    .line 113
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/AlertAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    .line 114
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    .line 121
    const-class v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    .line 125
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 170
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertAction;

    .line 172
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertAction;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 174
    :cond_1
    const-string/jumbo v0, "actions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_3

    .line 177
    const-string/jumbo v0, "photo"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 180
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 183
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 186
    const-string/jumbo v0, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 189
    const-string/jumbo v0, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 192
    const-string/jumbo v0, "open_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 195
    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    if-eqz v0, :cond_a

    .line 198
    const-string/jumbo v0, "video"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_a
    const-string/jumbo v0, "clear_on_view"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v0, "count"

    iget v2, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mOpenUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_Alert;->mClearOnView:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 105
    iget v0, p0, Lcom/yelp/android/serializable/_Alert;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Alert;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
