.class Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 434
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->i()V

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    .line 442
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->a()Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 445
    :cond_0
    return-void
.end method
