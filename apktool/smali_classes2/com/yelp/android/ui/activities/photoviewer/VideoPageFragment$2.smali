.class Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/a$a;->a()V

    .line 271
    :cond_0
    return-void
.end method
