.class public final Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommentOnCheckIn.java"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 611
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 639
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eq v0, p1, :cond_0

    .line 624
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    sget-object v1, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eqz v0, :cond_0

    .line 644
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-string/jumbo v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 648
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    goto :goto_0
.end method
