.class public Lcom/yelp/android/appdata/RemoteConfigPreferences;
.super Ljava/lang/Object;
.source "RemoteConfigPreferences.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/yelp/android/serializable/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/az",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field private d:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field private e:Lcom/yelp/android/appdata/an;

.field private f:Lcom/yelp/android/appdata/am;

.field private g:Lcom/yelp/android/appdata/al;

.field private h:Lcom/yelp/android/appdata/ak;

.field private i:Lcom/yelp/android/appdata/ag;

.field private j:Lcom/yelp/android/appdata/ah;

.field private k:Lcom/yelp/android/appdata/ai;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lcom/yelp/android/appdata/af;

    invoke-direct {v0}, Lcom/yelp/android/appdata/af;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a:Lcom/yelp/android/serializable/az;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->d:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->c:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ag;)Lcom/yelp/android/appdata/ag;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i:Lcom/yelp/android/appdata/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ah;)Lcom/yelp/android/appdata/ah;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->j:Lcom/yelp/android/appdata/ah;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ai;)Lcom/yelp/android/appdata/ai;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->k:Lcom/yelp/android/appdata/ai;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ak;)Lcom/yelp/android/appdata/ak;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h:Lcom/yelp/android/appdata/ak;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/al;)Lcom/yelp/android/appdata/al;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->g:Lcom/yelp/android/appdata/al;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/am;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f:Lcom/yelp/android/appdata/am;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/an;)Lcom/yelp/android/appdata/an;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e:Lcom/yelp/android/appdata/an;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->o:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->n:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/RemoteConfigPreferences;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->m:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->c:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->d:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 431
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->c:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 426
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/ak;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h:Lcom/yelp/android/appdata/ak;

    .line 449
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/al;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->g:Lcom/yelp/android/appdata/al;

    .line 443
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f:Lcom/yelp/android/appdata/am;

    .line 475
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/an;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e:Lcom/yelp/android/appdata/an;

    .line 437
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->o:Ljava/lang/Boolean;

    .line 454
    return-object p0
.end method

.method public a(Z)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->m:Z

    .line 464
    return-object p0
.end method

.method public a(Lcom/yelp/android/appdata/ag;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i:Lcom/yelp/android/appdata/ag;

    .line 413
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/ah;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->j:Lcom/yelp/android/appdata/ah;

    .line 404
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/ai;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->k:Lcom/yelp/android/appdata/ai;

    .line 422
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->d:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->n:Ljava/lang/Boolean;

    .line 459
    return-object p0
.end method

.method public b(Z)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->l:Z

    .line 469
    return-object p0
.end method

.method public c()Lcom/yelp/android/appdata/an;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e:Lcom/yelp/android/appdata/an;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->n()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/yelp/android/appdata/al;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->g:Lcom/yelp/android/appdata/al;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/am;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f:Lcom/yelp/android/appdata/am;

    return-object v0
.end method

.method public g()Lcom/yelp/android/appdata/ak;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h:Lcom/yelp/android/appdata/ak;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->l:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->m:Z

    return v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Lcom/yelp/android/appdata/ah;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->j:Lcom/yelp/android/appdata/ah;

    return-object v0
.end method

.method public l()Lcom/yelp/android/appdata/ag;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i:Lcom/yelp/android/appdata/ag;

    return-object v0
.end method

.method public m()Lcom/yelp/android/appdata/ai;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences;->k:Lcom/yelp/android/appdata/ai;

    return-object v0
.end method

.method public n()Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 2

    .prologue
    .line 547
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
