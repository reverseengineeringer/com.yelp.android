.class Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "PhotoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Ljava/util/Collection;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void
.end method
