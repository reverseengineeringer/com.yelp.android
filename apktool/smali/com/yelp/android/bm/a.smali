.class public Lcom/yelp/android/bm/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/bm/a$1;,
        Lcom/yelp/android/bm/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/path/android/jobqueue/e;

.field private g:Lcom/yelp/android/bn/a;

.field private h:Lcom/yelp/android/bq/b;

.field private i:Lcom/yelp/android/bp/a;

.field private j:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "default_job_manager"

    iput-object v0, p0, Lcom/yelp/android/bm/a;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/yelp/android/bm/a;->b:I

    .line 27
    iput v1, p0, Lcom/yelp/android/bm/a;->c:I

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/yelp/android/bm/a;->d:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/yelp/android/bm/a;->e:I

    .line 34
    iput-boolean v1, p0, Lcom/yelp/android/bm/a;->j:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/bm/a$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/bm/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/bm/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/bm/a;->d:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/bm/a;)Lcom/path/android/jobqueue/e;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/bm/a;->f:Lcom/path/android/jobqueue/e;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/bm/a;Lcom/path/android/jobqueue/e;)Lcom/path/android/jobqueue/e;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/bm/a;->f:Lcom/path/android/jobqueue/e;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/bm/a;Lcom/yelp/android/bp/a;)Lcom/yelp/android/bp/a;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/bm/a;->i:Lcom/yelp/android/bp/a;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/bm/a;Lcom/yelp/android/bq/b;)Lcom/yelp/android/bq/b;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/bm/a;->h:Lcom/yelp/android/bq/b;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/bm/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/bm/a;->b:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/bm/a;)Lcom/yelp/android/bq/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/bm/a;->h:Lcom/yelp/android/bq/b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/bm/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/bm/a;->c:I

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/bm/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/bm/a;->e:I

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/bm/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/path/android/jobqueue/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/bm/a;->f:Lcom/path/android/jobqueue/e;

    return-object v0
.end method

.method public c()Lcom/yelp/android/bn/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/bm/a;->g:Lcom/yelp/android/bn/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yelp/android/bm/a;->d:I

    return v0
.end method

.method public e()Lcom/yelp/android/bq/b;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/bm/a;->h:Lcom/yelp/android/bq/b;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/bm/a;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yelp/android/bm/a;->c:I

    return v0
.end method

.method public h()Lcom/yelp/android/bp/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/bm/a;->i:Lcom/yelp/android/bp/a;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/bm/a;->e:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/yelp/android/bm/a;->j:Z

    return v0
.end method
