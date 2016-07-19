.class public abstract Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;
.super Ljava/lang/Object;
.source "MergedQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/nonPersistentQueue/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
    }
.end annotation


# instance fields
.field a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

.field b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

.field final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->c:Ljava/util/Comparator;

    .line 29
    iput-object p3, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->d:Ljava/util/Comparator;

    .line 30
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-virtual {p0, v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;ILjava/util/Comparator;)Lcom/path/android/jobqueue/nonPersistentQueue/c;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    .line 31
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-virtual {p0, v0, p1, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;ILjava/util/Comparator;)Lcom/path/android/jobqueue/nonPersistentQueue/c;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;Ljava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-ne p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    .line 115
    :goto_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    move-result-object v0

    sget-object v2, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-eq v0, v2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Lcom/path/android/jobqueue/a;)Z

    .line 119
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, v1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Lcom/path/android/jobqueue/a;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Ljava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-eq v2, v3, :cond_1

    .line 125
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v1, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Lcom/path/android/jobqueue/a;)Z

    .line 126
    iget-object v1, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v1, v0}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Lcom/path/android/jobqueue/a;)Z

    goto :goto_0

    .line 129
    :cond_1
    if-nez v1, :cond_3

    .line 139
    :cond_2
    :goto_1
    return-object v0

    .line 132
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    .line 133
    goto :goto_1

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->d:Ljava/util/Comparator;

    invoke-interface {v2, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 136
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object v0, v1

    .line 137
    goto :goto_1
.end method

.method public a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-ne p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2, p3, p4}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2, p3, p4}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(JLjava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;ILjava/util/Comparator;)Lcom/path/android/jobqueue/nonPersistentQueue/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/path/android/jobqueue/a;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/c;"
        }
    .end annotation
.end method

.method public a(Lcom/path/android/jobqueue/a;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Lcom/path/android/jobqueue/a;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->a(Lcom/path/android/jobqueue/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/nonPersistentQueue/b;"
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    if-ne p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p2}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Ljava/util/Collection;)Lcom/path/android/jobqueue/nonPersistentQueue/b;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/a;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->b:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Lcom/path/android/jobqueue/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;->a:Lcom/path/android/jobqueue/nonPersistentQueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/nonPersistentQueue/c;->b(Lcom/path/android/jobqueue/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c(Lcom/path/android/jobqueue/a;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
.end method
