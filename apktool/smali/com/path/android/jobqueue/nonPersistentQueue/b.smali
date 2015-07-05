.class public Lcom/path/android/jobqueue/nonPersistentQueue/b;
.super Ljava/lang/Object;
.source "CountWithGroupIdsResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    .line 11
    iput-object p2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    return v0
.end method

.method public a(Lcom/path/android/jobqueue/nonPersistentQueue/b;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 25
    :cond_0
    iget v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    iget v1, p1, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    .line 26
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p1, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    .line 39
    :cond_1
    :goto_0
    return-object p0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    iget-object v1, p1, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 38
    :cond_3
    iget v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    iget v2, p1, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/b;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
