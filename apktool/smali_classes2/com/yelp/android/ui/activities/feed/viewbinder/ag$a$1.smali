.class Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$1;
.super Ljava/lang/Object;
.source "YnraFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method
