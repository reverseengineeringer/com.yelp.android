.class public Lcom/yelp/android/appdata/a;
.super Ljava/lang/Object;
.source "ActivityStateManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static a:Lcom/yelp/android/appdata/a;

.field private static b:J

.field private static c:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/yelp/android/appdata/a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/yelp/android/appdata/a;->a:Lcom/yelp/android/appdata/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/yelp/android/appdata/a;

    invoke-direct {v0}, Lcom/yelp/android/appdata/a;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/a;->a:Lcom/yelp/android/appdata/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/a;->a:Lcom/yelp/android/appdata/a;

    return-object v0
.end method

.method private static b()Z
    .locals 4

    .prologue
    .line 45
    sget-wide v0, Lcom/yelp/android/appdata/a;->b:J

    sget-wide v2, Lcom/yelp/android/appdata/a;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Lcom/yelp/android/appdata/a;->b()Z

    move-result v0

    .line 63
    sget-wide v2, Lcom/yelp/android/appdata/a;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/yelp/android/appdata/a;->b:J

    .line 64
    if-nez v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.action.ON_WAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "com.yelp.android.action.CATEGORY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 93
    invoke-static {}, Lcom/yelp/android/appdata/a;->b()Z

    move-result v0

    .line 94
    sget-wide v2, Lcom/yelp/android/appdata/a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/yelp/android/appdata/a;->c:J

    .line 95
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.action.ON_BACKGROUNDING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "com.yelp.android.action.CATEGORY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    :cond_0
    return-void
.end method
