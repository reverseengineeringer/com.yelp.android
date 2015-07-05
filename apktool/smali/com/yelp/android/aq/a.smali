.class public Lcom/yelp/android/aq/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/path/android/jobqueue/i;

.field private g:Lcom/yelp/android/ar/a;

.field private h:Lcom/yelp/android/au/c;

.field private i:Lcom/yelp/android/at/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "default_job_manager"

    iput-object v0, p0, Lcom/yelp/android/aq/a;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/yelp/android/aq/a;->b:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/aq/a;->c:I

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/yelp/android/aq/a;->d:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/yelp/android/aq/a;->e:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/aq/b;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/aq/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/aq/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/aq/a;->d:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/aq/a;)Lcom/path/android/jobqueue/i;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/aq/a;->f:Lcom/path/android/jobqueue/i;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/aq/a;Lcom/path/android/jobqueue/i;)Lcom/path/android/jobqueue/i;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/aq/a;->f:Lcom/path/android/jobqueue/i;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/aq/a;Lcom/yelp/android/at/a;)Lcom/yelp/android/at/a;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/aq/a;->i:Lcom/yelp/android/at/a;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/aq/a;Lcom/yelp/android/au/c;)Lcom/yelp/android/au/c;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/aq/a;->h:Lcom/yelp/android/au/c;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/aq/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/aq/a;->b:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/aq/a;)Lcom/yelp/android/au/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/aq/a;->h:Lcom/yelp/android/au/c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/aq/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/aq/a;->c:I

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/aq/a;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yelp/android/aq/a;->e:I

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/aq/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/path/android/jobqueue/i;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/aq/a;->f:Lcom/path/android/jobqueue/i;

    return-object v0
.end method

.method public c()Lcom/yelp/android/ar/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/aq/a;->g:Lcom/yelp/android/ar/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/yelp/android/aq/a;->d:I

    return v0
.end method

.method public e()Lcom/yelp/android/au/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/aq/a;->h:Lcom/yelp/android/au/c;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yelp/android/aq/a;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/aq/a;->c:I

    return v0
.end method

.method public h()Lcom/yelp/android/at/a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/aq/a;->i:Lcom/yelp/android/at/a;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yelp/android/aq/a;->e:I

    return v0
.end method
