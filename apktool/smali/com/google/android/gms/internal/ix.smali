.class public Lcom/google/android/gms/internal/ix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ix$e;,
        Lcom/google/android/gms/internal/ix$d;,
        Lcom/google/android/gms/internal/ix$b;,
        Lcom/google/android/gms/internal/ix$a;,
        Lcom/google/android/gms/internal/ix$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Lcom/google/android/gms/internal/ix$e;

.field private static final c:J


# instance fields
.field private final d:Lcom/google/android/gms/internal/jt;

.field private final e:Lcom/google/android/gms/internal/ix$a;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private final h:J

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ix;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ix$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ix$e;-><init>(Lcom/google/android/gms/internal/ix$1;)V

    sput-object v0, Lcom/google/android/gms/internal/ix;->b:Lcom/google/android/gms/internal/ix$e;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ix;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/jv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jv;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/ix;->c:J

    new-instance v1, Lcom/google/android/gms/internal/ix$b;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ix$b;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ix;-><init>(Lcom/google/android/gms/internal/jt;JLcom/google/android/gms/internal/ix$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jt;JLcom/google/android/gms/internal/ix$a;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ix;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ix;->g:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ix;->i:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/ix;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/ix$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ix$1;-><init>(Lcom/google/android/gms/internal/ix;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ix;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ix;->d:Lcom/google/android/gms/internal/jt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ix;->h:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ix;->e:Lcom/google/android/gms/internal/ix$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ix;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ix$e;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ix;->b:Lcom/google/android/gms/internal/ix$e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ix;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ix;->b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ix;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ix;->g:J

    return-wide v0
.end method

.method private b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/ix$d;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ix;->b:Lcom/google/android/gms/internal/ix$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix$e;->a()V

    new-instance v0, Lcom/google/android/gms/internal/ix$d;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ix$d;-><init>(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/ix$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ix$2;-><init>(Lcom/google/android/gms/internal/ix;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ix$d;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->f:Lcom/google/android/gms/clearcut/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/internal/lu$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu$d;->j:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/internal/lu$d;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->f:Lcom/google/android/gms/clearcut/b$b;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/b$b;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/lu$d;->j:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->g:Lcom/google/android/gms/clearcut/b$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/internal/lu$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/lu$d;->r:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/internal/lu$d;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->g:Lcom/google/android/gms/clearcut/b$b;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/b$b;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/lu$d;->r:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/internal/lu$d;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->a(Lcom/google/android/gms/internal/lq;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ix;)Lcom/google/android/gms/internal/jt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->d:Lcom/google/android/gms/internal/jt;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ix;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/ix;->b(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ix;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/ix$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ix;->b:Lcom/google/android/gms/internal/ix$e;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/ix$e;->a(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ClearcutLoggerApiImpl"

    const-string/jumbo v1, "flush interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_0
.end method
