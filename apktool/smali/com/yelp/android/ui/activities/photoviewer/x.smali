.class Lcom/yelp/android/ui/activities/photoviewer/x;
.super Lcom/yelp/android/ui/util/dd;
.source "PhotoChrome.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/x;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/x;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/x;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method
