.class Lcom/yelp/android/ui/activities/gallery/a$1;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/a;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/at$a",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/a$1;->b:Lcom/yelp/android/ui/activities/gallery/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/a$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/gallery/a$1;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a$1;->b:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/a;->a(Lcom/yelp/android/ui/activities/gallery/a;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a$1;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p2, p2}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 114
    return-void
.end method
