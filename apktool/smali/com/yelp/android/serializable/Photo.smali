.class public Lcom/yelp/android/serializable/Photo;
.super Lcom/yelp/android/serializable/_Photo;
.source "Photo.java"

# interfaces
.implements Lcom/yelp/android/serializable/Complimentable;
.implements Lcom/yelp/android/serializable/IdentifiableMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Photo$TempPhoto;,
        Lcom/yelp/android/serializable/Photo$PhotoType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private q:Lcom/yelp/android/serializable/Photo$PhotoType;

.field private r:Lcom/yelp/android/serializable/Feedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "not_helpful"

    sput-object v0, Lcom/yelp/android/serializable/Photo;->a:Ljava/lang/String;

    .line 301
    new-instance v0, Lcom/yelp/android/serializable/Photo$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Photo$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Photo;-><init>()V

    .line 66
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->r:Lcom/yelp/android/serializable/Feedback;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->b:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->q:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->c:Ljava/lang/String;

    .line 226
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string/jumbo v0, ""

    goto :goto_0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->shape:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/yelp/android/serializable/Photo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Photo;->a(Landroid/os/Parcel;)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Photo$PhotoType;->decode(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->q:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 136
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->r:Lcom/yelp/android/serializable/Feedback;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->c:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->b:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/serializable/Photo;->j:Ljava/lang/String;

    .line 179
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
    .line 127
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Photo;->a(Lorg/json/JSONObject;)V

    .line 128
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->y()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/serializable/Photo;->o:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->r:Lcom/yelp/android/serializable/Feedback;

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Photo$PhotoType;->decode(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->q:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 130
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media$MediaType;)Z
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/serializable/b;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    instance-of v0, p1, Lcom/yelp/android/serializable/Photo;

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 290
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 291
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->v()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/serializable/Photo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 293
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 290
    goto :goto_1

    :cond_4
    move v3, v2

    .line 291
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->g:Lcom/yelp/android/serializable/Passport;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->g:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->USER_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    goto :goto_0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    if-ne p0, p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Photo;

    if-nez v2, :cond_3

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 274
    iget-object v2, p0, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 275
    iget-object v2, p1, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 276
    goto :goto_0

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Medium:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->h()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 256
    .line 258
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 259
    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic i()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->r:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/yelp/android/serializable/Photo$PhotoType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->q:Lcom/yelp/android/serializable/Photo$PhotoType;

    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->m()Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    if-ne v0, v1, :cond_0

    .line 99
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    # getter for: Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/yelp/android/serializable/Photo$PhotoType;->access$000(Lcom/yelp/android/serializable/Photo$PhotoType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->i:Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Photo;->m()Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    if-ne v0, v1, :cond_0

    .line 105
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    # getter for: Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/yelp/android/serializable/Photo$PhotoType;->access$000(Lcom/yelp/android/serializable/Photo$PhotoType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->i:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/Photo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->f:Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/Photo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Small:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Original:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic w()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->w()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Photo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->r:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public bridge synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_Photo;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
