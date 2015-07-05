.class public Lcom/yelp/android/ui/activities/videotrim/m;
.super Ljava/lang/Object;
.source "SnapshotLoader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/yelp/android/serializable/LocalVideo;

.field private c:I

.field private d:Lcom/yelp/android/ui/activities/videotrim/o;

.field private e:Lcom/yelp/android/ui/activities/videotrim/p;


# direct methods
.method public constructor <init>(ILcom/yelp/android/ui/activities/videotrim/p;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/yelp/android/ui/activities/videotrim/m;->a:I

    .line 27
    iput-object p2, p0, Lcom/yelp/android/ui/activities/videotrim/m;->e:Lcom/yelp/android/ui/activities/videotrim/p;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/m;I)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/m;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->b:Lcom/yelp/android/serializable/LocalVideo;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/m;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/videotrim/m;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->a:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/videotrim/m;)Lcom/yelp/android/ui/activities/videotrim/p;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->e:Lcom/yelp/android/ui/activities/videotrim/p;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->e:Lcom/yelp/android/ui/activities/videotrim/p;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/m;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->getDuration()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->d:Lcom/yelp/android/ui/activities/videotrim/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->d:Lcom/yelp/android/ui/activities/videotrim/o;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/o;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/videotrim/o;-><init>(Lcom/yelp/android/ui/activities/videotrim/m;Lcom/yelp/android/ui/activities/videotrim/n;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->d:Lcom/yelp/android/ui/activities/videotrim/o;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->d:Lcom/yelp/android/ui/activities/videotrim/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yelp/android/serializable/LocalVideo;)V
    .locals 1

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/m;->b:Lcom/yelp/android/serializable/LocalVideo;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/m;->c:I

    .line 33
    return-void
.end method
