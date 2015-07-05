.class public Lcom/yelp/android/au/d;
.super Ljava/lang/Object;
.source "NetworkUtilImpl.java"

# interfaces
.implements Lcom/yelp/android/au/a;
.implements Lcom/yelp/android/au/c;


# instance fields
.field private a:Lcom/yelp/android/au/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/au/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/au/e;-><init>(Lcom/yelp/android/au/d;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/au/d;)Lcom/yelp/android/au/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yelp/android/au/d;->a:Lcom/yelp/android/au/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/au/b;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/au/d;->a:Lcom/yelp/android/au/b;

    .line 40
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
