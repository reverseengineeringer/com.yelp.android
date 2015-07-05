.class Lcom/yelp/android/ui/activities/camera/d;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/d;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/d;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/d;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 208
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/d;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/camera/a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method
