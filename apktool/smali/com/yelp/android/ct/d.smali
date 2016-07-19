.class public abstract Lcom/yelp/android/ct/d;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ct/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/yelp/android/ct/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ct/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final c:Lio/fabric/sdk/android/services/common/j;

.field protected final d:Lcom/yelp/android/ct/g;

.field protected volatile e:J

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ct/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ct/c;Lio/fabric/sdk/android/services/common/j;Lcom/yelp/android/ct/g;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ct/c",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/common/j;",
            "Lcom/yelp/android/ct/g;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ct/d;->f:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ct/d;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/yelp/android/ct/d;->b:Lcom/yelp/android/ct/c;

    .line 75
    iput-object p4, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    .line 76
    iput-object p3, p0, Lcom/yelp/android/ct/d;->c:Lio/fabric/sdk/android/services/common/j;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ct/d;->c:Lio/fabric/sdk/android/services/common/j;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/j;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ct/d;->e:J

    .line 80
    iput p5, p0, Lcom/yelp/android/ct/d;->g:I

    .line 81
    return-void
.end method

.method private a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-virtual {p0}, Lcom/yelp/android/ct/d;->c()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yelp/android/ct/g;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v4}, Lcom/yelp/android/ct/g;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/yelp/android/ct/d;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/yelp/android/ct/d;->a:Landroid/content/Context;

    const/4 v2, 0x4

    const-string/jumbo v3, "Fabric"

    invoke-static {v1, v2, v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ct/d;->d()Z

    .line 143
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/ct/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ct/h;

    .line 166
    :try_start_0
    invoke-interface {v0, p1}, Lcom/yelp/android/ct/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v2, p0, Lcom/yelp/android/ct/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "One of the roll over listeners threw an exception"

    invoke-static {v2, v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    const-string/jumbo v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 227
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 232
    :goto_0
    return-wide v0

    .line 230
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/yelp/android/ct/h;)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ct/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ct/d;->b:Lcom/yelp/android/ct/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ct/c;->a(Ljava/lang/Object;)[B

    move-result-object v0

    .line 85
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/yelp/android/ct/d;->a(I)V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v1, v0}, Lcom/yelp/android/ct/g;->a([B)V

    .line 88
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v0, p1}, Lcom/yelp/android/ct/g;->a(Ljava/util/List;)V

    .line 180
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/yelp/android/ct/d;->g:I

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x1f40

    return v0
.end method

.method public d()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 108
    iget-object v3, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v3}, Lcom/yelp/android/ct/g;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ct/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v3, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v3, v0}, Lcom/yelp/android/ct/g;->a(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/yelp/android/ct/d;->a:Landroid/content/Context;

    const/4 v4, 0x4

    const-string/jumbo v5, "Fabric"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "generated new file %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/yelp/android/ct/d;->c:Lio/fabric/sdk/android/services/common/j;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/j;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/ct/d;->e:J

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ct/d;->b(Ljava/lang/String;)V

    .line 123
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ct/g;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    iget-object v1, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v1}, Lcom/yelp/android/ct/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ct/g;->a(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v0}, Lcom/yelp/android/ct/g;->d()V

    .line 186
    return-void
.end method

.method public g()V
    .locals 9

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v0}, Lcom/yelp/android/ct/g;->c()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ct/d;->b()I

    move-result v1

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 196
    iget-object v3, p0, Lcom/yelp/android/ct/d;->a:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/util/TreeSet;

    new-instance v3, Lcom/yelp/android/ct/d$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ct/d$1;-><init>(Lcom/yelp/android/ct/d;)V

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yelp/android/ct/d;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 211
    new-instance v6, Lcom/yelp/android/ct/d$a;

    invoke-direct {v6, v0, v4, v5}, Lcom/yelp/android/ct/d$a;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ct/d$a;

    .line 216
    iget-object v0, v0, Lcom/yelp/android/ct/d$a;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ct/d;->d:Lcom/yelp/android/ct/g;

    invoke-interface {v0, v3}, Lcom/yelp/android/ct/g;->a(Ljava/util/List;)V

    goto :goto_0
.end method
