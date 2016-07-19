.class public Lcom/facebook/login/c;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/c$b;,
        Lcom/facebook/login/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/c;


# instance fields
.field private c:Lcom/facebook/login/LoginBehavior;

.field private d:Lcom/facebook/login/DefaultAudience;

.field private e:Lcom/facebook/login/LoginClient$Request;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/facebook/login/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/login/c;->c()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/c;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/facebook/login/LoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/c;->c:Lcom/facebook/login/LoginBehavior;

    .line 63
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/c;->d:Lcom/facebook/login/DefaultAudience;

    .line 70
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 71
    return-void
.end method

.method private a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-static {p1}, Lcom/facebook/login/LoginFragment;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 464
    return-object v0
.end method

.method public static a()Lcom/facebook/login/c;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    if-nez v0, :cond_1

    .line 79
    const-class v1, Lcom/facebook/login/c;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/facebook/login/c;

    invoke-direct {v0}, Lcom/facebook/login/c;-><init>()V

    sput-object v0, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/d;
    .locals 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 476
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 480
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 481
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 482
    new-instance v0, Lcom/facebook/login/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/d;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/FacebookException;ZLcom/facebook/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    if-eqz p1, :cond_0

    .line 491
    invoke-static {p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 492
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 495
    :cond_0
    if-eqz p4, :cond_2

    .line 496
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v0, p1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/d;

    move-result-object v0

    .line 500
    :goto_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/login/d;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 503
    :cond_1
    invoke-interface {p4}, Lcom/facebook/f;->a()V

    .line 512
    :cond_2
    :goto_1
    return-void

    .line 496
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    :cond_4
    if-eqz p2, :cond_5

    .line 507
    invoke-interface {p4, p2}, Lcom/facebook/f;->a(Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 508
    :cond_5
    if-eqz p1, :cond_2

    .line 509
    invoke-interface {p4, v0}, Lcom/facebook/f;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/facebook/login/c;->d()Lcom/facebook/login/b;

    move-result-object v0

    const-string/jumbo v1, "fb_mobile_login_complete"

    const-string/jumbo v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/c;->d()Lcom/facebook/login/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/c;->f:Ljava/util/HashMap;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 356
    iput-object p2, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/c;->f:Ljava/util/HashMap;

    .line 358
    invoke-interface {p1}, Lcom/facebook/login/e;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/c;->g:Landroid/content/Context;

    .line 360
    invoke-direct {p0}, Lcom/facebook/login/c;->e()V

    .line 363
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/c$2;

    invoke-direct {v1, p0}, Lcom/facebook/login/c$2;-><init>(Lcom/facebook/login/c;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->a(ILcom/facebook/internal/CallbackManagerImpl$a;)V

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/c;->b(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/facebook/login/c;->f:Ljava/util/HashMap;

    const-string/jumbo v3, "try_login_activity"

    if-eqz v1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    if-nez v1, :cond_1

    .line 382
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    invoke-direct {p0, v1, v4, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 386
    iput-object v4, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    .line 387
    throw v0

    .line 375
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 389
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    if-nez p1, :cond_1

    .line 306
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    invoke-static {v0}, Lcom/facebook/login/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 448
    if-nez v1, :cond_0

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 323
    if-eqz p0, :cond_1

    const-string/jumbo v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/c;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_1

    .line 320
    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    invoke-static {v0}, Lcom/facebook/login/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 314
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-direct {p0, v1}, Lcom/facebook/login/c;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    :goto_0
    return v0

    .line 435
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/facebook/login/e;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/c;->c:Lcom/facebook/login/LoginBehavior;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/c;->d:Lcom/facebook/login/DefaultAudience;

    invoke-static {}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 348
    return-object v0

    .line 339
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 347
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/facebook/login/b;
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/login/c;->h:Lcom/facebook/login/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/c;->h:Lcom/facebook/login/b;

    invoke-virtual {v0}, Lcom/facebook/login/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    new-instance v0, Lcom/facebook/login/b;

    iget-object v1, p0, Lcom/facebook/login/c;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/c;->h:Lcom/facebook/login/b;

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/c;->h:Lcom/facebook/login/b;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/facebook/login/c;->d()Lcom/facebook/login/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/facebook/login/b;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 404
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/c;
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/facebook/login/c;->d:Lcom/facebook/login/DefaultAudience;

    .line 230
    return-object p0
.end method

.method public a(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/c;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/facebook/login/c;->c:Lcom/facebook/login/LoginBehavior;

    .line 212
    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->a(Ljava/util/Collection;)V

    .line 261
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/facebook/login/c$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/c$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 263
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->a(Ljava/util/Collection;)V

    .line 249
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/facebook/login/c$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/c$b;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 251
    return-void
.end method

.method public a(Lcom/facebook/d;Lcom/facebook/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d;",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/c$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/c$1;-><init>(Lcom/facebook/login/c;Lcom/facebook/f;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->b(ILcom/facebook/internal/CallbackManagerImpl$a;)V

    .line 147
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/c;->a(ILandroid/content/Intent;Lcom/facebook/f;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lcom/facebook/f;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/d;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/facebook/login/c;->e:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return v1

    .line 161
    :cond_0
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 165
    if-eqz p2, :cond_4

    .line 166
    const-string/jumbo v0, "com.facebook.LoginFragment:Result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Result;

    .line 168
    if-eqz v0, :cond_7

    .line 169
    iget-object v5, v0, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$Code;

    .line 170
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 171
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v6, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v3, v6, :cond_2

    .line 172
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 179
    :goto_1
    iget-object v0, v0, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    move-object v7, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v7

    :goto_2
    move-object v7, v0

    move-object v0, v5

    move-object v5, v3

    move-object v3, v7

    .line 186
    :goto_3
    if-nez v0, :cond_1

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 187
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v6, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v0, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-direct {p0, v3, v4, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 192
    invoke-direct {p0, v5, v0, v1, p3}, Lcom/facebook/login/c;->a(Lcom/facebook/AccessToken;Lcom/facebook/FacebookException;ZLcom/facebook/f;)V

    move v1, v2

    .line 194
    goto :goto_0

    .line 174
    :cond_2
    new-instance v3, Lcom/facebook/FacebookAuthorizationException;

    iget-object v6, v0, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    .line 176
    :cond_3
    if-nez p1, :cond_6

    move v1, v2

    move-object v3, v4

    .line 177
    goto :goto_1

    .line 181
    :cond_4
    if-nez p1, :cond_5

    .line 183
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    move v1, v2

    move-object v3, v0

    move-object v5, v4

    move-object v0, v4

    goto :goto_3

    :cond_5
    move-object v5, v4

    move-object v0, v4

    goto :goto_3

    :cond_6
    move-object v3, v4

    goto :goto_1

    :cond_7
    move-object v0, v3

    move-object v5, v4

    move-object v3, v4

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 238
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 239
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->b(Ljava/util/Collection;)V

    .line 285
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/facebook/login/c$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/c$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 287
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->b(Ljava/util/Collection;)V

    .line 273
    invoke-direct {p0, p2}, Lcom/facebook/login/c;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/facebook/login/c$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/c$b;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/c;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Request;)V

    .line 275
    return-void
.end method
