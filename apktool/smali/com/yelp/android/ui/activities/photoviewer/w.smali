.class Lcom/yelp/android/ui/activities/photoviewer/w;
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
    .line 203
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/w;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/w;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/w;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->b(I)V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/w;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 211
    return-void
.end method
