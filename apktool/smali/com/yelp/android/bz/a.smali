.class public Lcom/yelp/android/bz/a;
.super Ljava/lang/Object;
.source "ActivityBreadcrumbLogger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, "%s {@%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    if-nez p1, :cond_0

    const-string/jumbo v0, "[null Bundle]"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "[nonnull Bundle]"

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteBreadcrumb(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onCreate"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p2}, Lcom/yelp/android/bz/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onDestroy"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onPause"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onResume"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onSaveInstanceState"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p2}, Lcom/yelp/android/bz/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onStart"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/bz/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#onStop"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/bz/a;->a([Ljava/lang/String;)V

    .line 41
    return-void
.end method
