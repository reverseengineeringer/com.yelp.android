.class Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Landroid/content/Context;)V
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
    .line 449
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->c(I)V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserProfilePhotoSetPrimaryShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 462
    :cond_0
    return-void
.end method
