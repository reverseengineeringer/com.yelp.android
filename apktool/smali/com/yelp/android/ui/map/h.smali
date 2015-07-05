.class Lcom/yelp/android/ui/map/h;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/g;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/g;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/yelp/android/ui/map/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/yelp/android/ui/map/g;

    invoke-static {v0}, Lcom/yelp/android/ui/map/g;->a(Lcom/yelp/android/ui/map/g;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/yelp/android/ui/map/g;

    invoke-static {v0}, Lcom/yelp/android/ui/map/g;->b(Lcom/yelp/android/ui/map/g;)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/yelp/android/ui/map/g;

    invoke-static {v0}, Lcom/yelp/android/ui/map/g;->c(Lcom/yelp/android/ui/map/g;)Lcom/yelp/android/ui/map/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/map/i;->a()V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/h;->a:Lcom/yelp/android/ui/map/g;

    invoke-static {v0}, Lcom/yelp/android/ui/map/g;->d(Lcom/yelp/android/ui/map/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
