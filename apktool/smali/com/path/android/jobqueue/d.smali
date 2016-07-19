.class public Lcom/path/android/jobqueue/d;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:J

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lcom/path/android/jobqueue/d;->a:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/path/android/jobqueue/d;->b:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/path/android/jobqueue/d;->c:Z

    .line 22
    iput p1, p0, Lcom/path/android/jobqueue/d;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lcom/path/android/jobqueue/d;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/d;->a:Z

    .line 31
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/path/android/jobqueue/d;->b:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public b()Lcom/path/android/jobqueue/d;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/path/android/jobqueue/d;->c:Z

    .line 50
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/path/android/jobqueue/d;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/path/android/jobqueue/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/path/android/jobqueue/d;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/path/android/jobqueue/d;->d:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/path/android/jobqueue/d;->e:J

    return-wide v0
.end method

.method public h()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/path/android/jobqueue/d;->f:Ljava/util/HashSet;

    return-object v0
.end method
