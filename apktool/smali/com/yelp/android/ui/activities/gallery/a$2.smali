.class Lcom/yelp/android/ui/activities/gallery/a$2;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/a;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Z

.field final synthetic c:Lcom/yelp/android/ui/activities/gallery/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->c:Lcom/yelp/android/ui/activities/gallery/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->a:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->c:Lcom/yelp/android/ui/activities/gallery/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/a;->b(Lcom/yelp/android/ui/activities/gallery/a;)Lcom/yelp/android/ui/activities/gallery/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->a:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/gallery/a$2;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/a$a;->a(Landroid/net/Uri;Z)V

    .line 125
    return-void
.end method
