.class Lcom/yelp/android/ui/activities/search/SearchOverlay$1;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$1;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$1;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b()V

    .line 253
    return-void
.end method
