.class Lcom/yelp/android/ui/activities/photoviewer/y;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/y;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/y;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/y;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/ad;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ad;->a(Landroid/view/View;)V

    .line 328
    :cond_0
    return-void
.end method
