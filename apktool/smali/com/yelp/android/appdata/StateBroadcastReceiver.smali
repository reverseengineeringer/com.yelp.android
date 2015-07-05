.class public final Lcom/yelp/android/appdata/StateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StateBroadcastReceiver.java"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/appdata/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    .line 46
    sget-object v0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.action.ON_BACKGROUNDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.action.ON_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.action.CATEGORY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/ar;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->b:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/ar;)Lcom/yelp/android/appdata/StateBroadcastReceiver;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/yelp/android/appdata/StateBroadcastReceiver;

    invoke-direct {v1, p1}, Lcom/yelp/android/appdata/StateBroadcastReceiver;-><init>(Lcom/yelp/android/appdata/ar;)V

    .line 88
    const-string/jumbo v2, "Registering for state updates"

    invoke-static {p1, v2}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 89
    sget-object v2, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/StateBroadcastReceiver;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ar;

    .line 62
    if-nez v0, :cond_1

    .line 63
    const-string/jumbo v0, "Unregistering listener"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string/jumbo v2, "com.yelp.android.action.ON_BACKGROUNDING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string/jumbo v1, "Background application state"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 70
    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/ar;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v2, "com.yelp.android.action.ON_WAKE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v1, "Waking up application state"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 73
    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/ar;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
