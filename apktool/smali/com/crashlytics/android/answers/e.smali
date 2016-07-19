.class Lcom/crashlytics/android/answers/e;
.super Lcom/yelp/android/ct/b;
.source "EnabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/answers/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ct/b",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;",
        "Lcom/crashlytics/android/answers/n",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/ct/k;

.field b:Lcom/crashlytics/android/answers/f;

.field private final h:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ct/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yelp/android/ct/d;)V

    .line 25
    new-instance v0, Lcom/crashlytics/android/answers/g;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/g;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/e;->b:Lcom/crashlytics/android/answers/f;

    .line 31
    iput-object p4, p0, Lcom/crashlytics/android/answers/e;->h:Lio/fabric/sdk/android/services/network/c;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ct/k;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/crashlytics/android/answers/e;->a:Lcom/yelp/android/ct/k;

    return-object v0
.end method

.method public a(Lcom/crashlytics/android/answers/SessionEvent;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/crashlytics/android/answers/e;->b:Lcom/crashlytics/android/answers/f;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/answers/f;->a(Lcom/crashlytics/android/answers/SessionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/crashlytics/android/answers/a;->c()Lcom/crashlytics/android/answers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipping filtered event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ct/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 42
    new-instance v0, Lcom/crashlytics/android/answers/l;

    invoke-static {}, Lcom/crashlytics/android/answers/a;->c()Lcom/crashlytics/android/answers/a;

    move-result-object v1

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/answers/e;->h:Lio/fabric/sdk/android/services/network/c;

    new-instance v2, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    iget-object v5, p0, Lcom/crashlytics/android/answers/e;->c:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lio/fabric/sdk/android/services/common/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/l;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crashlytics/android/answers/b;->a(Lcom/crashlytics/android/answers/l;)Lcom/crashlytics/android/answers/b;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/e;->a:Lcom/yelp/android/ct/k;

    .line 45
    iget-object v0, p0, Lcom/crashlytics/android/answers/e;->d:Lcom/yelp/android/ct/d;

    check-cast v0, Lcom/crashlytics/android/answers/k;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/k;->a(Lio/fabric/sdk/android/services/settings/b;)V

    .line 47
    iget v0, p1, Lio/fabric/sdk/android/services/settings/b;->b:I

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/e;->a(I)V

    .line 49
    iget v0, p1, Lio/fabric/sdk/android/services/settings/b;->g:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/crashlytics/android/answers/j;

    iget v1, p1, Lio/fabric/sdk/android/services/settings/b;->g:I

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/j;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/e;->b:Lcom/crashlytics/android/answers/f;

    .line 52
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/crashlytics/android/answers/SessionEvent;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/e;->a(Lcom/crashlytics/android/answers/SessionEvent;)V

    return-void
.end method
