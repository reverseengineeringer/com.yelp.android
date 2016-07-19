.class public Lcom/comscore/analytics/a;
.super Ljava/lang/Object;


# instance fields
.field protected A:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected B:J

.field protected C:J

.field protected D:J

.field protected E:J

.field protected F:J

.field protected G:J

.field protected H:J

.field protected I:J

.field protected J:J

.field protected K:Lcom/comscore/analytics/SessionState;

.field protected L:J

.field protected M:J

.field protected N:J

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:J

.field protected S:J

.field protected T:J

.field protected U:I

.field protected V:J

.field protected W:J

.field protected X:Ljava/lang/Runnable;

.field protected Y:Ljava/lang/String;

.field Z:Ljava/lang/String;

.field a:Lcom/comscore/utils/j;

.field aa:Landroid/content/Context;

.field protected final ab:Ljava/util/HashMap;
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

.field protected final ac:Ljava/util/HashMap;
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

.field ad:Z

.field protected ae:J

.field protected af:Z

.field protected ag:Ljava/lang/Thread$UncaughtExceptionHandler;

.field ah:Z

.field ai:Lcom/comscore/utils/TransmissionMode;

.field aj:Lcom/comscore/utils/TransmissionMode;

.field ak:[Ljava/lang/String;

.field private al:Lcom/yelp/android/as/b;

.field private am:Z

.field private an:Z

.field b:Lcom/comscore/utils/m;

.field c:Lcom/comscore/applications/d;

.field d:Lcom/comscore/utils/d;

.field e:Lcom/comscore/utils/DispatchQueue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field f:Lcom/yelp/android/at/a;

.field g:Lcom/yelp/android/ar/c;

.field h:Lcom/comscore/utils/ConnectivityChangeReceiver;

.field protected i:Ljava/lang/Runnable;

.field protected j:Ljava/lang/Runnable;

.field protected k:J

.field protected l:Z

.field protected m:Z

.field n:Z

.field o:Ljava/util/concurrent/atomic/AtomicInteger;

.field p:J

.field q:Ljava/util/concurrent/atomic/AtomicInteger;

.field r:J

.field s:J

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field protected x:Lcom/comscore/analytics/ApplicationState;

.field protected y:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected z:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/comscore/analytics/a;->l:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/a;->m:Z

    iput-boolean v2, p0, Lcom/comscore/analytics/a;->n:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/a;->v:Z

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    iput-object v0, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    sget-object v0, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    iput-object v0, p0, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->ae:J

    iput-boolean v2, p0, Lcom/comscore/analytics/a;->af:Z

    iput-boolean v3, p0, Lcom/comscore/analytics/a;->am:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean v3, p0, Lcom/comscore/analytics/a;->ad:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/a;->ab:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/analytics/a;->ac:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v1, p1, v0}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/comscore/analytics/a;Lcom/comscore/utils/TransmissionMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->a(Lcom/comscore/utils/TransmissionMode;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/analytics/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/comscore/analytics/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/comscore/utils/TransmissionMode;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/comscore/analytics/a;->ai:Lcom/comscore/utils/TransmissionMode;

    goto :goto_0
.end method

.method static synthetic a(Lcom/comscore/analytics/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    return v0
.end method

.method static synthetic a(Lcom/comscore/analytics/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/analytics/a;->am:Z

    return p1
.end method

.method private ap()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "lastActivityTime"

    invoke-virtual {p0, v1, v0}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "ns_ap_fg"

    const-string/jumbo v1, "foregroundTransitionsCount"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "installTime"

    const-string/jumbo v1, "installId"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ns_ap_ver"

    const-string/jumbo v1, "previousVersion"

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/comscore/analytics/a;Lcom/comscore/utils/TransmissionMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->b(Lcom/comscore/utils/TransmissionMode;)V

    return-void
.end method

.method static synthetic b(Lcom/comscore/analytics/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/comscore/utils/TransmissionMode;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/comscore/analytics/a;->aj:Lcom/comscore/utils/TransmissionMode;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->ab:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/comscore/analytics/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->an:Z

    return v0
.end method

.method static synthetic b(Lcom/comscore/analytics/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/analytics/a;->an:Z

    return p1
.end method

.method static synthetic c(Lcom/comscore/analytics/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/as/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0}, Lcom/yelp/android/as/b;->f()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://sb.scorecardresearch.com/p2?"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "c2"

    invoke-direct {p0, v0, p1}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://b.scorecardresearch.com/p2?"

    goto :goto_1
.end method


# virtual methods
.method protected A()V
    .locals 6

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->T:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/comscore/analytics/a;->Q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/analytics/a;->Q:I

    :cond_1
    iput-wide v0, p0, Lcom/comscore/analytics/a;->T:J

    goto :goto_0
.end method

.method protected B()V
    .locals 6

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->S:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/comscore/analytics/a;->P:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/comscore/analytics/a;->P:I

    :cond_1
    iput-wide v0, p0, Lcom/comscore/analytics/a;->S:J

    goto :goto_0
.end method

.method protected C()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->a(Z)V

    return-void
.end method

.method protected D()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->b(Z)V

    return-void
.end method

.method public E()Lcom/comscore/analytics/ApplicationState;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public G()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->r:J

    return-wide v0
.end method

.method public H()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->s:J

    return-wide v0
.end method

.method public I()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->p:J

    return-wide v0
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "previousVersion"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public M()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->k:J

    return-wide v0
.end method

.method public N()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->ad:Z

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0}, Lcom/yelp/android/as/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0}, Lcom/yelp/android/as/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public T()Lcom/yelp/android/as/b;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0}, Lcom/yelp/android/as/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public V()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/a;->c(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "appName"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->Z:Ljava/lang/String;

    goto :goto_0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3.1508.28"

    return-object v0
.end method

.method public X()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    return-wide v0
.end method

.method public Y()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->I:J

    return-wide v0
.end method

.method public Z()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/analytics/a;->ab:Ljava/util/HashMap;

    return-object v0
.end method

.method protected a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/yelp/android/ar/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ar/b;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/comscore/applications/c;->a(Lcom/comscore/analytics/a;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/comscore/utils/m;)Lcom/yelp/android/as/b;
    .locals 1

    new-instance v0, Lcom/yelp/android/as/b;

    invoke-direct {v0, p1, p2, p0}, Lcom/yelp/android/as/b;-><init>(Landroid/content/Context;Lcom/comscore/utils/m;Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public a()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/a;->ai:Lcom/comscore/utils/TransmissionMode;

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/a;->aj:Lcom/comscore/utils/TransmissionMode;

    iput-boolean v1, p0, Lcom/comscore/analytics/a;->ah:Z

    sget-object v0, Lcom/comscore/utils/f;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/analytics/a;->ak:[Ljava/lang/String;

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    iput-object v0, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    sget-object v0, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    iput-object v0, p0, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    iput-boolean v1, p0, Lcom/comscore/analytics/a;->n:Z

    iget-object v0, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/analytics/a;->p:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v2, p0, Lcom/comscore/analytics/a;->s:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->r:J

    iput-object v6, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    iput-object v6, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-wide v4, p0, Lcom/comscore/analytics/a;->B:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->C:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->D:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->E:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->F:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->L:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->N:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->M:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v4, p0, Lcom/comscore/analytics/a;->I:J

    iput v7, p0, Lcom/comscore/analytics/a;->Q:I

    iput v7, p0, Lcom/comscore/analytics/a;->P:I

    iput v1, p0, Lcom/comscore/analytics/a;->U:I

    iput-wide v2, p0, Lcom/comscore/analytics/a;->V:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->W:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->R:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->S:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->T:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->r:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->s:J

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ai()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    invoke-virtual {v0}, Lcom/comscore/applications/d;->e()V

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    invoke-virtual {v0}, Lcom/comscore/utils/d;->h()V

    :cond_3
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    invoke-virtual {v0}, Lcom/yelp/android/at/a;->c()V

    :cond_4
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v0}, Lcom/comscore/utils/m;->d()V

    :cond_5
    return-void
.end method

.method a(IZ)V
    .locals 2

    const/16 v0, 0x3c

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    if-ge p1, v0, :cond_2

    move p1, v0

    :cond_2
    iput-boolean p2, p0, Lcom/comscore/analytics/a;->l:Z

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->k:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    sget-object v1, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->aj()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    sget-object v1, Lcom/comscore/analytics/ApplicationState;->BACKGROUND_UX_ACTIVE:Lcom/comscore/analytics/ApplicationState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->aj()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->e()Lcom/yelp/android/at/a;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/h;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/h;-><init>(Lcom/comscore/analytics/a;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected a(Lcom/comscore/analytics/ApplicationState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Leaving application state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/d;->a:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/applications/d;->a(I)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    invoke-virtual {v0}, Lcom/comscore/utils/d;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->n:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    iget-object v1, p0, Lcom/comscore/analytics/a;->ac:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    goto :goto_0
.end method

.method protected a(Lcom/comscore/analytics/SessionState;)V
    .locals 6

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Leaving session state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    sget-object v2, Lcom/comscore/analytics/d;->b:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v3, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    :cond_2
    iput-wide v0, p0, Lcom/comscore/analytics/a;->T:J

    :pswitch_1
    iput-wide v0, p0, Lcom/comscore/analytics/a;->S:J

    :pswitch_2
    iput-wide v0, p0, Lcom/comscore/analytics/a;->R:J

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->z()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->L:J

    iget-wide v4, p0, Lcom/comscore/analytics/a;->W:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/analytics/a;->L:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V
    .locals 0

    return-void
.end method

.method a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->an()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->al()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->am()V

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->n:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/comscore/analytics/a;->g:Lcom/yelp/android/ar/c;

    sget-object v1, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/yelp/android/ar/b;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ar/c;->a(Lcom/yelp/android/ar/b;Z)Z

    :cond_3
    sget-object v0, Lcom/comscore/applications/EventType;->CLOSE:Lcom/comscore/applications/EventType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->g:Lcom/yelp/android/ar/c;

    invoke-static {p2}, Lcom/comscore/utils/n;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/yelp/android/ar/b;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ar/c;->a(Lcom/yelp/android/ar/b;Z)Z

    goto :goto_0
.end method

.method public a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/applications/EventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/v;-><init>(Lcom/comscore/analytics/a;Lcom/comscore/applications/EventType;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1, p3}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public a(Lcom/comscore/utils/TransmissionMode;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->a(Lcom/comscore/utils/TransmissionMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ab()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/p;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/p;-><init>(Lcom/comscore/analytics/a;Lcom/comscore/utils/TransmissionMode;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected a(Lcom/comscore/utils/m;)V
    .locals 1

    invoke-direct {p0}, Lcom/comscore/analytics/a;->ap()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->g:Lcom/yelp/android/ar/c;

    invoke-virtual {v0}, Lcom/yelp/android/ar/c;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/a;->w:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/comscore/analytics/n;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v2, p1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v3, v0}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/comscore/utils/n;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v3, v0, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {v0, p1}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/i;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/i;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/analytics/d;->a:[I

    iget-object v5, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v5}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    iput-wide v0, p0, Lcom/comscore/analytics/a;->J:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "foregroundTransitionsCount"

    iget-object v2, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedForegroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedInactiveTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalForegroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalBackgroundTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalInactiveTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-wide v4, p0, Lcom/comscore/analytics/a;->F:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->F:J

    iget-wide v4, p0, Lcom/comscore/analytics/a;->B:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/a;->B:J

    goto/16 :goto_1

    :pswitch_1
    iget-wide v4, p0, Lcom/comscore/analytics/a;->E:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->E:J

    iget-wide v4, p0, Lcom/comscore/analytics/a;->C:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/a;->C:J

    goto/16 :goto_1

    :pswitch_2
    iget-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    iget-wide v4, p0, Lcom/comscore/analytics/a;->D:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/a;->D:J

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/a;->r(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/j;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/j;-><init>(Lcom/comscore/analytics/a;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->ak:[Ljava/lang/String;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/s;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/s;-><init>(Lcom/comscore/analytics/a;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->Z()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "c2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ab()Lcom/comscore/utils/TransmissionMode;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->ai:Lcom/comscore/utils/TransmissionMode;

    return-object v0
.end method

.method public ac()Lcom/comscore/utils/TransmissionMode;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->aj:Lcom/comscore/utils/TransmissionMode;

    return-object v0
.end method

.method public ad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->v:Z

    return v0
.end method

.method public ae()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->ah:Z

    return v0
.end method

.method public af()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/analytics/a;->ae:J

    return-wide v0
.end method

.method public ag()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->ak:[Ljava/lang/String;

    return-object v0
.end method

.method public ah()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->t(Z)V

    return-void
.end method

.method public ai()V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/analytics/a;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/analytics/a;->k:J

    goto :goto_0
.end method

.method protected aj()V
    .locals 7

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    iget-wide v0, p0, Lcom/comscore/analytics/a;->k:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Lcom/comscore/analytics/u;

    invoke-direct {v0, p0}, Lcom/comscore/analytics/u;-><init>(Lcom/comscore/analytics/a;)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/comscore/analytics/a;->k:J

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/comscore/analytics/a;->k:J

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0
.end method

.method protected ak()V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/a;->i:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method protected al()V
    .locals 0

    return-void
.end method

.method protected am()V
    .locals 0

    return-void
.end method

.method an()Z
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    invoke-virtual {v0}, Lcom/yelp/android/as/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    return v0
.end method

.method protected b()V
    .locals 2

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->c()Lcom/comscore/utils/m;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->f()Lcom/yelp/android/ar/c;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->g:Lcom/yelp/android/ar/c;

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->a(Lcom/comscore/utils/m;)V

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->d()Lcom/comscore/utils/DispatchQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->e:Lcom/comscore/utils/DispatchQueue;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->g()Lcom/comscore/applications/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->h()Lcom/comscore/utils/j;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->i()Lcom/comscore/utils/d;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->j()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->k()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    invoke-virtual {p0, v0, v1}, Lcom/comscore/analytics/a;->a(Landroid/content/Context;Lcom/comscore/utils/m;)Lcom/yelp/android/as/b;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->al:Lcom/yelp/android/as/b;

    return-void
.end method

.method protected b(Lcom/comscore/analytics/ApplicationState;)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entering application state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/d;->a:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/ApplicationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    invoke-virtual {v0}, Lcom/comscore/applications/d;->d()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    invoke-virtual {v0}, Lcom/comscore/utils/d;->h()V

    :try_start_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    iget-object v1, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ak()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/comscore/analytics/a;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->aj()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->aj()V

    iget-object v0, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Lcom/comscore/analytics/SessionState;)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entering session state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/comscore/analytics/d;->b:[I

    invoke-virtual {p1}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->A()V

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->y()V

    :pswitch_1
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->B()V

    :pswitch_2
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->z()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Lcom/comscore/utils/TransmissionMode;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->b(Lcom/comscore/utils/TransmissionMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/q;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/q;-><init>(Lcom/comscore/analytics/a;Lcom/comscore/utils/TransmissionMode;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 9

    const/16 v3, 0x3f

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {p0, v6, v5, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_1

    const-string/jumbo v6, "name"

    aget-object v5, v5, v1

    invoke-virtual {p0, v6, v5, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/comscore/analytics/a;->Y:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/l;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/l;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->W:J

    sub-long v2, v0, v2

    sget-object v4, Lcom/comscore/analytics/d;->b:[I

    iget-object v5, p0, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v5}, Lcom/comscore/analytics/SessionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    iput-wide v0, p0, Lcom/comscore/analytics/a;->W:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->W:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->R:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->S:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastActiveUserSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->L:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedActiveUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedUserSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->M:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "activeUserSessionCount"

    iget v2, p0, Lcom/comscore/analytics/a;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "userSessionCount"

    iget v2, p0, Lcom/comscore/analytics/a;->P:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastUserInteractionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->V:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "userInteractionCount"

    iget v2, p0, Lcom/comscore/analytics/a;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "applicationSessionCountKey"

    iget v2, p0, Lcom/comscore/analytics/a;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-wide v4, p0, Lcom/comscore/analytics/a;->N:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->N:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->T:J

    :pswitch_1
    iget-wide v4, p0, Lcom/comscore/analytics/a;->M:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->M:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->S:J

    :pswitch_2
    iget-wide v4, p0, Lcom/comscore/analytics/a;->L:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/a;->L:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->R:J

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iput-boolean p1, p0, Lcom/comscore/analytics/a;->ah:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/r;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/r;-><init>(Lcom/comscore/analytics/a;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public c(Z)I
    .locals 6

    iget-object v0, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "foregroundTransitionsCount"

    iget-object v3, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected c()Lcom/comscore/utils/m;
    .locals 2

    new-instance v0, Lcom/comscore/utils/m;

    iget-object v1, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/comscore/utils/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/m;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/m;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public d(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->B:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->B:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "totalForegroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected d()Lcom/comscore/utils/DispatchQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/comscore/utils/DispatchQueue;

    invoke-direct {v0, p0}, Lcom/comscore/utils/DispatchQueue;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/comscore/analytics/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/o;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/o;-><init>(Lcom/comscore/analytics/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public e(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->F:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->F:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedForegroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected e()Lcom/yelp/android/at/a;
    .locals 1

    new-instance v0, Lcom/yelp/android/at/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/at/a;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public f(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->C:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->C:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "totalBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected f()Lcom/yelp/android/ar/c;
    .locals 1

    new-instance v0, Lcom/yelp/android/ar/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ar/c;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public g(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->E:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->E:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedBackgroundTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected g()Lcom/comscore/applications/d;
    .locals 4

    new-instance v0, Lcom/comscore/applications/d;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, p0, v2, v3}, Lcom/comscore/applications/d;-><init>(Lcom/comscore/analytics/a;J)V

    return-object v0
.end method

.method public h(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->D:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->D:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected h()Lcom/comscore/utils/j;
    .locals 1

    new-instance v0, Lcom/comscore/utils/j;

    invoke-direct {v0, p0}, Lcom/comscore/utils/j;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public i(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->G:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->G:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected i()Lcom/comscore/utils/d;
    .locals 1

    new-instance v0, Lcom/comscore/utils/d;

    invoke-direct {v0, p0}, Lcom/comscore/utils/d;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public j(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->L:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->L:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedApplicationSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->L:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected j()Lcom/comscore/utils/ConnectivityChangeReceiver;
    .locals 1

    new-instance v0, Lcom/comscore/utils/ConnectivityChangeReceiver;

    invoke-direct {v0, p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;-><init>(Lcom/comscore/analytics/a;)V

    return-object v0
.end method

.method public k(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->N:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->N:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedActiveUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->N:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method protected k()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->J:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastSessionAccumulationTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->W:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->R:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->S:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastActiveUserSessionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->T:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "foregroundTransitionsCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->F:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->E:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->G:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalForegroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->B:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalBackgroundTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->C:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "totalInactiveTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->D:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedApplicationSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->L:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedActiveUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->N:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedUserSessionTime"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->M:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "activeUserSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/a;->Q:I

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "userSessionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/a;->P:I

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastUserInteractionTimestamp"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->V:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "userInteractionCount"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/a;->U:I

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "applicationSessionCountKey"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comscore/analytics/a;->O:I

    invoke-virtual {p0}, Lcom/comscore/analytics/a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousGenesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->I:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "genesis"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_2

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v8, p0, Lcom/comscore/analytics/a;->I:J

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->R:J

    iget v0, p0, Lcom/comscore/analytics/a;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/analytics/a;->O:I

    :goto_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "firstInstallId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->s:J

    iget-wide v0, p0, Lcom/comscore/analytics/a;->s:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->s:J

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->r:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "firstInstallId"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->s:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "installId"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "genesis"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousGenesis"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->I:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/comscore/analytics/a;->G:J

    iget-object v4, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v5, "accumulatedInactiveTime"

    iget-wide v6, p0, Lcom/comscore/analytics/a;->G:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/comscore/analytics/a;->D:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/comscore/analytics/a;->D:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "totalInactiveTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-wide v0, p0, Lcom/comscore/analytics/a;->J:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->W:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->J:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastSessionAccumulationTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->W:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "lastApplicationSessionTimestamp"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->R:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "runs"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "runs"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "runs"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "coldStartCount"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/n;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/comscore/analytics/a;->z()Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/comscore/analytics/a;->L:J

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/analytics/a;->W:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/analytics/a;->L:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "accumulatedApplicationSessionTime"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->L:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->R:J

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "currentVersion"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "previousVersion"

    iget-object v2, p0, Lcom/comscore/analytics/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->r:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "installId"

    iget-wide v2, p0, Lcom/comscore/analytics/a;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "currentVersion"

    iget-object v2, p0, Lcom/comscore/analytics/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "installId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/analytics/a;->r:J

    goto :goto_2
.end method

.method public l(Z)J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/analytics/a;->M:J

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/comscore/analytics/a;->M:J

    iget-object v2, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v3, "accumulatedUserSessionTime"

    iget-wide v4, p0, Lcom/comscore/analytics/a;->M:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public l()V
    .locals 4

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v1, "runs"

    iget-object v2, p0, Lcom/comscore/analytics/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m(Z)I
    .locals 4

    iget v0, p0, Lcom/comscore/analytics/a;->O:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/a;->O:I

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "applicationSessionCountKey"

    iget v3, p0, Lcom/comscore/analytics/a;->O:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "0"

    :try_start_0
    iget-object v2, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public n(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/analytics/a;->Q:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/comscore/analytics/a;->Q:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/a;->Q:I

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "activeUserSessionCount"

    iget v3, p0, Lcom/comscore/analytics/a;->Q:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public n()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/comscore/analytics/a;->n:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/comscore/analytics/a;->n:Z

    iget-object v0, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "coldStartCount"

    iget-object v3, p0, Lcom/comscore/analytics/a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/comscore/analytics/a;->p:J

    move v0, v1

    goto :goto_0
.end method

.method public o(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/comscore/analytics/a;->P:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/comscore/analytics/a;->P:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/a;->P:I

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "userSessionCount"

    iget v3, p0, Lcom/comscore/analytics/a;->P:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected o()V
    .locals 6

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/comscore/analytics/a;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "comScore.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v0, "Debug"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/comscore/utils/f;->a:Z

    const-string/jumbo v0, "Secure"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/a;->ah:Z

    const-string/jumbo v0, "PublisherSecret"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/comscore/analytics/a;->c(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "AppName"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/comscore/analytics/a;->d(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "CustomerC2"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/comscore/analytics/a;->e(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "PixelURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->b(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "OfflineURL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->b(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "LiveTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/TransmissionMode;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->ai:Lcom/comscore/utils/TransmissionMode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_0
    :try_start_2
    const-string/jumbo v0, "OfflineTransmissionMode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/TransmissionMode;->valueOf(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/analytics/a;->aj:Lcom/comscore/utils/TransmissionMode;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_1
    :try_start_4
    const-string/jumbo v0, "KeepAliveEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/a;->ad:Z

    const-string/jumbo v0, "CacheMaxSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->a(I)V

    :cond_7
    const-string/jumbo v0, "CacheMaxBatchSize"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->b(I)V

    :cond_8
    const-string/jumbo v0, "CacheMaxFlushesInARow"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->c(I)V

    :cond_9
    const-string/jumbo v0, "CacheMinutesToRetry"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->d(I)V

    :cond_a
    const-string/jumbo v0, "CacheExpiryInDays"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v2, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    invoke-virtual {v2, v0}, Lcom/comscore/utils/j;->e(I)V

    :cond_b
    const-string/jumbo v0, "CacheFlushingInterval"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/comscore/utils/n;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c

    iput-wide v2, p0, Lcom/comscore/analytics/a;->ae:J

    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/comscore/analytics/a;->d:Lcom/comscore/utils/d;

    invoke-virtual {v0}, Lcom/comscore/utils/d;->d()V

    :cond_c
    const-string/jumbo v0, "ErrorHandlingEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comscore/analytics/a;->q(Z)V

    const-string/jumbo v0, "AutoStartEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/comscore/analytics/a;->v:Z

    const-string/jumbo v0, "AutoUpdateInForegroundOnly"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "AutoUpdateInterval"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_d

    invoke-virtual {p0, v1, v0}, Lcom/comscore/analytics/a;->a(IZ)V

    :cond_d
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/a;->ai:Lcom/comscore/utils/TransmissionMode;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/comscore/utils/f;->a:Z

    if-eqz v1, :cond_d

    invoke-static {v0}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    iput-object v0, p0, Lcom/comscore/analytics/a;->aj:Lcom/comscore/utils/TransmissionMode;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public p(Z)I
    .locals 4

    iget v0, p0, Lcom/comscore/analytics/a;->U:I

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/analytics/a;->U:I

    iget-object v1, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    const-string/jumbo v2, "userInteractionCount"

    iget v3, p0, Lcom/comscore/analytics/a;->U:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public p()Lcom/comscore/utils/j;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->a:Lcom/comscore/utils/j;

    return-object v0
.end method

.method public q()Lcom/comscore/utils/ConnectivityChangeReceiver;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    return-object v0
.end method

.method public q(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/comscore/analytics/a;->af:Z

    if-eqz p1, :cond_2

    new-instance v0, Lcom/comscore/utils/g;

    invoke-direct {v0, p0}, Lcom/comscore/utils/g;-><init>(Lcom/comscore/analytics/a;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/a;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public r()Lcom/comscore/utils/m;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->b:Lcom/comscore/utils/m;

    return-object v0
.end method

.method r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/comscore/analytics/a;->ad:Z

    return-void
.end method

.method public s()Lcom/yelp/android/at/a;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    return-object v0
.end method

.method public s(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/t;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/t;-><init>(Lcom/comscore/analytics/a;)V

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public t()Lcom/yelp/android/ar/c;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->g:Lcom/yelp/android/ar/c;

    return-object v0
.end method

.method public t(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/comscore/analytics/a;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/comscore/analytics/a;->b(Z)V

    goto :goto_0
.end method

.method public u()Lcom/comscore/applications/d;
    .locals 1

    iget-object v0, p0, Lcom/comscore/analytics/a;->c:Lcom/comscore/applications/d;

    return-object v0
.end method

.method public u(Z)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/c;

    invoke-direct {v1, p0, p1}, Lcom/comscore/analytics/c;-><init>(Lcom/comscore/analytics/a;Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    return-void
.end method

.method public v()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/e;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/e;-><init>(Lcom/comscore/analytics/a;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public w()V
    .locals 3

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    new-instance v1, Lcom/comscore/analytics/f;

    invoke-direct {v1, p0}, Lcom/comscore/analytics/f;-><init>(Lcom/comscore/analytics/a;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method protected x()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    :cond_2
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v3, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    :goto_1
    iget-wide v4, p0, Lcom/comscore/analytics/a;->V:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    sget-object v5, Lcom/comscore/analytics/SessionState;->ACTIVE_USER:Lcom/comscore/analytics/SessionState;

    :goto_2
    iget-object v2, p0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    iget-object v4, p0, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    if-ne v3, v2, :cond_3

    if-eq v5, v4, :cond_0

    :cond_3
    new-instance v0, Lcom/comscore/analytics/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/comscore/analytics/g;-><init>(Lcom/comscore/analytics/a;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->m:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/comscore/analytics/ApplicationState;->FOREGROUND:Lcom/comscore/analytics/ApplicationState;

    if-eq v3, v0, :cond_9

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/comscore/analytics/a;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_5

    sget-object v3, Lcom/comscore/analytics/ApplicationState;->BACKGROUND_UX_ACTIVE:Lcom/comscore/analytics/ApplicationState;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/comscore/analytics/ApplicationState;->INACTIVE:Lcom/comscore/analytics/ApplicationState;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/comscore/analytics/a;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v5, Lcom/comscore/analytics/SessionState;->USER:Lcom/comscore/analytics/SessionState;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/comscore/analytics/a;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v5, Lcom/comscore/analytics/SessionState;->APPLICATION:Lcom/comscore/analytics/SessionState;

    goto :goto_2

    :cond_8
    sget-object v5, Lcom/comscore/analytics/SessionState;->INACTIVE:Lcom/comscore/analytics/SessionState;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v6, p0, Lcom/comscore/analytics/a;->j:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method protected y()V
    .locals 4

    iget-boolean v0, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/at/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    :cond_1
    new-instance v0, Lcom/comscore/analytics/b;

    invoke-direct {v0, p0}, Lcom/comscore/analytics/b;-><init>(Lcom/comscore/analytics/a;)V

    iput-object v0, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/at/a;

    iget-object v1, p0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/at/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected z()Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/comscore/analytics/a;->am:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/analytics/a;->R:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-wide v0, p0, Lcom/comscore/analytics/a;->H:J

    iput-wide v0, p0, Lcom/comscore/analytics/a;->I:J

    iput-wide v2, p0, Lcom/comscore/analytics/a;->H:J

    iget v0, p0, Lcom/comscore/analytics/a;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/analytics/a;->O:I

    const/4 v0, 0x1

    :cond_1
    iput-wide v2, p0, Lcom/comscore/analytics/a;->R:J

    goto :goto_0
.end method
