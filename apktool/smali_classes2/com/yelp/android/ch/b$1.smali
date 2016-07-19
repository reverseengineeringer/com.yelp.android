.class Lcom/yelp/android/ch/b$1;
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
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/serializable/Photo;

.field final synthetic d:Lcom/yelp/android/ch/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yelp/android/ch/b$1;->d:Lcom/yelp/android/ch/b;

    iput-object p2, p0, Lcom/yelp/android/ch/b$1;->a:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/yelp/android/ch/b$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ch/b$1;->c:Lcom/yelp/android/serializable/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ch/b$1;->d:Lcom/yelp/android/ch/b;

    iget-object v1, p0, Lcom/yelp/android/ch/b$1;->a:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/yelp/android/ch/b$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ch/b$1;->c:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    return-void
.end method
