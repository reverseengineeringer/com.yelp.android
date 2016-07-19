.class public abstract Lcom/kahuna/sdk/l;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Lcom/kahuna/sdk/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/l$b;,
        Lcom/kahuna/sdk/l$a;
    }
.end annotation


# static fields
.field private static L:Lcom/kahuna/sdk/p;

.field private static M:Z

.field private static N:Z

.field private static O:I

.field private static P:I

.field private static Q:Z

.field private static R:Z

.field private static S:Z

.field private static V:Ljava/util/concurrent/ExecutorService;

.field private static W:Z

.field private static X:Z

.field protected static a:Z

.field protected static b:I

.field protected static c:Ljava/lang/String;

.field private static e:Z

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/kahuna/sdk/l;


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/Object;

.field private E:Z

.field private F:Ljava/lang/Object;

.field private G:Lcom/kahuna/sdk/l$a;

.field private H:[[I

.field private I:I

.field private J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private K:Ljava/util/Timer;

.field private T:Lcom/kahuna/sdk/t;

.field private U:J

.field private Y:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Z:Ljava/util/concurrent/atomic/AtomicLong;

.field private aa:Ljava/lang/String;

.field private ab:Lorg/json/JSONArray;

.field private ac:Z

.field private d:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;

.field private final m:Lcom/kahuna/sdk/m;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 71
    sput-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    .line 72
    sput-boolean v1, Lcom/kahuna/sdk/l;->e:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/l;->f:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/l;->g:Lcom/kahuna/sdk/l;

    .line 95
    const/16 v0, 0x1388

    sput v0, Lcom/kahuna/sdk/l;->b:I

    .line 139
    sput-boolean v1, Lcom/kahuna/sdk/l;->M:Z

    .line 140
    sput-boolean v1, Lcom/kahuna/sdk/l;->N:Z

    .line 141
    sput v2, Lcom/kahuna/sdk/l;->O:I

    .line 142
    sput v2, Lcom/kahuna/sdk/l;->P:I

    .line 143
    sput-boolean v1, Lcom/kahuna/sdk/l;->Q:Z

    .line 144
    sput-boolean v1, Lcom/kahuna/sdk/l;->R:Z

    .line 145
    sput-boolean v1, Lcom/kahuna/sdk/l;->S:Z

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    .line 152
    sput-boolean v1, Lcom/kahuna/sdk/l;->W:Z

    .line 153
    sput-boolean v1, Lcom/kahuna/sdk/l;->X:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v4, p0, Lcom/kahuna/sdk/l;->d:Z

    .line 78
    const-string/jumbo v0, "2.4.1"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->h:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->i:Ljava/lang/String;

    .line 80
    iput-object v5, p0, Lcom/kahuna/sdk/l;->j:Ljava/lang/String;

    .line 81
    iput-object v5, p0, Lcom/kahuna/sdk/l;->k:Ljava/lang/String;

    .line 108
    iput-boolean v4, p0, Lcom/kahuna/sdk/l;->o:Z

    .line 109
    iput-boolean v3, p0, Lcom/kahuna/sdk/l;->p:Z

    .line 111
    const-string/jumbo v0, "https://tap-nexus.appspot.com"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->q:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kahuna/sdk/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->r:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->w:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "2.4.1"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->y:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->D:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->F:Ljava/lang/Object;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kahuna/sdk/l;->H:[[I

    .line 133
    iput v4, p0, Lcom/kahuna/sdk/l;->I:I

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/l;->U:J

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->Y:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    .line 162
    iput-object v5, p0, Lcom/kahuna/sdk/l;->aa:Ljava/lang/String;

    .line 163
    iput-object v5, p0, Lcom/kahuna/sdk/l;->ab:Lorg/json/JSONArray;

    .line 167
    iput-boolean v4, p0, Lcom/kahuna/sdk/l;->ac:Z

    .line 170
    new-instance v0, Lcom/kahuna/sdk/m;

    invoke-direct {v0}, Lcom/kahuna/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->m:Lcom/kahuna/sdk/m;

    .line 171
    iget-object v0, p0, Lcom/kahuna/sdk/l;->m:Lcom/kahuna/sdk/m;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/m;->a(I)V

    .line 172
    sput-object p0, Lcom/kahuna/sdk/l;->g:Lcom/kahuna/sdk/l;

    .line 173
    return-void

    .line 132
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

.method static synthetic A(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->Y:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/s;->b(Ljava/util/Map;Landroid/content/Context;)V

    .line 690
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/s;->c(Ljava/util/Map;Landroid/content/Context;)V

    .line 691
    return-void
.end method

.method static synthetic B(Lcom/kahuna/sdk/l;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->C:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized B()Ljava/util/Map;
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
    .line 786
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/s;->g(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 796
    :goto_0
    if-nez v0, :cond_0

    .line 797
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    :cond_0
    monitor-exit p0

    return-object v0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    :try_start_2
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_1

    .line 792
    const-string/jumbo v1, "Kahuna"

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

    .line 793
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic C(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->F:Ljava/lang/Object;

    return-object v0
.end method

.method private C()Z
    .locals 4

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->e()Ljava/util/Set;

    move-result-object v2

    .line 1101
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 1103
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    monitor-exit v1

    .line 1110
    :goto_0
    return v0

    .line 1109
    :cond_1
    monitor-exit v1

    .line 1110
    const/4 v0, 0x0

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized D()J
    .locals 6

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kahuna/sdk/l;->I:I

    .line 1470
    iget-object v1, p0, Lcom/kahuna/sdk/l;->H:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/kahuna/sdk/l;->H:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/l;->H:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1476
    iget-object v2, p0, Lcom/kahuna/sdk/l;->H:[[I

    aget-object v0, v2, v0

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 1477
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

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic D(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    return-object v0
.end method

.method static synthetic E(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized E()V
    .locals 1

    .prologue
    .line 1481
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/kahuna/sdk/l;->I:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    monitor-exit p0

    return-void

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1529
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1533
    :cond_0
    return-object v0
.end method

.method static synthetic F(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->ab:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic G(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/kahuna/sdk/l;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->C()Z

    move-result v0

    return v0
.end method

.method static synthetic I(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/m;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->m:Lcom/kahuna/sdk/m;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/kahuna/sdk/l;->U:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/t;)Lcom/kahuna/sdk/t;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->K:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->ab:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1631
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1633
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :goto_0
    return-object v0

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 1636
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception when attempting to create flush reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JLorg/json/JSONObject;Z)V
    .locals 3

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/kahuna/sdk/l;->F:Ljava/lang/Object;

    monitor-enter v1

    .line 1646
    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 1648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    if-nez v0, :cond_1

    .line 1651
    new-instance v0, Lcom/kahuna/sdk/l$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/kahuna/sdk/l$a;-><init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$1;)V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    .line 1652
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    new-instance v2, Lcom/kahuna/sdk/l$b;

    invoke-direct {v2, p0, p3}, Lcom/kahuna/sdk/l$b;-><init>(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2, p1, p2}, Lcom/kahuna/sdk/l$a;->schedule(Ljava/util/TimerTask;J)V

    .line 1654
    :cond_1
    monitor-exit v1

    .line 1655
    return-void

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;)V

    .line 380
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$9;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$9;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 464
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaCommon.start(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/kahuna/sdk/Event;I)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1033
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->h()Lorg/json/JSONObject;

    move-result-object v5

    .line 1034
    if-eqz v5, :cond_7

    .line 1035
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1036
    if-lez p2, :cond_b

    .line 1037
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1038
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1039
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1040
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1041
    if-eqz v7, :cond_0

    .line 1042
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1046
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v4, v3

    .line 1047
    :goto_1
    if-ge v4, v8, :cond_3

    .line 1048
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 1049
    iget-object v10, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v0, v9}, Lcom/kahuna/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1050
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1053
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1054
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1059
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 1060
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1061
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1062
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1063
    :goto_2
    if-ge v3, p2, :cond_5

    .line 1064
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1065
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v2, v1

    .line 1070
    :cond_6
    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1071
    invoke-virtual {p1, v12}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)V

    .line 1096
    :cond_7
    :goto_3
    return-void

    .line 1074
    :cond_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1075
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1078
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1079
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1080
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1081
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1083
    :catch_0
    move-exception v0

    .line 1085
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_9

    .line 1086
    const-string/jumbo v1, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception when filtering event properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1090
    :cond_a
    invoke-virtual {p1, v3}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 1093
    :cond_b
    invoke-virtual {p1, v12}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)V

    goto :goto_3
.end method

.method private a(Lcom/kahuna/sdk/Event;Lcom/kahuna/sdk/Event;)V
    .locals 4

    .prologue
    .line 1019
    :try_start_0
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->l()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "user_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 1020
    invoke-virtual {p2}, Lcom/kahuna/sdk/Event;->l()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "user_info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/w;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 1022
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1023
    invoke-virtual {p2, v1}, Lcom/kahuna/sdk/Event;->b(Ljava/util/Map;)V

    .line 1024
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 1025
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merged adjacent User Attributes to event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kahuna/sdk/Event;->l()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error merging User Attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;JLorg/json/JSONObject;Z)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kahuna/sdk/l;->a(JLorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->c(Lcom/kahuna/sdk/Event;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->b(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;IIZ)V
    .locals 8

    .prologue
    .line 845
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 847
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot track a null or empty String event name. Ignoring event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 853
    sget-object v6, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/kahuna/sdk/k;

    new-instance v0, Lcom/kahuna/sdk/l$3;

    move-object v1, p0

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kahuna/sdk/l$3;-><init>(Lcom/kahuna/sdk/l;Ljava/lang/String;ZII)V

    invoke-direct {v7, v0}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1486
    iget-object v2, p0, Lcom/kahuna/sdk/l;->F:Ljava/lang/Object;

    monitor-enter v2

    .line 1487
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 1489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    .line 1491
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    iget v0, p0, Lcom/kahuna/sdk/l;->I:I

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->f()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1495
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->E()V

    .line 1496
    iget-object v0, p0, Lcom/kahuna/sdk/l;->Y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1497
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 1498
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reached our max retry limit. Will not retry until the next request to flush events. Max attempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_1
    :goto_0
    return-void

    .line 1491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1504
    :cond_2
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->D()J

    move-result-wide v2

    .line 1505
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_3

    .line 1506
    const-string/jumbo v0, "Kahuna"

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

    .line 1510
    :cond_3
    if-nez p1, :cond_5

    .line 1511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1514
    :goto_1
    :try_start_2
    const-string/jumbo v4, "retry"

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1521
    :goto_2
    invoke-direct {p0, v2, v3, v0, v8}, Lcom/kahuna/sdk/l;->a(JLorg/json/JSONObject;Z)V

    .line 1522
    iget v0, p0, Lcom/kahuna/sdk/l;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/l;->I:I

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    sget-boolean v4, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v4, :cond_4

    .line 1517
    const-string/jumbo v4, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Caught exception when attempting to create flush reason in flush failure:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    .line 1519
    goto :goto_2

    :cond_5
    move-object v0, p1

    goto :goto_1
.end method

.method protected static a(Z)V
    .locals 1

    .prologue
    .line 1285
    if-eqz p0, :cond_0

    .line 1287
    sput-boolean p0, Lcom/kahuna/sdk/l;->a:Z

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/l;->e:Z

    sput-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/kahuna/sdk/l;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kahuna/sdk/l;->C:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/inapp/c;->b(Landroid/app/Activity;)V

    .line 473
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$10;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$10;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 531
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaCommon.stopInternal(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Lcom/kahuna/sdk/Event;)V
    .locals 3

    .prologue
    .line 819
    if-nez p1, :cond_1

    .line 820
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 821
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Event is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$2;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/l$2;-><init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kahuna/sdk/l;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/kahuna/sdk/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
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

    .line 706
    if-nez p1, :cond_1

    .line 708
    :try_start_0
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 709
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You must specify a valid Map for user Attributes. Ignoring this call to setUserAttributes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->B()Ljava/util/Map;

    move-result-object v4

    .line 715
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 716
    const/4 v3, 0x0

    .line 718
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 719
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 723
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 724
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    :goto_2
    move v3, v0

    .line 742
    goto :goto_1

    .line 728
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 730
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v1, v7, :cond_9

    .line 732
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 734
    goto :goto_2

    .line 737
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 738
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 740
    goto :goto_2

    .line 744
    :cond_6
    if-eqz v3, :cond_8

    .line 745
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/kahuna/sdk/s;->c(Ljava/util/Map;Landroid/content/Context;)V

    .line 746
    if-eqz v5, :cond_7

    .line 747
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_user_attributes"

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, v5}, Lcom/kahuna/sdk/Event;->b(Ljava/util/Map;)V

    .line 749
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->c(Lcom/kahuna/sdk/Event;)V

    .line 751
    :cond_7
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 752
    const-string/jumbo v0, "Kahuna"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 762
    const-string/jumbo v1, "Kahuna"

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

    .line 756
    :cond_8
    :try_start_1
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 757
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Did not detect any change in user attributes, not sending request..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/kahuna/sdk/l;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/kahuna/sdk/l;->E:Z

    return p1
.end method

.method private c(Lcom/kahuna/sdk/Event;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 875
    if-nez p1, :cond_1

    .line 876
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 877
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Ignoring request to track (null) Event object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 883
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Cannot track null or empty event name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_2
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->o:Z

    if-nez v0, :cond_3

    .line 889
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->i()V

    .line 894
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/t;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 897
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->j()Ljava/util/Map;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 900
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

    .line 901
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 902
    new-instance v1, Lcom/kahuna/sdk/Event;

    invoke-direct {v1, p1}, Lcom/kahuna/sdk/Event;-><init>(Lcom/kahuna/sdk/Event;)V

    .line 903
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/Event;->a(Ljava/lang/String;)V

    .line 905
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_19

    .line 906
    const-string/jumbo v0, "Kahuna"

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

    .line 913
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->l()Ljava/util/Set;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v1}, Lcom/kahuna/sdk/t;->k()Ljava/util/Set;

    move-result-object v1

    .line 915
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 917
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 918
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 924
    :goto_2
    if-nez v2, :cond_9

    .line 925
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 926
    const-string/jumbo v0, "Kahuna"

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

    .line 930
    :cond_7
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 932
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 933
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 939
    :goto_3
    if-eqz v0, :cond_9

    .line 940
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 941
    const-string/jumbo v0, "Kahuna"

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

    .line 947
    :cond_9
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->m()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/Event;I)V

    .line 950
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->e()Z

    move-result v0

    if-nez v0, :cond_13

    .line 954
    iget-object v1, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 955
    :try_start_0
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/c;->a(Ljava/lang/String;J)Lcom/kahuna/sdk/Event;

    move-result-object v0

    .line 956
    if-nez v0, :cond_12

    .line 958
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/Event;)V

    .line 960
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_a

    .line 961
    const-string/jumbo v0, "Kahuna"

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

    .line 963
    :cond_a
    invoke-static {p1}, Lcom/kahuna/sdk/c;->a(Lcom/kahuna/sdk/Event;)V

    move-object v0, p1

    .line 971
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->j()V

    .line 972
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_c

    .line 973
    const-string/jumbo v2, "Kahuna"

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

    .line 978
    :cond_c
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->f()I

    move-result v2

    if-lez v2, :cond_e

    .line 979
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->f()I

    move-result v2

    if-gez v2, :cond_d

    .line 980
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 982
    :cond_d
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->f()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 984
    :cond_e
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->g()I

    move-result v2

    if-lez v2, :cond_10

    .line 985
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->g()I

    move-result v2

    if-gez v2, :cond_f

    .line 986
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 988
    :cond_f
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->g()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 990
    :cond_10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1004
    :cond_11
    :goto_5
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->o:Z

    if-eqz v0, :cond_16

    .line 1005
    iget-object v1, p0, Lcom/kahuna/sdk/l;->D:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_1
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->E:Z

    if-eqz v0, :cond_15

    .line 1007
    monitor-exit v1

    goto/16 :goto_0

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 966
    :cond_12
    :try_start_2
    const-string/jumbo v2, "k_user_attributes"

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 967
    invoke-direct {p0, p1, v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/Event;Lcom/kahuna/sdk/Event;)V

    goto :goto_4

    .line 990
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 993
    :cond_13
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "k_user_attributes"

    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "k_user_attributes"

    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    iget-object v2, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 996
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    iget-object v1, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    invoke-direct {p0, p1, v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/Event;Lcom/kahuna/sdk/Event;)V

    goto :goto_5

    .line 998
    :cond_14
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/Event;)V

    .line 999
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_11

    .line 1000
    const-string/jumbo v0, "Kahuna"

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

    goto/16 :goto_5

    .line 1008
    :cond_15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1010
    invoke-virtual {p1}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    :cond_16
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Please call the method onAppCreate() with your secretKey before trackEvent otherwise events cannot be logged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    move v0, v3

    goto/16 :goto_3

    :cond_18
    move v2, v3

    goto/16 :goto_2

    :cond_19
    move-object p1, v1

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->i()V

    return-void
.end method

.method static synthetic d(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Lcom/kahuna/sdk/Event;)V
    .locals 4

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 1625
    invoke-virtual {p1, v2, v3}, Lcom/kahuna/sdk/Event;->a(J)V

    .line 1626
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    monitor-exit v1

    .line 1628
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1542
    .line 1543
    iget-object v1, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 1544
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    monitor-exit v1

    .line 1620
    :goto_0
    return-void

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1550
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1553
    const/4 v3, 0x0

    .line 1554
    const/4 v2, 0x0

    .line 1555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1556
    const/4 v0, 0x0

    .line 1557
    iget-object v5, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v5}, Lcom/kahuna/sdk/t;->e()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1559
    const/4 v0, 0x1

    .line 1560
    const-string/jumbo v2, "fi"

    move-object v3, v2

    move-object v2, v1

    .line 1585
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 1586
    const-wide/16 v0, 0x0

    .line 1587
    iget-wide v4, p0, Lcom/kahuna/sdk/l;->U:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1588
    const-wide/16 v0, 0x7d0

    .line 1590
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1591
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kahuna/sdk/l;->a(JLorg/json/JSONObject;Z)V

    goto :goto_0

    .line 1550
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1563
    :cond_3
    int-to-long v8, v4

    iget-object v5, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v5}, Lcom/kahuna/sdk/t;->d()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-ltz v5, :cond_4

    .line 1565
    const/4 v0, 0x1

    .line 1566
    const-string/jumbo v3, "n"

    .line 1567
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 1571
    :cond_4
    iget-object v4, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v4}, Lcom/kahuna/sdk/t;->c()J

    move-result-wide v4

    .line 1572
    iget-wide v8, p0, Lcom/kahuna/sdk/l;->U:J

    add-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1573
    const/4 v0, 0x1

    .line 1574
    const-string/jumbo v3, "t"

    .line 1575
    iget-wide v4, p0, Lcom/kahuna/sdk/l;->U:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_5

    .line 1576
    const-string/jumbo v3, "install"

    .line 1577
    const-wide/16 v4, 0x2

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 1580
    :cond_5
    iget-wide v4, p0, Lcom/kahuna/sdk/l;->U:J

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 1596
    :cond_6
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1599
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 1600
    iget-object v4, p0, Lcom/kahuna/sdk/l;->F:Ljava/lang/Object;

    monitor-enter v4

    .line 1601
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    if-eqz v0, :cond_7

    .line 1602
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->a()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-lez v0, :cond_7

    .line 1603
    iget-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/l$a;->cancel()V

    .line 1604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->G:Lcom/kahuna/sdk/l$a;

    .line 1607
    :cond_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1610
    const-string/jumbo v0, "fs"

    invoke-direct {p0, v0, v1}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1611
    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kahuna/sdk/l;->a(JLorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 1607
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1615
    :cond_8
    iget-wide v0, p0, Lcom/kahuna/sdk/l;->U:J

    sub-long v0, v6, v0

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1616
    const-string/jumbo v1, "t"

    invoke-direct {p0, v1, v0}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1617
    iget-object v1, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v1}, Lcom/kahuna/sdk/t;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kahuna/sdk/l;->a(JLorg/json/JSONObject;Z)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/kahuna/sdk/l;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic g(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic h(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->u:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You did not call onAppCreate() in your MainApplication\'s onCreate() method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 373
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_3

    .line 320
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Initializing SDK version: 2.4.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->s:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 328
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/l;->t:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->u:Ljava/lang/String;

    .line 341
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/l;->v:Ljava/lang/String;

    .line 344
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/l;->x:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :try_start_5
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/s;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kahuna/sdk/l;->p:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    :cond_4
    :goto_2
    :try_start_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 356
    iget-object v1, p0, Lcom/kahuna/sdk/l;->A:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    :try_start_7
    iget-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    if-nez v0, :cond_5

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/l;->B:Ljava/util/List;

    .line 359
    :cond_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 360
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/kahuna/sdk/l;->E:Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kahuna/sdk/l;->o:Z

    .line 364
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kahuna/sdk/l;->d:Z

    .line 365
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/t;->a(Landroid/content/Context;)Lcom/kahuna/sdk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    .line 366
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v0}, Lcom/kahuna/sdk/t;->p()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 367
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/s;->i(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kahuna/sdk/l;->U:J

    .line 369
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 370
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading SDK Config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flushEventCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " events:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    invoke-virtual {v2}, Lcom/kahuna/sdk/t;->e()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_6

    .line 331
    const-string/jumbo v1, "Kahuna"

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

    .line 333
    :cond_6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kahuna/sdk/l;->t:Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/kahuna/sdk/l;->s:Ljava/lang/String;

    goto/16 :goto_1

    .line 350
    :catch_1
    move-exception v0

    .line 351
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_4

    .line 352
    const-string/jumbo v1, "Kahuna"

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

    .line 359
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

.method protected static j()Lcom/kahuna/sdk/l;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/kahuna/sdk/l;->g:Lcom/kahuna/sdk/l;

    return-object v0
.end method

.method static synthetic j(Lcom/kahuna/sdk/l;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->d:Z

    return v0
.end method

.method static synthetic k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->K:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic l(Lcom/kahuna/sdk/l;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->p:Z

    return v0
.end method

.method protected static m()Lcom/kahuna/sdk/p;
    .locals 1

    .prologue
    .line 1309
    sget-object v0, Lcom/kahuna/sdk/l;->L:Lcom/kahuna/sdk/p;

    return-object v0
.end method

.method static synthetic m(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->E()V

    return-void
.end method

.method static synthetic n(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->A()V

    return-void
.end method

.method static synthetic o(Lcom/kahuna/sdk/l;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;->B()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->D:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected static r()Z
    .locals 1

    .prologue
    .line 1451
    sget-boolean v0, Lcom/kahuna/sdk/l;->S:Z

    return v0
.end method

.method static synthetic s(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 1537
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    return v0
.end method

.method static synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/kahuna/sdk/l;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic v(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/kahuna/sdk/l;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/kahuna/sdk/l;->U:J

    return-wide v0
.end method

.method static synthetic w()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kahuna/sdk/l;->M:Z

    return v0
.end method

.method static synthetic x(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kahuna/sdk/l;->N:Z

    return v0
.end method

.method static synthetic y(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kahuna/sdk/l;->W:Z

    return v0
.end method

.method static synthetic z(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kahuna/sdk/l;->T:Lcom/kahuna/sdk/t;

    return-object v0
.end method

.method static synthetic z()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kahuna/sdk/l;->X:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->ac:Z

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->a(Landroid/app/Activity;)V

    .line 539
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must have valid Application context to use Kahuna Analytics."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-static {p2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempted to start Kahuna with invalid key! You must use your api Key with Kahuna"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/kahuna/sdk/l;->n:Ljava/lang/String;

    .line 185
    sput-object p3, Lcom/kahuna/sdk/l;->c:Ljava/lang/String;

    .line 187
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_2

    .line 188
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called onCreate with Key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kahuna/sdk/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 191
    iput-boolean v3, p0, Lcom/kahuna/sdk/l;->ac:Z

    .line 192
    sput-boolean v3, Lcom/kahuna/sdk/l;->N:Z

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/kahuna/sdk/l$1;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/l$1;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->a(Landroid/content/Context;)V

    .line 235
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/location/i;->a(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Landroid/content/Context;)V

    .line 238
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$8;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$8;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public a(Lcom/kahuna/sdk/Event;)V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/Event;)V

    .line 816
    return-void
.end method

.method public a(Lcom/kahuna/sdk/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kahuna/sdk/EmptyCredentialsException;
        }
    .end annotation

    .prologue
    .line 560
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$11;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/l$11;-><init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/i;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 636
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kahuna/sdk/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot call login() with null or empty credentials."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v0, Lcom/kahuna/sdk/EmptyCredentialsException;

    const-string/jumbo v1, "You cannot call login without setting any credentials."

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/EmptyCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    return-void
.end method

.method public a(Lcom/kahuna/sdk/location/g;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1156
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/kahuna/sdk/l$5;-><init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/location/g;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1182
    return-void
.end method

.method public a(Lcom/kahuna/sdk/p;)V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/l;->M:Z

    .line 1301
    sput-object p1, Lcom/kahuna/sdk/l;->L:Lcom/kahuna/sdk/p;

    .line 1302
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1296
    invoke-static {p1}, Lcom/kahuna/sdk/y;->a(Ljava/lang/Class;)V

    .line 1297
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 807
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;IIZ)V

    .line 808
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1128
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/kahuna/sdk/l$4;-><init>(Lcom/kahuna/sdk/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1148
    return-void
.end method

.method public a(Ljava/util/Map;)V
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
    .line 694
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$13;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/l$13;-><init>(Lcom/kahuna/sdk/l;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->ac:Z

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->b(Landroid/app/Activity;)V

    .line 545
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1115
    :try_start_0
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_push_clicked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;J)V

    .line 1116
    invoke-virtual {v0, p1}, Lcom/kahuna/sdk/Event;->b(Ljava/lang/String;)V

    .line 1117
    sget-boolean v1, Lcom/kahuna/sdk/l;->Q:Z

    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->c()V

    .line 1119
    :cond_0
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1123
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaCommon.trackPushClicked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Lcom/kahuna/sdk/i;
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/kahuna/sdk/v;

    invoke-direct {v0}, Lcom/kahuna/sdk/v;-><init>()V

    return-object v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kahuna/sdk/l;->z:Ljava/lang/String;

    .line 1245
    iget-object v0, p0, Lcom/kahuna/sdk/l;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :goto_0
    monitor-exit p0

    return-void

    .line 1249
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/kahuna/sdk/s;->c(Ljava/lang/String;Landroid/content/Context;)V

    .line 1257
    :goto_1
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_push_enabled"

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/l;->c(Lcom/kahuna/sdk/Event;)V

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1252
    :cond_2
    :try_start_2
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->c(Ljava/lang/String;Landroid/content/Context;)V

    .line 1253
    iput-object p1, p0, Lcom/kahuna/sdk/l;->z:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public d()Lcom/kahuna/sdk/i;
    .locals 4

    .prologue
    .line 649
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/l$12;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/l$12;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-object v0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 661
    const-string/jumbo v1, "Kahuna"

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

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/kahuna/sdk/l;->c()Lcom/kahuna/sdk/i;

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1189
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$6;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$6;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/kahuna/sdk/l;->l:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1234
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Error, push state unknown. You must call onAppCreate() before getting the current status of push."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_0
    iget-boolean v0, p0, Lcom/kahuna/sdk/l;->p:Z

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/l;->L:Lcom/kahuna/sdk/p;

    .line 1306
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/l;->S:Z

    .line 1411
    return-void
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kahuna/sdk/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 1210
    sget-object v0, Lcom/kahuna/sdk/l;->V:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/k;

    new-instance v2, Lcom/kahuna/sdk/l$7;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/l$7;-><init>(Lcom/kahuna/sdk/l;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/k;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1229
    return-void
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1317
    sget v0, Lcom/kahuna/sdk/l;->O:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 1330
    sget v0, Lcom/kahuna/sdk/l;->P:I

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 1350
    sget-boolean v0, Lcom/kahuna/sdk/l;->Q:Z

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1395
    iget-boolean v1, p0, Lcom/kahuna/sdk/l;->o:Z

    if-nez v1, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v0

    .line 1400
    :cond_1
    sget-boolean v1, Lcom/kahuna/sdk/l;->R:Z

    if-eqz v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/kahuna/sdk/l;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    .line 1402
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    const-string/jumbo v0, "2.4.1"

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/kahuna/sdk/l;->q:Ljava/lang/String;

    return-object v0
.end method
