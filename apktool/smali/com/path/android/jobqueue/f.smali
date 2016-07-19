.class public Lcom/path/android/jobqueue/f;
.super Ljava/lang/Object;
.source "RetryConstraint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/path/android/jobqueue/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/path/android/jobqueue/f;

.field public static final b:Lcom/path/android/jobqueue/f;


# instance fields
.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/path/android/jobqueue/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/f$a;-><init>(Z)V

    sput-object v0, Lcom/path/android/jobqueue/f;->a:Lcom/path/android/jobqueue/f;

    .line 20
    new-instance v0, Lcom/path/android/jobqueue/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/f$a;-><init>(Z)V

    sput-object v0, Lcom/path/android/jobqueue/f;->b:Lcom/path/android/jobqueue/f;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/f;->f:Z

    .line 27
    iput-boolean p1, p0, Lcom/path/android/jobqueue/f;->c:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/path/android/jobqueue/f;->d:Ljava/lang/Long;

    .line 52
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/path/android/jobqueue/f;->c:Z

    return v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/path/android/jobqueue/f;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/path/android/jobqueue/f;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/path/android/jobqueue/f;->f:Z

    return v0
.end method
