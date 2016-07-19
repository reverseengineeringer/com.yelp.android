.class Lcom/yelp/android/ui/activities/gallery/a$c;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/gallery/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/a;

.field private final b:Landroid/view/View;

.field private final c:Landroid/net/Uri;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/view/View;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->a:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->b:Landroid/view/View;

    .line 201
    iput-object p3, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->c:Landroid/net/Uri;

    .line 202
    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->d:Z

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->a:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/a;->b(Lcom/yelp/android/ui/activities/gallery/a;)Lcom/yelp/android/ui/activities/gallery/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->c:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/a$a;->a(Landroid/net/Uri;Z)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a$c;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f7851ec    # 0.97f

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/av;->a(FF)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    return-void
.end method
