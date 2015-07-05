.class public Lcom/path/android/jobqueue/h;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v1, p0, Lcom/path/android/jobqueue/h;->a:Z

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/path/android/jobqueue/h;->b:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/path/android/jobqueue/h;->c:Z

    .line 19
    iput p1, p0, Lcom/path/android/jobqueue/h;->d:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/path/android/jobqueue/h;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/h;->a:Z

    .line 28
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/path/android/jobqueue/h;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/path/android/jobqueue/h;->b:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public b()Lcom/path/android/jobqueue/h;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/h;->c:Z

    .line 47
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/path/android/jobqueue/h;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/path/android/jobqueue/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/path/android/jobqueue/h;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/path/android/jobqueue/h;->d:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/path/android/jobqueue/h;->e:J

    return-wide v0
.end method
