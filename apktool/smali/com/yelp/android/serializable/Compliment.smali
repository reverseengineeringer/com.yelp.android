.class public Lcom/yelp/android/serializable/Compliment;
.super Lcom/yelp/android/serializable/_Compliment;
.source "Compliment.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Compliment$ComplimentType;,
        Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;,
        Lcom/yelp/android/serializable/Compliment$ComplimentState;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

.field private j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field private k:Lcom/yelp/android/serializable/Compliment$ComplimentState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/yelp/android/serializable/Compliment$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Compliment$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Compliment;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Compliment;-><init>()V

    .line 180
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->k:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 181
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Compliment$ComplimentType;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Compliment;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/yelp/android/serializable/Compliment;->d:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 204
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->a:Ljava/util/Date;

    .line 205
    iput-object p4, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    .line 206
    if-eqz p3, :cond_0

    .line 207
    invoke-interface {p3}, Lcom/yelp/android/serializable/Complimentable;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->g:Ljava/lang/String;

    .line 208
    invoke-interface {p3}, Lcom/yelp/android/serializable/Complimentable;->c()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Compliment;->a(Landroid/os/Parcel;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->k:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 261
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/yelp/android/serializable/Compliment;->k:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 226
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Compliment;->a(Lorg/json/JSONObject;)V

    .line 232
    :try_start_0
    const-string/jumbo v0, "complimentable_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    :try_start_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    if-ne p0, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 300
    goto :goto_0

    .line 302
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Compliment;

    if-nez v2, :cond_3

    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Compliment;

    .line 306
    iget-object v2, p0, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 307
    iget-object v2, p1, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 308
    goto :goto_0

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 311
    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 288
    .line 290
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 291
    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    return-object v0
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v0

    return v0
.end method

.method public k()Lcom/yelp/android/serializable/Compliment$ComplimentType;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    return-object v0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    return v0
.end method

.method public l()Lcom/yelp/android/serializable/Compliment$ComplimentState;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->k:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    return-object v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->M()I

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n_()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->h:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->s()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Compliment;->t()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Compliment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->i:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->k:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/serializable/Compliment;->j:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 253
    return-void
.end method
