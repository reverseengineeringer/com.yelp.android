.class Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;
.super Ljava/lang/Object;
.source "PhotoChrome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V
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
    .line 380
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->USER_PASSPORT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 387
    :cond_0
    return-void
.end method
