.class Lcom/yelp/android/ui/activities/gallery/m;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Z

.field final synthetic c:Lcom/yelp/android/ui/activities/gallery/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/k;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/m;->c:Lcom/yelp/android/ui/activities/gallery/k;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/m;->a:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/gallery/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/m;->c:Lcom/yelp/android/ui/activities/gallery/k;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/k;->b(Lcom/yelp/android/ui/activities/gallery/k;)Lcom/yelp/android/ui/activities/gallery/n;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/m;->a:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/gallery/m;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/n;->a(Landroid/net/Uri;Z)V

    .line 120
    return-void
.end method
