.class public abstract Lcom/yelp/android/ui/activities/ActivityRetryShare;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityRetryShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityRetryShare$4;,
        Lcom/yelp/android/ui/activities/ActivityRetryShare$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

.field public static final j:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

.field public static final k:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

.field public static final l:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

.field public static final m:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;


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

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityRetryShare;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/os/Handler;

.field h:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

.field protected final n:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f070566

    const v2, 0x7f070565

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    const v1, 0x7f0702a6

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    .line 59
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    const v1, 0x7f0702a7

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->j:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    const v1, 0x7f0702a1

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->k:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    const v1, 0x7f0702a0

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->l:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    const v1, 0x7f0702a5

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;-><init>(III)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->m:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 319
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare$3;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->n:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    .line 365
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
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryShare;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string/jumbo v3, "content_share_types"

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "retry_shares"

    invoke-static {p2}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "exceptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->finish()V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 356
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    if-ne v0, v1, :cond_0

    .line 357
    const v0, 0x7f07060c

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

.method protected static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;
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
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 120
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string/jumbo v3, "content_share_types"

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "award_share_types"

    invoke-static {p3}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "exceptions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    return-object v0
.end method

.method private d()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b()Lcom/yelp/android/services/ShareService$ShareObjectType;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Ljava/util/Set;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/ActivityRetryShare$a;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$4;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    goto :goto_0

    .line 270
    :pswitch_1
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x412

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 263
    nop

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

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->finish()V

    .line 218
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 201
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 202
    if-nez v1, :cond_1

    .line 204
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->h:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->a:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07038a

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->h:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070505

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->showYesNoDialog(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d()Landroid/content/Intent;

    move-result-object v0

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 302
    :goto_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->finish()V

    .line 303
    return-void

    .line 297
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    const-string/jumbo v1, "retry_shares"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    invoke-static {v2}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 300
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)Z

    .line 317
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a()Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->h:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v1, 0x7f07051c

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->n:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->d:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "content_share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "exceptions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "retry_shares"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    .line 178
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/LinkedList;

    const-string/jumbo v2, "content_share_types"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    .line 161
    const-string/jumbo v1, "award_share_types"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Ljava/util/ArrayList;

    .line 164
    new-instance v1, Ljava/util/LinkedList;

    const-string/jumbo v2, "exceptions"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    .line 167
    const-string/jumbo v1, "retry_shares"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v1, Ljava/util/HashSet;

    const-string/jumbo v2, "retry_shares"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    .line 176
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Ljava/util/Set;

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string/jumbo v0, "content_share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 309
    const-string/jumbo v0, "exceptions"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 310
    const-string/jumbo v0, "retry_shares"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 311
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onStart()V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->finish()V

    goto :goto_0
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 224
    packed-switch p2, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 226
    :pswitch_0
    if-eqz p1, :cond_1

    .line 227
    invoke-static {v1}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityRetryShare$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare$1;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 247
    :pswitch_1
    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityRetryShare$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare$2;-><init>(Lcom/yelp/android/ui/activities/ActivityRetryShare;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
