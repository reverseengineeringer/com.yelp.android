.class Lcom/yelp/android/ch/b$3;
.super Ljava/lang/Object;
.source "FeedPhotoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/DynamicImageView$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/FeedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Photo;

.field final synthetic b:Lcom/yelp/android/ci/f;

.field final synthetic c:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic d:Lcom/yelp/android/ch/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/b;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yelp/android/ch/b$3;->d:Lcom/yelp/android/ch/b;

    iput-object p2, p0, Lcom/yelp/android/ch/b$3;->a:Lcom/yelp/android/serializable/Photo;

    iput-object p3, p0, Lcom/yelp/android/ch/b$3;->b:Lcom/yelp/android/ci/f;

    iput-object p4, p0, Lcom/yelp/android/ch/b$3;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ch/b$3;->d:Lcom/yelp/android/ch/b;

    invoke-static {v0}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/ch/b;)Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->isChecked()Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ch/b$3;->a:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ch/b$3;->d:Lcom/yelp/android/ch/b;

    iget-object v2, p0, Lcom/yelp/android/ch/b$3;->a:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/ch/b;I)V

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ch/b$3;->b:Lcom/yelp/android/ci/f;

    new-instance v2, Lcom/yelp/android/ci/a;

    iget-object v3, p0, Lcom/yelp/android/ch/b$3;->c:Lcom/yelp/android/serializable/FeedItem;

    iget-object v4, p0, Lcom/yelp/android/ch/b$3;->a:Lcom/yelp/android/serializable/Photo;

    invoke-direct {v2, v3, v4, v0}, Lcom/yelp/android/ci/a;-><init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/Photo;Z)V

    invoke-interface {v1, v2}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 162
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ch/b$3;->a:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0
.end method
