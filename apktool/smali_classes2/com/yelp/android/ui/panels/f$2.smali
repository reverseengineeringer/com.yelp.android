.class Lcom/yelp/android/ui/panels/f$2;
.super Ljava/lang/Object;
.source "StickyFilterListHeader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f$2;->a:Lcom/yelp/android/ui/panels/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$2;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->d(Lcom/yelp/android/ui/panels/f;)V

    .line 386
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method
