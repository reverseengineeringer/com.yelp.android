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


# instance fields
.field private m:Lcom/yelp/android/serializable/AlertType;

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/Alert$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Alert$1;-><init>()V

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

.method synthetic constructor <init>(Lcom/yelp/android/serializable/Alert$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/Alert;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Alert;->a(Landroid/os/Parcel;)V

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    .line 94
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Alert;->a(Lorg/json/JSONObject;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    const v1, 0x7f0e002c

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    .line 77
    :cond_1
    const-string/jumbo v0, "json_alert_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-static {v0}, Lcom/yelp/android/serializable/AlertType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    .line 81
    :cond_2
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/AlertType;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Alert;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/AlertType;->getTypeFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/Video;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 160
    check-cast p1, Lcom/yelp/android/serializable/Alert;

    .line 161
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    if-nez v2, :cond_d

    .line 162
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    if-nez v2, :cond_0

    .line 168
    :cond_3
    iget-boolean v2, p0, Lcom/yelp/android/serializable/Alert;->k:Z

    iget-boolean v3, p1, Lcom/yelp/android/serializable/Alert;->k:Z

    if-ne v2, v3, :cond_0

    .line 171
    iget v2, p0, Lcom/yelp/android/serializable/Alert;->l:I

    iget v3, p1, Lcom/yelp/android/serializable/Alert;->l:I

    if-ne v2, v3, :cond_0

    .line 174
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 175
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 182
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 189
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    if-nez v2, :cond_11

    .line 196
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    if-nez v2, :cond_0

    .line 202
    :cond_7
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->j:Lcom/yelp/android/serializable/Video;

    if-nez v2, :cond_12

    .line 203
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->j:Lcom/yelp/android/serializable/Video;

    if-nez v2, :cond_0

    .line 209
    :cond_8
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 210
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 216
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    if-nez v2, :cond_14

    .line 217
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 223
    :cond_a
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 224
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 230
    :cond_b
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 231
    iget-object v2, p1, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    .line 237
    goto :goto_0

    .line 165
    :cond_d
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 178
    :cond_e
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 185
    :cond_f
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 192
    :cond_10
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 199
    :cond_11
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Photo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 206
    :cond_12
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->j:Lcom/yelp/android/serializable/Video;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->j:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Video;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 213
    :cond_13
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 220
    :cond_14
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 227
    :cond_15
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 234
    :cond_16
    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->h()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 131
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/yelp/android/serializable/Alert;->k:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yelp/android/serializable/Alert;->l:I

    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    if-nez v2, :cond_c

    :goto_c
    add-int/2addr v0, v1

    .line 145
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->c:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->hashCode()I

    move-result v0

    goto :goto_5

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_7

    .line 140
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    .line 142
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlertType;->hashCode()I

    move-result v0

    goto :goto_a

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    .line 144
    :cond_c
    iget-object v1, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c
.end method

.method public bridge synthetic i()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_Alert;->j()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Alert;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->o:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->n:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/serializable/Alert;->m:Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 110
    return-void
.end method
