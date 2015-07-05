.class public Lcom/kahuna/sdk/h;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"


# static fields
.field private static P:Lcom/kahuna/sdk/z;

.field private static Q:Z

.field private static R:I

.field private static S:Z

.field private static T:Z

.field private static U:Z

.field private static X:Ljava/util/concurrent/ExecutorService;

.field private static Y:Z

.field private static Z:Z

.field protected static a:Z

.field protected static b:I

.field protected static c:Ljava/lang/String;

.field private static e:Z

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/Object;

.field private static h:Lcom/kahuna/sdk/h;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/Object;

.field private D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Object;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/lang/Object;

.field private I:Z

.field private J:Ljava/lang/Object;

.field private K:Lcom/kahuna/sdk/u;

.field private L:[[I

.field private M:I

.field private N:Ljava/util/concurrent/atomic/AtomicInteger;

.field private O:Ljava/util/Timer;

.field private V:Lcom/kahuna/sdk/ah;

.field private W:J

.field private aa:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ab:Ljava/lang/String;

.field private ac:Lorg/json/JSONArray;

.field private d:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Landroid/content/Context;

.field private final o:Lcom/yelp/android/ao/a;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private final s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sput-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    .line 98
    sput-boolean v1, Lcom/kahuna/sdk/h;->e:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/h;->f:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/h;->g:Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/h;->h:Lcom/kahuna/sdk/h;

    .line 120
    const/16 v0, 0x1388

    sput v0, Lcom/kahuna/sdk/h;->b:I

    .line 168
    sput-boolean v1, Lcom/kahuna/sdk/h;->Q:Z

    .line 169
    const/4 v0, -0x1

    sput v0, Lcom/kahuna/sdk/h;->R:I

    .line 170
    sput-boolean v1, Lcom/kahuna/sdk/h;->S:Z

    .line 171
    sput-boolean v1, Lcom/kahuna/sdk/h;->T:Z

    .line 172
    sput-boolean v1, Lcom/kahuna/sdk/h;->U:Z

    .line 178
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    .line 179
    sput-boolean v1, Lcom/kahuna/sdk/h;->Y:Z

    .line 180
    sput-boolean v1, Lcom/kahuna/sdk/h;->Z:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v3, p0, Lcom/kahuna/sdk/h;->d:Z

    .line 105
    const-string/jumbo v0, "556"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->i:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->j:Ljava/lang/String;

    .line 107
    iput-object v4, p0, Lcom/kahuna/sdk/h;->k:Ljava/lang/String;

    .line 108
    iput-object v4, p0, Lcom/kahuna/sdk/h;->l:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "https://tap-nexus.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->m:Ljava/lang/String;

    .line 131
    iput-boolean v3, p0, Lcom/kahuna/sdk/h;->q:Z

    .line 132
    iput-boolean v5, p0, Lcom/kahuna/sdk/h;->r:Z

    .line 134
    const-string/jumbo v0, "https://tap-nexus.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->s:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->x:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "556"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->z:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->C:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->D:Ljava/util/Set;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->H:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kahuna/sdk/h;->L:[[I

    .line 162
    iput v3, p0, Lcom/kahuna/sdk/h;->M:I

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/h;->W:J

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    iput-object v4, p0, Lcom/kahuna/sdk/h;->ab:Ljava/lang/String;

    .line 189
    iput-object v4, p0, Lcom/kahuna/sdk/h;->ac:Lorg/json/JSONArray;

    .line 192
    new-instance v0, Lcom/yelp/android/ao/a;

    invoke-direct {v0}, Lcom/yelp/android/ao/a;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->o:Lcom/yelp/android/ao/a;

    .line 193
    iget-object v0, p0, Lcom/kahuna/sdk/h;->o:Lcom/yelp/android/ao/a;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/yelp/android/ao/a;->a(I)V

    .line 194
    return-void

    .line 161
    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
    .end array-data

    :array_1
    .array-data 4
        0x2710
        0x4e20
    .end array-data

    :array_2
    .array-data 4
        0x4e20
        0x9c40
    .end array-data

    :array_3
    .array-data 4
        0x9c40
        0x13880
    .end array-data
.end method

.method static synthetic A(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method private A()V
    .locals 6

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    invoke-virtual {v0}, Lcom/kahuna/sdk/u;->cancel()V

    .line 1601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1605
    :cond_0
    iget v0, p0, Lcom/kahuna/sdk/h;->M:I

    iget-object v2, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->f()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1606
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->z()V

    .line 1607
    iget-object v0, p0, Lcom/kahuna/sdk/h;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1608
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 1609
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reached our max retry limit. Will not retry until the next request to flush events. Max attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v3}, Lcom/kahuna/sdk/ah;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_1
    monitor-exit v1

    .line 1624
    :goto_0
    return-void

    .line 1615
    :cond_2
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->y()J

    move-result-wide v2

    .line 1616
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_3

    .line 1617
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling next retry in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_3
    new-instance v0, Lcom/kahuna/sdk/u;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1621
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    new-instance v4, Lcom/kahuna/sdk/v;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    invoke-virtual {v0, v4, v2, v3}, Lcom/kahuna/sdk/u;->schedule(Ljava/util/TimerTask;J)V

    .line 1622
    iget v0, p0, Lcom/kahuna/sdk/h;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/h;->M:I

    .line 1623
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1627
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1631
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1634
    :cond_0
    return-object v0
.end method

.method static synthetic B(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/ah;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    return-object v0
.end method

.method static synthetic D(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->aa:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic E(Lcom/kahuna/sdk/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->G:Ljava/util/List;

    return-object v0
.end method

.method static synthetic F(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/kahuna/sdk/h;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->ac:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic H(Lcom/kahuna/sdk/h;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->A()V

    return-void
.end method

.method static synthetic I(Lcom/kahuna/sdk/h;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/kahuna/sdk/h;->W:J

    return-wide v0
.end method

.method static synthetic J(Lcom/kahuna/sdk/h;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->x()Z

    move-result v0

    return v0
.end method

.method static synthetic K(Lcom/kahuna/sdk/h;)Lcom/yelp/android/ao/a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->o:Lcom/yelp/android/ao/a;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/kahuna/sdk/h;->W:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/ah;)Lcom/kahuna/sdk/ah;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    return-object p1
.end method

.method protected static a()Lcom/kahuna/sdk/h;
    .locals 2

    .prologue
    .line 290
    sget-object v1, Lcom/kahuna/sdk/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/h;->h:Lcom/kahuna/sdk/h;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/kahuna/sdk/h;

    invoke-direct {v0}, Lcom/kahuna/sdk/h;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/h;->h:Lcom/kahuna/sdk/h;

    .line 294
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/h;->h:Lcom/kahuna/sdk/h;

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/u;)Lcom/kahuna/sdk/u;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->ab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->O:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->ac:Lorg/json/JSONArray;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have valid Application context to use Kahuna Analytics."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempted to start Kahuna with invalid key! You must use your api Key with Kahuna"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 213
    iput-object p0, v0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    .line 214
    iput-object p1, v0, Lcom/kahuna/sdk/h;->p:Ljava/lang/String;

    .line 215
    sput-object p2, Lcom/kahuna/sdk/h;->c:Ljava/lang/String;

    .line 217
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 218
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called onCreate with Key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/kahuna/sdk/h;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/i;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method private a(Lcom/kahuna/sdk/Event;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 978
    if-nez p1, :cond_0

    .line 979
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 980
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Ignoring request to track (null) Event object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 985
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Cannot track null or empty event name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_1
    :goto_0
    return-void

    .line 990
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 991
    iget-boolean v1, v0, Lcom/kahuna/sdk/h;->q:Z

    if-nez v1, :cond_3

    .line 992
    invoke-direct {v0}, Lcom/kahuna/sdk/h;->u()V

    .line 997
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/ah;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1000
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->j()Ljava/util/Map;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1003
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1005
    new-instance v1, Lcom/kahuna/sdk/Event;

    invoke-direct {v1, p1}, Lcom/kahuna/sdk/Event;-><init>(Lcom/kahuna/sdk/Event;)V

    .line 1006
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/Event;->a(Ljava/lang/String;)V

    .line 1008
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_17

    .line 1009
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Mapped event name from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 1016
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->l()Ljava/util/Set;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v1}, Lcom/kahuna/sdk/ah;->k()Ljava/util/Set;

    move-result-object v1

    .line 1018
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1020
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1021
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1027
    :goto_2
    if-nez v2, :cond_9

    .line 1028
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 1029
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in include list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1033
    :cond_7
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1035
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1036
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 1042
    :goto_3
    if-eqz v0, :cond_9

    .line 1043
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 1044
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in exclude list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1051
    :cond_9
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1054
    iget-object v1, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 1055
    :try_start_0
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/b;->a(Ljava/lang/String;J)Lcom/kahuna/sdk/Event;

    move-result-object v0

    .line 1056
    if-nez v0, :cond_b

    .line 1058
    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_a

    .line 1061
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Queueing event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_a
    invoke-static {p1}, Lcom/kahuna/sdk/b;->a(Lcom/kahuna/sdk/Event;)V

    move-object v0, p1

    .line 1068
    :cond_b
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->g()V

    .line 1069
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_c

    .line 1070
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incrementing bucket count for event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_c
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->d()I

    move-result v2

    if-lez v2, :cond_e

    .line 1076
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->d()I

    move-result v2

    if-gez v2, :cond_d

    .line 1077
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 1079
    :cond_d
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->d()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 1081
    :cond_e
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->e()I

    move-result v2

    if-lez v2, :cond_10

    .line 1082
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->e()I

    move-result v2

    if-gez v2, :cond_f

    .line 1083
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 1085
    :cond_f
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->e()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 1087
    :cond_10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1098
    :cond_11
    :goto_4
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->q:Z

    if-eqz v0, :cond_14

    .line 1099
    iget-object v1, p0, Lcom/kahuna/sdk/h;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_1
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->I:Z

    if-eqz v0, :cond_13

    .line 1101
    monitor-exit v1

    goto/16 :goto_0

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1087
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1090
    :cond_12
    iget-object v1, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 1091
    :try_start_3
    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1094
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_11

    .line 1095
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Queueing event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1092
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1102
    :cond_13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1104
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/h;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    :cond_14
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Please call the method onAppCreate() with your secretKey before trackEvent otherwise events cannot be logged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move v0, v3

    goto/16 :goto_3

    :cond_16
    move v2, v3

    goto/16 :goto_2

    :cond_17
    move-object p1, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V

    return-void
.end method

.method public static a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/location/i;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1169
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1170
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Attempted to call public internal API. Ignoring call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_0
    return-void

    .line 1174
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/m;

    invoke-direct {v2, p1, p2}, Lcom/kahuna/sdk/m;-><init>(Lcom/kahuna/sdk/location/i;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1367
    invoke-static {p0}, Lcom/kahuna/sdk/ak;->a(Ljava/lang/Class;)V

    .line 1368
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 940
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/kahuna/sdk/h;->a(Ljava/lang/String;IIZ)V

    .line 941
    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)V
    .locals 4

    .prologue
    .line 948
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 950
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You cannot track a null or empty String event name. Ignoring event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 956
    sget-object v1, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kahuna/sdk/x;

    new-instance v3, Lcom/kahuna/sdk/k;

    invoke-direct {v3, v0, p3, p1, p2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/String;ZII)V

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 653
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/s;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 661
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/j;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/j;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 800
    return-void
.end method

.method protected static a(Z)V
    .locals 1

    .prologue
    .line 1348
    if-eqz p0, :cond_0

    .line 1350
    sput-boolean p0, Lcom/kahuna/sdk/h;->a:Z

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/h;->e:Z

    sput-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/h;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/kahuna/sdk/h;->r:Z

    return p1
.end method

.method protected static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 300
    iget-object v0, v0, Lcom/kahuna/sdk/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kahuna/sdk/h;->G:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/kahuna/sdk/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1128
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v8

    .line 1129
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_push_clicked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1130
    sget-boolean v1, Lcom/kahuna/sdk/h;->S:Z

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->c()V

    .line 1132
    :cond_0
    invoke-direct {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1136
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.trackPushClicked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1141
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/l;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1161
    return-void
.end method

.method static synthetic b(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/kahuna/sdk/h;->c(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/kahuna/sdk/h;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/h;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/kahuna/sdk/h;->I:Z

    return p1
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 375
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/p;

    invoke-direct {v2}, Lcom/kahuna/sdk/p;-><init>()V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 469
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.start(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/kahuna/sdk/h;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->u()V

    return-void
.end method

.method protected static declared-synchronized c(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1284
    const-class v8, Lcom/kahuna/sdk/h;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v9

    .line 1285
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    const-string/jumbo v0, ""

    iput-object v0, v9, Lcom/kahuna/sdk/h;->A:Ljava/lang/String;

    .line 1289
    iget-object v0, v9, Lcom/kahuna/sdk/h;->A:Ljava/lang/String;

    iget-object v1, v9, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :goto_0
    monitor-exit v8

    return-void

    .line 1293
    :cond_0
    :try_start_1
    iput-object p0, v9, Lcom/kahuna/sdk/h;->A:Ljava/lang/String;

    .line 1296
    iget-object v0, v9, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_push_enabled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1298
    invoke-direct {v9, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V

    .line 1301
    :cond_1
    iget-object v0, v9, Lcom/kahuna/sdk/h;->A:Ljava/lang/String;

    iget-object v1, v9, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/kahuna/sdk/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 804
    if-nez p0, :cond_1

    .line 806
    :try_start_0
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 807
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You must specify a valid Map for user Attributes. Ignoring this call to setUserAttributes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/kahuna/sdk/h;->v()Ljava/util/Map;

    move-result-object v4

    .line 813
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 814
    const/4 v3, 0x0

    .line 816
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 821
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 822
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    :goto_2
    move v3, v0

    .line 840
    goto :goto_1

    .line 826
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 828
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v1, v7, :cond_9

    .line 830
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 832
    goto :goto_2

    .line 835
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 836
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 838
    goto :goto_2

    .line 842
    :cond_6
    if-eqz v3, :cond_8

    .line 843
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    .line 844
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/kahuna/sdk/ag;->b(Ljava/util/Map;Landroid/content/Context;)V

    .line 848
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 849
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 866
    :catch_0
    move-exception v0

    .line 867
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 868
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception attempting to set user attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 852
    :cond_7
    :try_start_1
    iget-object v3, v1, Lcom/kahuna/sdk/h;->C:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    :try_start_2
    iget-object v0, v1, Lcom/kahuna/sdk/h;->D:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 854
    iget-object v0, v1, Lcom/kahuna/sdk/h;->D:Ljava/util/Set;

    iget-object v1, v1, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Set;Landroid/content/Context;)V

    .line 855
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    :try_start_3
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 857
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Detected changes for the following user attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Will flush updated attributes in the next batch."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 855
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 862
    :cond_8
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 863
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Did not detect any change in user attributes, not sending request..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/kahuna/sdk/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public static d()V
    .locals 4

    .prologue
    .line 480
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/q;

    invoke-direct {v2}, Lcom/kahuna/sdk/q;-><init>()V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 551
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.stop(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x1

    .line 1643
    .line 1644
    iget-object v1, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 1645
    :try_start_0
    iget-object v2, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-static {v2}, Lcom/kahuna/sdk/aj;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    monitor-exit v1

    .line 1717
    :goto_0
    return-void

    .line 1650
    :cond_0
    iget-object v2, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1651
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1653
    const/4 v1, 0x0

    .line 1654
    iget-object v3, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v3}, Lcom/kahuna/sdk/ah;->e()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1671
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 1674
    iget-object v1, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 1675
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    if-eqz v0, :cond_2

    .line 1676
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    invoke-virtual {v0}, Lcom/kahuna/sdk/u;->cancel()V

    .line 1677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1680
    :cond_2
    new-instance v0, Lcom/kahuna/sdk/u;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1681
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    new-instance v2, Lcom/kahuna/sdk/v;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/kahuna/sdk/u;->schedule(Ljava/util/TimerTask;J)V

    .line 1682
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1651
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1658
    :cond_3
    int-to-long v2, v2

    iget-object v4, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v4}, Lcom/kahuna/sdk/ah;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    .line 1665
    iget-object v4, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v4}, Lcom/kahuna/sdk/ah;->c()J

    move-result-wide v4

    .line 1666
    iget-wide v6, p0, Lcom/kahuna/sdk/h;->W:J

    add-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 1687
    :cond_4
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1690
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->h()J

    move-result-wide v0

    mul-long/2addr v0, v8

    .line 1691
    iget-object v2, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    monitor-enter v2

    .line 1692
    :try_start_3
    iget-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    if-eqz v3, :cond_5

    .line 1693
    iget-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    invoke-virtual {v3}, Lcom/kahuna/sdk/u;->a()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-lez v3, :cond_5

    .line 1694
    iget-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    invoke-virtual {v3}, Lcom/kahuna/sdk/u;->cancel()V

    .line 1695
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1700
    :cond_5
    iget-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    if-nez v3, :cond_6

    .line 1701
    new-instance v3, Lcom/kahuna/sdk/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    iput-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1702
    iget-object v3, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    new-instance v4, Lcom/kahuna/sdk/v;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    invoke-virtual {v3, v4, v0, v1}, Lcom/kahuna/sdk/u;->schedule(Ljava/util/TimerTask;J)V

    .line 1704
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 1708
    :cond_7
    iget-object v1, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 1709
    :try_start_4
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    if-nez v0, :cond_8

    .line 1710
    new-instance v0, Lcom/kahuna/sdk/u;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    .line 1711
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    new-instance v2, Lcom/kahuna/sdk/v;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kahuna/sdk/v;-><init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V

    iget-object v3, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v3}, Lcom/kahuna/sdk/ah;->c()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-virtual {v0, v2, v4, v5}, Lcom/kahuna/sdk/u;->schedule(Ljava/util/TimerTask;J)V

    .line 1713
    :cond_8
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 666
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 668
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Cannot update a user credential with empty string or null key value."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/kahuna/sdk/h;->w()Ljava/util/Map;

    move-result-object v1

    .line 675
    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 676
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 677
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Did not detect any change in user credentials."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 701
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.updateUserCredentials(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    :cond_2
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 684
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Did not detect any change in user credentials."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v8

    .line 691
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, v8, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/ag;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 693
    iput-object v1, v8, Lcom/kahuna/sdk/h;->B:Ljava/util/Map;

    .line 696
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_user_credentials"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, v8, Lcom/kahuna/sdk/h;->B:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 697
    invoke-direct {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/kahuna/sdk/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    return-object v0
.end method

.method public static e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/t;

    invoke-direct {v1}, Lcom/kahuna/sdk/t;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 721
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-object v0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 724
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception attempting to retrieve stored credentials:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/kahuna/sdk/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->C:Ljava/lang/Object;

    return-object v0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 1211
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/n;

    invoke-direct {v2}, Lcom/kahuna/sdk/n;-><init>()V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1233
    return-void
.end method

.method static synthetic g(Lcom/kahuna/sdk/h;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->D:Ljava/util/Set;

    return-object v0
.end method

.method public static g()V
    .locals 3

    .prologue
    .line 1241
    sget-object v0, Lcom/kahuna/sdk/h;->X:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/x;

    new-instance v2, Lcom/kahuna/sdk/o;

    invoke-direct {v2}, Lcom/kahuna/sdk/o;-><init>()V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/x;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1262
    return-void
.end method

.method static synthetic h(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 1274
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 1276
    iget-object v1, v0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1277
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Error, push state unknown. You must call onAppCreate() before getting the current status of push."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    iget-boolean v0, v0, Lcom/kahuna/sdk/h;->r:Z

    return v0
.end method

.method protected static i()Lcom/kahuna/sdk/z;
    .locals 1

    .prologue
    .line 1397
    sget-object v0, Lcom/kahuna/sdk/h;->P:Lcom/kahuna/sdk/z;

    return-object v0
.end method

.method static synthetic i(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected static j()I
    .locals 1

    .prologue
    .line 1405
    sget v0, Lcom/kahuna/sdk/h;->R:I

    return v0
.end method

.method static synthetic j(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected static k()Z
    .locals 1

    .prologue
    .line 1429
    sget-boolean v0, Lcom/kahuna/sdk/h;->S:Z

    return v0
.end method

.method static synthetic k(Lcom/kahuna/sdk/h;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->d:Z

    return v0
.end method

.method static synthetic l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->O:Ljava/util/Timer;

    return-object v0
.end method

.method protected static l()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1490
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    .line 1491
    iget-boolean v2, v1, Lcom/kahuna/sdk/h;->q:Z

    if-nez v2, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return v0

    .line 1496
    :cond_1
    sget-boolean v2, Lcom/kahuna/sdk/h;->T:Z

    if-eqz v2, :cond_0

    .line 1497
    iget-object v1, v1, Lcom/kahuna/sdk/h;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    .line 1498
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()V
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/h;->U:Z

    .line 1516
    return-void
.end method

.method static synthetic m(Lcom/kahuna/sdk/h;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->r:Z

    return v0
.end method

.method static synthetic n(Lcom/kahuna/sdk/h;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->B:Ljava/util/Map;

    return-object v0
.end method

.method protected static n()Z
    .locals 1

    .prologue
    .line 1571
    sget-boolean v0, Lcom/kahuna/sdk/h;->U:Z

    return v0
.end method

.method protected static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "556"

    return-object v0
.end method

.method static synthetic o(Lcom/kahuna/sdk/h;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->z()V

    return-void
.end method

.method static synthetic p(Lcom/kahuna/sdk/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->J:Ljava/lang/Object;

    return-object v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 1638
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    return v0
.end method

.method static synthetic q(Lcom/kahuna/sdk/h;)Lcom/kahuna/sdk/u;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->K:Lcom/kahuna/sdk/u;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kahuna/sdk/h;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic r(Lcom/kahuna/sdk/h;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->w()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/kahuna/sdk/h;->Q:Z

    return v0
.end method

.method static synthetic s(Lcom/kahuna/sdk/h;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kahuna/sdk/h;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/kahuna/sdk/h;->Y:Z

    return v0
.end method

.method static synthetic t(Lcom/kahuna/sdk/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->H:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/kahuna/sdk/h;->Z:Z

    return v0
.end method

.method static synthetic u(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized u()V
    .locals 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You did not call onAppCreate() in your MainApplication\'s onCreate() method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/kahuna/sdk/h;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 366
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_3

    .line 311
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Initializing SDK version: 556"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->t:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 319
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/h;->u:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/kahuna/sdk/h;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->v:Ljava/lang/String;

    .line 332
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/h;->w:Ljava/lang/String;

    .line 335
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/h;->y:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 339
    :try_start_5
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->B:Ljava/util/Map;

    .line 341
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kahuna/sdk/h;->r:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    :cond_4
    :goto_2
    :try_start_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 349
    iget-object v1, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 350
    :try_start_7
    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    if-nez v0, :cond_5

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    .line 352
    :cond_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 353
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/kahuna/sdk/h;->I:Z

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kahuna/sdk/h;->q:Z

    .line 357
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kahuna/sdk/h;->d:Z

    .line 358
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ah;->a(Landroid/content/Context;)Lcom/kahuna/sdk/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    .line 359
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/b;->a(Lorg/json/JSONObject;)V

    .line 360
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->h(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kahuna/sdk/h;->W:J

    .line 362
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 363
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading SDK Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushEventCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " events:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v2}, Lcom/kahuna/sdk/ah;->e()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 322
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured trying to set appName and/or appVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kahuna/sdk/h;->u:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/kahuna/sdk/h;->t:Ljava/lang/String;

    goto/16 :goto_1

    .line 343
    :catch_1
    move-exception v0

    .line 344
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_4

    .line 345
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured trying to retrieve previous push enabled setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 352
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method static synthetic v(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized v()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->f(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 907
    :goto_0
    if-nez v0, :cond_0

    .line 908
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    :cond_0
    monitor-exit p0

    return-object v0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 903
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception attempting to retrieve stored attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic w(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->w:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized w()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    monitor-enter p0

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/h;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->e(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 924
    :goto_0
    if-nez v0, :cond_0

    .line 925
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :cond_0
    monitor-exit p0

    return-object v0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 920
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception attempting to retrieve stored credentials:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 921
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic x(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->x:Ljava/lang/String;

    return-object v0
.end method

.method private x()Z
    .locals 4

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/kahuna/sdk/h;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/h;->V:Lcom/kahuna/sdk/ah;

    invoke-virtual {v0}, Lcom/kahuna/sdk/ah;->e()Ljava/util/Set;

    move-result-object v2

    .line 1114
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/kahuna/sdk/h;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 1116
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x1

    monitor-exit v1

    .line 1123
    :goto_0
    return v0

    .line 1122
    :cond_1
    monitor-exit v1

    .line 1123
    const/4 v0, 0x0

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized y()J
    .locals 6

    .prologue
    .line 1581
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kahuna/sdk/h;->M:I

    .line 1582
    iget-object v1, p0, Lcom/kahuna/sdk/h;->L:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/kahuna/sdk/h;->L:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1587
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/h;->L:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1588
    iget-object v2, p0, Lcom/kahuna/sdk/h;->L:[[I

    aget-object v0, v2, v0

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 1589
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-int/2addr v1, v0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 1581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic y(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/kahuna/sdk/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kahuna/sdk/h;->A:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized z()V
    .locals 1

    .prologue
    .line 1593
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/kahuna/sdk/h;->M:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    monitor-exit p0

    return-void

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
