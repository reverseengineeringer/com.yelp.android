.class public Lcom/yelp/android/serializable/Tip;
.super Lcom/yelp/android/serializable/_Tip;
.source "Tip.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/SingleFeedEntry;
.implements Lcom/yelp/android/serializable/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Tip$TempTip;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field private q:Landroid/graphics/Bitmap;

.field private r:Lcom/yelp/android/serializable/Feedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/serializable/Tip$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Tip;-><init>()V

    .line 72
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->r:Lcom/yelp/android/serializable/Feedback;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->k()I

    move-result v2

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v3

    .line 109
    const-string/jumbo v1, ""

    .line 110
    if-gtz v2, :cond_0

    if-lez v3, :cond_3

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    if-lez v3, :cond_1

    .line 114
    const v1, 0x7f080049

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_1
    if-lez v2, :cond_5

    .line 120
    const v0, 0x7f08003a

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {p1, v0, v2, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 125
    :goto_0
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 126
    const v0, 0x7f080041

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p1, v0, v3, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string/jumbo v2, " \u25cf "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    :goto_1
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 133
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 134
    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v2, v7, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    :cond_3
    return-object v1

    .line 129
    :cond_4
    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const v0, 0x7f070694

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_0
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->q:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Tip;->a(Landroid/os/Parcel;)V

    .line 168
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->r:Lcom/yelp/android/serializable/Feedback;

    .line 169
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->q:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->e:Lcom/yelp/android/serializable/Photo;

    .line 155
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->g:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->m:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->i:Ljava/lang/String;

    .line 151
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
    .line 183
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Tip;->a(Lorg/json/JSONObject;)V

    .line 184
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->s()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->l()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->r:Lcom/yelp/android/serializable/Feedback;

    .line 185
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/b;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    instance-of v0, p1, Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 285
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Tip;

    .line 286
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/serializable/Tip;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 287
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 289
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 286
    goto :goto_1

    :cond_4
    move v3, v2

    .line 287
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->h:Ljava/lang/String;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->l:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public c()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->QUICK_TIP:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->b:Ljava/util/Date;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/yelp/android/serializable/Tip;->f:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Tip;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->r:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Tip;->g:Ljava/lang/String;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->k()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()I
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->l()I

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ljava/util/Date;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/serializable/_Tip;->t()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Tip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->r:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/serializable/Tip;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return-void
.end method
