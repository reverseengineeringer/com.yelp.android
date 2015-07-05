.class abstract Lcom/yelp/android/serializable/_PlatformSearchAction;
.super Ljava/lang/Object;
.source "_PlatformSearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBorderColor:[I

.field protected mDefaultColorBottom:[I

.field protected mDefaultColorTop:[I

.field protected mIsDisabled:Z

.field protected mSelectedColorBottom:[I

.field protected mSelectedColorTop:[I

.field protected mText:Ljava/lang/String;

.field protected mTextColor:[I

.field protected mType:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[I[I[I[I[I[I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mText:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mUrl:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mIsDisabled:Z

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    .line 34
    iput-object p7, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    .line 35
    iput-object p8, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    .line 36
    iput-object p9, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    .line 37
    iput-object p10, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getBorderColor()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    return-object v0
.end method

.method public getDefaultColorBottom()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    return-object v0
.end method

.method public getDefaultColorTop()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    return-object v0
.end method

.method public getSelectedColorBottom()[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    return-object v0
.end method

.method public getSelectedColorTop()[I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mIsDisabled:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 114
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mType:Ljava/lang/String;

    .line 117
    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mText:Ljava/lang/String;

    .line 120
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mUrl:Ljava/lang/String;

    .line 123
    :cond_2
    const-string/jumbo v1, "is_disabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mIsDisabled:Z

    .line 124
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 127
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    move v1, v0

    .line 128
    :goto_0
    if-ge v1, v3, :cond_3

    .line 129
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_3
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 135
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    move v1, v0

    .line 136
    :goto_1
    if-ge v1, v3, :cond_4

    .line 137
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_4
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 143
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    move v1, v0

    .line 144
    :goto_2
    if-ge v1, v3, :cond_5

    .line 145
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_5
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 149
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 151
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    move v1, v0

    .line 152
    :goto_3
    if-ge v1, v3, :cond_6

    .line 153
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 156
    :cond_6
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 157
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 159
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    move v1, v0

    .line 160
    :goto_4
    if-ge v1, v3, :cond_7

    .line 161
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 164
    :cond_7
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 165
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 167
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    .line 168
    :goto_5
    if-ge v0, v2, :cond_8

    .line 169
    iget-object v3, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 172
    :cond_8
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mType:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mText:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mIsDisabled:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mIsDisabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mTextColor:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorTop:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mDefaultColorBottom:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorTop:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mSelectedColorBottom:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->mBorderColor:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 91
    return-void
.end method
