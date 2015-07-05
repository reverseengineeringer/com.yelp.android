.class public Lcom/yelp/android/serializable/Alert;
.super Lcom/yelp/android/serializable/_Alert;
.source "Alert.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON_ALERT_TYPE:Ljava/lang/String; = "json_alert_type"


# instance fields
.field private mAlertType:Lcom/yelp/android/serializable/AlertType;

.field private mFormattedText:Ljava/lang/CharSequence;

.field private mFormattedTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/serializable/a;

    invoke-direct {v0}, Lcom/yelp/android/serializable/a;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Alert;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/Alert;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/AlertType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/serializable/Alert;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    .line 58
    iput-object p2, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    .line 60
    iput-object p3, p0, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    .line 62
    iput-object p5, p0, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    check-cast p1, Lcom/yelp/android/serializable/Alert;

    .line 161
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    if-nez v2, :cond_3

    .line 162
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    if-eqz v2, :cond_4

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_4
    iget-boolean v2, p0, Lcom/yelp/android/serializable/Alert;->mClearOnView:Z

    iget-boolean v3, p1, Lcom/yelp/android/serializable/Alert;->mClearOnView:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_5
    iget v2, p0, Lcom/yelp/android/serializable/Alert;->mCount:I

    iget v3, p1, Lcom/yelp/android/serializable/Alert;->mCount:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_6
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 171
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 174
    goto :goto_0

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 176
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 177
    goto :goto_0

    .line 178
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 179
    goto :goto_0

    .line 180
    :cond_a
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 181
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    .line 182
    goto :goto_0

    .line 183
    :cond_b
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_c
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-nez v2, :cond_d

    .line 186
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v2, :cond_e

    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :cond_d
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Photo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 189
    goto/16 :goto_0

    .line 190
    :cond_e
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    if-nez v2, :cond_f

    .line 191
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    if-eqz v2, :cond_10

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 193
    :cond_f
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Video;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 195
    :cond_10
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 196
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 198
    :cond_11
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 199
    goto/16 :goto_0

    .line 200
    :cond_12
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    if-nez v2, :cond_13

    .line 201
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    if-eqz v2, :cond_14

    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 203
    :cond_13
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    .line 204
    goto/16 :goto_0

    .line 205
    :cond_14
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 206
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_16

    move v0, v1

    .line 207
    goto/16 :goto_0

    .line 208
    :cond_15
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    .line 209
    goto/16 :goto_0

    .line 210
    :cond_16
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 211
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 212
    goto/16 :goto_0

    .line 213
    :cond_17
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 214
    goto/16 :goto_0
.end method

.method public bridge synthetic getActions()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlertType()Lcom/yelp/android/serializable/AlertType;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Alert;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/AlertType;->getTypeFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    return-object v0
.end method

.method public bridge synthetic getClearOnView()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getClearOnView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getCount()I

    move-result v0

    return v0
.end method

.method public getFormattedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormattedTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOpenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getTimeModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideo()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->getVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/yelp/android/serializable/Alert;->mClearOnView:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yelp/android/serializable/Alert;->mCount:I

    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_c

    :goto_c
    add-int/2addr v0, v1

    .line 151
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mOpenUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->hashCode()I

    move-result v0

    goto :goto_5

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_7

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertType;->hashCode()I

    move-result v0

    goto :goto_a

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    .line 149
    :cond_c
    iget-object v1, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Alert;->readFromJson(Lorg/json/JSONObject;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f0a0010

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    .line 76
    :cond_1
    const-string/jumbo v0, "json_alert_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_2

    .line 78
    invoke-static {v0}, Lcom/yelp/android/serializable/AlertType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    .line 80
    :cond_2
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Alert;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    .line 101
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/yelp/android/serializable/Alert;->mActions:Ljava/util/List;

    .line 224
    return-void
.end method

.method public setVideo(Lcom/yelp/android/serializable/Video;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/serializable/Alert;->mVideo:Lcom/yelp/android/serializable/Video;

    .line 220
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "json_alert_type"

    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Alert;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mFormattedTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->mAlertType:Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    return-void
.end method
