.class Lcom/yelp/android/ui/activities/drawer/c;
.super Ljava/util/TimerTask;
.source "DinoAnimationController.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/c;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/c;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/a;->e(Lcom/yelp/android/ui/activities/drawer/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/drawer/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/drawer/d;-><init>(Lcom/yelp/android/ui/activities/drawer/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method
