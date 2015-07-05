.class public Lcom/yelp/android/database/savedsearch/i;
.super Ljava/lang/Object;
.source "CachedSearch.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Lcom/yelp/android/serializable/Filter;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 44
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->Q()J

    move-result-wide v4

    .line 45
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/database/savedsearch/i;->c:Z

    .line 47
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;

    const-string/jumbo v2, "id"

    invoke-direct {v0, p1, p2, v2}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->e:Lcom/yelp/android/serializable/Filter;

    .line 48
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    .line 50
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->O()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/database/savedsearch/i;->d:I

    .line 51
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->g:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->S()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->h:Ljava/lang/String;

    .line 56
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/Filter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p3, :cond_0

    .line 27
    new-instance p3, Lcom/yelp/android/serializable/Filter;

    invoke-direct {p3}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 29
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    .line 30
    iput p5, p0, Lcom/yelp/android/database/savedsearch/i;->d:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/database/savedsearch/i;->c:Z

    .line 32
    iput-object p6, p0, Lcom/yelp/android/database/savedsearch/i;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/yelp/android/database/savedsearch/i;->e:Lcom/yelp/android/serializable/Filter;

    .line 35
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/i;->f:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/database/savedsearch/i;->h:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/yelp/android/database/savedsearch/i;->g:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V
    .locals 11

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/database/savedsearch/i;->b(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 61
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/i;->e:Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->save(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 63
    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    .line 64
    iget-wide v0, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    .line 67
    iget-wide v2, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    iget v4, p0, Lcom/yelp/android/database/savedsearch/i;->d:I

    iget-object v5, p0, Lcom/yelp/android/database/savedsearch/i;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/yelp/android/database/savedsearch/i;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/yelp/android/database/savedsearch/i;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/yelp/android/database/savedsearch/i;->g:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/yelp/android/appdata/i;->a(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/yelp/android/database/savedsearch/i;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;

    new-instance v1, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v1}, Lcom/yelp/android/serializable/Filter;-><init>()V

    invoke-direct {v0, v1}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    .line 74
    iget-wide v2, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->setId(J)V

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->delete(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/i;->a:J

    .line 78
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->W()V

    .line 80
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->e:Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/yelp/android/database/savedsearch/i;->d:I

    return v0
.end method
