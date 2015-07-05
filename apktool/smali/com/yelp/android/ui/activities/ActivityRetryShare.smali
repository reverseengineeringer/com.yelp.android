.class public abstract Lcom/yelp/android/ui/activities/ActivityRetryShare;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityRetryShare.java"


# static fields
.field public static final g:Lcom/yelp/android/ui/activities/dw;

.field public static final h:Lcom/yelp/android/ui/activities/dw;

.field public static final i:Lcom/yelp/android/ui/activities/dw;

.field public static final j:Lcom/yelp/android/ui/activities/dw;


# instance fields
.field protected a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityRetryShare;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/os/Handler;

.field f:Lcom/yelp/android/ui/activities/dw;

.field protected final k:Lcom/yelp/android/ui/activities/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f070566

    const v2, 0x7f070565

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/dw;

    const v1, 0x7f07024e

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/dw;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Lcom/yelp/android/ui/activities/dw;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/dw;

    const v1, 0x7f07024f

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/dw;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->h:Lcom/yelp/android/ui/activities/dw;

    .line 58
    new-instance v0, Lcom/yelp/android/ui/activities/dw;

    const v1, 0x7f07024b

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/dw;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/dw;

    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/dw;

    const v1, 0x7f07024a

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/dw;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->j:Lcom/yelp/android/ui/activities/dw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 306
    new-instance v0, Lcom/yelp/android/ui/activities/du;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/du;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->k:Lcom/yelp/android/ui/activities/fg;

    .line 344
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string/jumbo v3, "types"

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "yelp:retry_shares"

    invoke-static {p2}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "exceptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->finish()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 338
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    if-ne v0, v1, :cond_0

    .line 339
    const v0, 0x7f070620

    const/high16 v1, 0x1040000

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->showYesNoDialog(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRetryShare;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(I)V

    return-void
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            "+",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ">;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 100
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string/jumbo v3, "types"

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "exceptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b()Lcom/yelp/android/services/ShareService$ShareObjectType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/yelp/android/ui/activities/dw;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Lcom/yelp/android/ui/activities/dw;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/yelp/android/ui/activities/dv;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x412

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method abstract b()Lcom/yelp/android/services/ShareService$ShareObjectType;
.end method

.method c()V
    .locals 5

    .prologue
    const/high16 v4, 0x1040000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->finish()V

    .line 204
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 192
    if-nez v1, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Lcom/yelp/android/ui/activities/dw;

    iget v1, v1, Lcom/yelp/android/ui/activities/dw;->a:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07034e

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Lcom/yelp/android/ui/activities/dw;

    iget v1, v1, Lcom/yelp/android/ui/activities/dw;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070500

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    :cond_0
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 280
    :goto_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->finish()V

    .line 281
    return-void

    .line 276
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    const-string/jumbo v1, "yelp:retry_shares"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-static {v2}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 278
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)V

    .line 295
    const/16 v0, 0x412

    if-ne p1, v0, :cond_1

    .line 296
    if-eqz p2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 304
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a()Lcom/yelp/android/ui/activities/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Lcom/yelp/android/ui/activities/dw;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v2, 0x7f070521

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->k:Lcom/yelp/android/ui/activities/fg;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "exceptions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "yelp:retry_shares"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/LinkedList;

    const-string/jumbo v2, "types"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    .line 160
    new-instance v1, Ljava/util/LinkedList;

    const-string/jumbo v2, "exceptions"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    .line 162
    const-string/jumbo v1, "yelp:retry_shares"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Ljava/util/HashSet;

    const-string/jumbo v2, "yelp:retry_shares"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    const-string/jumbo v0, "types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 287
    const-string/jumbo v0, "exceptions"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 288
    const-string/jumbo v0, "yelp:retry_shares"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 289
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 178
    :cond_1
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 209
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 210
    packed-switch p2, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 212
    :pswitch_0
    if-eqz p1, :cond_1

    .line 213
    invoke-static {v1}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/ds;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ds;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 229
    :pswitch_1
    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/dt;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/dt;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
