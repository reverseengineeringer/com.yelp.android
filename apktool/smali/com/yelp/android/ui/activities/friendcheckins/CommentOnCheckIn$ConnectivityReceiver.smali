.class public final Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommentOnCheckIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectivityReceiver"
.end annotation


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 659
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eq v0, p1, :cond_0

    .line 644
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    .line 645
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    sget-object v1, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    if-eqz v0, :cond_0

    .line 664
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string/jumbo v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 668
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->c:Z

    .line 671
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    goto :goto_0
.end method
