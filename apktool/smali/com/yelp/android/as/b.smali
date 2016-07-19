.class public Lcom/yelp/android/as/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/comscore/analytics/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/comscore/utils/m;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Boolean;

.field private m:Lcom/yelp/android/as/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/m;Lcom/comscore/analytics/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/yelp/android/as/b;->i:Z

    iput-boolean v0, p0, Lcom/yelp/android/as/b;->j:Z

    iput-boolean v0, p0, Lcom/yelp/android/as/b;->k:Z

    iput-object p1, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    iput-object p3, p0, Lcom/yelp/android/as/b;->a:Lcom/comscore/analytics/a;

    new-instance v0, Lcom/yelp/android/as/a;

    iget-object v1, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/as/a;-><init>(Landroid/content/Context;Lcom/comscore/utils/m;)V

    iput-object v0, p0, Lcom/yelp/android/as/b;->m:Lcom/yelp/android/as/a;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iput-boolean p2, p0, Lcom/yelp/android/as/b;->i:Z

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v2, "md5RawCrossPublisherId"

    invoke-virtual {v0, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yelp/android/as/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "crossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/yelp/android/as/b;->i:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iput-boolean v1, p0, Lcom/yelp/android/as/b;->j:Z

    iput-boolean v0, p0, Lcom/yelp/android/as/b;->k:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/yelp/android/as/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "crossPublisherId"

    iget-object v2, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "md5RawCrossPublisherId"

    iget-object v2, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "md5RawCrossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/comscore/utils/n;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/aq/d;->c(Landroid/content/Context;)Lcom/yelp/android/aq/c;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/yelp/android/as/b;->i:Z

    invoke-direct {p0, v3, v4}, Lcom/yelp/android/as/b;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->b()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->c()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/as/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/as/b;->m:Lcom/yelp/android/as/a;

    invoke-virtual {v2, v1}, Lcom/yelp/android/as/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v2, "crossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/yelp/android/as/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/as/b;->m:Lcom/yelp/android/as/a;

    invoke-virtual {v0}, Lcom/yelp/android/as/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cs_c12u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/as/b;->a:Lcom/comscore/analytics/a;

    sget-object v2, Lcom/comscore/applications/EventType;->AGGREGATE:Lcom/comscore/applications/EventType;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/comscore/analytics/a;->a(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/m;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "-cs"

    iget-object v1, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/yelp/android/aq/d;->f(Landroid/content/Context;)Lcom/yelp/android/aq/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/aq/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yelp/android/aq/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/as/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/as/b;->d:Lcom/comscore/utils/m;

    const-string/jumbo v1, "vid"

    iget-object v2, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/aq/d;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/as/b;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/as/b;->l:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/as/b;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/as/b;->h()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/as/b;->j:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/as/b;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/yelp/android/as/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yelp/android/as/b;->h()V

    iget-boolean v0, p0, Lcom/yelp/android/as/b;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/as/b;->k:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "none"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yelp/android/as/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/as/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/as/b;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/yelp/android/as/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/as/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/aq/d;->f(Landroid/content/Context;)Lcom/yelp/android/aq/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/as/b;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yelp/android/as/b;->i()V

    invoke-direct {p0}, Lcom/yelp/android/as/b;->h()V

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/as/b;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/as/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/as/b;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
