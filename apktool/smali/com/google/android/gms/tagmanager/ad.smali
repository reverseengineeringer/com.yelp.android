.class Lcom/google/android/gms/tagmanager/ad;
.super Lcom/google/android/gms/tagmanager/ac;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static k:Lcom/google/android/gms/tagmanager/ad;


# instance fields
.field private b:Lcom/google/android/gms/tagmanager/j;

.field private volatile c:Lcom/google/android/gms/tagmanager/i;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/google/android/gms/tagmanager/k;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ad;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ac;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/ad;->d:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ad;->e:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/ad;->f:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ad;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ad;->h:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/ad$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/ad$1;-><init>(Lcom/google/android/gms/tagmanager/ad;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ad;->i:Lcom/google/android/gms/tagmanager/k;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/ad;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ad;)Lcom/google/android/gms/tagmanager/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ad;->b:Lcom/google/android/gms/tagmanager/j;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/tagmanager/ad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/ad;->k:Lcom/google/android/gms/tagmanager/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/ad;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ad;->k:Lcom/google/android/gms/tagmanager/ad;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/ad;->k:Lcom/google/android/gms/tagmanager/ad;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ad;->f:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/m;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ad;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ad;->c:Lcom/google/android/gms/tagmanager/i;

    new-instance v1, Lcom/google/android/gms/tagmanager/ad$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/ad$2;-><init>(Lcom/google/android/gms/tagmanager/ad;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/i;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
