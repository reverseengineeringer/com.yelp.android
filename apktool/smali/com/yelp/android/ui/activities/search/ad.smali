.class Lcom/yelp/android/ui/activities/search/ad;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ad;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ad;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b()V

    .line 156
    return-void
.end method
